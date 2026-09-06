module odd_numbers;

  class number;
   randc int rvalue;
    constraint odd_number {
      rvalue inside {[1:10]};
      rvalue % 2 == 1;
    }

  endclass


  initial begin
    number num;
    num = new();
    repeat (10) begin
      num.randomize();
      $display("Odd number = %0d", num.rvalue);
    end
  end

endmodule

