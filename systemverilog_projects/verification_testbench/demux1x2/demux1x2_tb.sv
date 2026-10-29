// ============================================================
// Layered class-based testbench for demux1x2 (1-to-2 demultiplexer)
// Components: transaction, generator, driver, monitor,
//            scoreboard, environment, test
// ============================================================

// ---------------- Transaction ----------------
class transaction;
  rand bit i;
  rand bit sel;
  bit y0;
  bit y1;

  function void display(string tag);
    $display("[%s] i=%b sel=%b y0=%b y1=%b", tag, i, sel, y0, y1);
  endfunction
endclass

// ---------------- Generator ----------------
// Creates random transactions and sends them to the driver.
class generator;
  mailbox gen2drv;
  int num;

  function new(mailbox gen2drv, int num);
    this.gen2drv = gen2drv;
    this.num     = num;
  endfunction

  task run();
    transaction tr;
    repeat (num) begin
      tr = new();
      assert (tr.randomize());
      tr.display("GEN");
      gen2drv.put(tr);
    end
  endtask
endclass

// ---------------- Driver ----------------
// Takes a transaction and drives it onto the interface.
class driver;
  virtual demux1x2_if vif;
  mailbox gen2drv;

  function new(virtual demux1x2_if vif, mailbox gen2drv);
    this.vif     = vif;
    this.gen2drv = gen2drv;
  endfunction

  task run();
    transaction tr;
    forever begin
      gen2drv.get(tr);
      @(posedge vif.clk);
      vif.i <= tr.i;
      vif.sel <= tr.sel;
    end
  endtask
endclass

// ---------------- Monitor ----------------
// Samples the interface and sends what it sees to the scoreboard.
class monitor;
  virtual demux1x2_if vif;
  mailbox mon2scb;

  function new(virtual demux1x2_if vif, mailbox mon2scb);
    this.vif     = vif;
    this.mon2scb = mon2scb;
  endfunction

  task run();
    transaction tr;
    forever begin
      @(posedge vif.clk); #1;   // let the combinational output settle
      tr = new();
      tr.i = vif.i;
      tr.sel = vif.sel;
      tr.y0 = vif.y0;
      tr.y1 = vif.y1;
      mon2scb.put(tr);
    end
  endtask
endclass

// ---------------- Scoreboard ----------------
// Re-computes the expected output and compares it with the DUT output.
class scoreboard;
  mailbox mon2scb;
  int passed, failed;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
    passed = 0;
    failed = 0;
  endfunction

  task run();
    transaction tr;
    bit exp_y0, exp_y1;
    forever begin
      mon2scb.get(tr);
      exp_y0 = (tr.sel == 1'b0) ? tr.i : 1'b0;
      exp_y1 = (tr.sel == 1'b1) ? tr.i : 1'b0;
      if ((tr.y0 === exp_y0) && (tr.y1 === exp_y1)) begin
        passed++;
        $display("[SCB] PASS: i=%b sel=%b y0=%b y1=%b", tr.i, tr.sel, tr.y0, tr.y1);
      end
      else begin
        failed++;
        $display("[SCB] FAIL: i=%b sel=%b y0=%b y1=%b (expected y0=%b y1=%b)", tr.i, tr.sel, tr.y0, tr.y1, exp_y0, exp_y1);
      end
    end
  endtask

  function void report();
    $display("--------------------------------------------------");
    $display("[SCB] Test finished: %0d passed, %0d failed", passed, failed);
    $display("--------------------------------------------------");
  endfunction
endclass

// ---------------- Environment ----------------
// Wires the components together with mailboxes and runs them.
class environment;
  generator  gen;
  driver     drv;
  monitor    mon;
  scoreboard scb;

  mailbox gen2drv;
  mailbox mon2scb;

  virtual demux1x2_if vif;
  int num;

  function new(virtual demux1x2_if vif, int num);
    this.vif = vif;
    this.num = num;

    gen2drv = new();
    mon2scb = new();

    gen = new(gen2drv, num);
    drv = new(vif, gen2drv);
    mon = new(vif, mon2scb);
    scb = new(mon2scb);
  endfunction

  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      scb.run();
    join_none

    // wait until the scoreboard has checked all the transactions
    wait (scb.passed + scb.failed == num);
    scb.report();
  endtask
endclass

// ---------------- Test ----------------
// The top of the testbench class hierarchy.
class test;
  environment env;

  function new(virtual demux1x2_if vif, int num);
    env = new(vif, num);
  endfunction

  task run();
    env.run();
  endtask
endclass
