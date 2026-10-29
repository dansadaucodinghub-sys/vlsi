// automatic task
// An automatic task gets a fresh copy of its variables on every call,
// so it still works correctly when it is called many times in parallel.

module automatic_task;

  task automatic wait_and_print(input int id, input int delay);
    // 'count' is local to each call because the task is automatic
    int count;
    count = id * 10;
    #(delay);
    $display("time=%0t id=%0d count=%0d", $time, id, count);
  endtask

  initial begin
    // three calls started together, each keeps its own copy of count
    fork
      wait_and_print(1, 5);
      wait_and_print(2, 2);
      wait_and_print(3, 8);
    join
  end

endmodule
