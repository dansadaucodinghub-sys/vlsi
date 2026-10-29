// task with ref arguments
// A 'ref' argument lets the task update the caller's variable directly.

module task_ref_args;

  task increment(ref int value, input int step);
    value = value + step;   // this changes the caller's variable
  endtask

  initial begin
    int number;
    number = 10;
    $display("Before task: number = %0d", number);
    increment(number, 5);
    $display("After task : number = %0d", number);
  end

endmodule
