// disabling a task
// 'disable' stops a named block before it runs to the end.

module task_disable;

  task run_loop();
    begin : loop_block
      for (int i = 0; i < 10; i++) begin
        $display("i = %0d", i);
        if (i == 4)
          disable loop_block;   // stop the loop early
        #1;
      end
    end
  endtask

  initial begin
    run_loop();
    $display("Task finished");
  end

endmodule
