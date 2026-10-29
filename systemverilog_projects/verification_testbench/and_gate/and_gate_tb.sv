// ============================================================
// Layered class-based testbench for and_gate (2-input AND gate)
// Components: transaction, generator, driver, monitor,
//            scoreboard, environment, test
// ============================================================

// ---------------- Transaction ----------------
class transaction;
  rand bit a;
  rand bit b;
  bit y;

  function void display(string tag);
    $display("[%s] a=%b b=%b y=%b", tag, a, b, y);
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
  virtual and_gate_if vif;
  mailbox gen2drv;

  function new(virtual and_gate_if vif, mailbox gen2drv);
    this.vif     = vif;
    this.gen2drv = gen2drv;
  endfunction

  task run();
    transaction tr;
    forever begin
      gen2drv.get(tr);
      @(posedge vif.clk);
      vif.a <= tr.a;
      vif.b <= tr.b;
    end
  endtask
endclass

// ---------------- Monitor ----------------
// Samples the interface and sends what it sees to the scoreboard.
class monitor;
  virtual and_gate_if vif;
  mailbox mon2scb;

  function new(virtual and_gate_if vif, mailbox mon2scb);
    this.vif     = vif;
    this.mon2scb = mon2scb;
  endfunction

  task run();
    transaction tr;
    forever begin
      @(posedge vif.clk); #1;   // let the combinational output settle
      tr = new();
      tr.a = vif.a;
      tr.b = vif.b;
      tr.y = vif.y;
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
    bit exp_y;
    forever begin
      mon2scb.get(tr);
      exp_y = tr.a & tr.b;
      if (tr.y === exp_y) begin
        passed++;
        $display("[SCB] PASS: a=%b b=%b y=%b", tr.a, tr.b, tr.y);
      end
      else begin
        failed++;
        $display("[SCB] FAIL: a=%b b=%b y=%b (expected y=%b)", tr.a, tr.b, tr.y, exp_y);
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

  virtual and_gate_if vif;
  int num;

  function new(virtual and_gate_if vif, int num);
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

  function new(virtual and_gate_if vif, int num);
    env = new(vif, num);
  endfunction

  task run();
    env.run();
  endtask
endclass
