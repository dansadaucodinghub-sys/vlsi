module even_numbers;

  class number;
   randc int rvalue;
    constraint even_number {
      rvalue inside {[2:10]};
      rvalue % 2 == 0;
    }

  endclass


  initial begin
    number num;
    num = new();
    repeat (10) begin
      num.randomize();
      $display("Even number = %0d", num.rvalue);
    end
  end

endmodule
