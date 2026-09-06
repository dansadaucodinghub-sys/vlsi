module numbers_between_50_100;

  class number;
   randc int rvalue;
    constraint number_btw {
      rvalue >= 50;
      rvalue <=100;
    }

  endclass


  initial begin
    number num;
    num = new();
    repeat (50) begin
      num.randomize();
      $display("Number between 50-100 = %0d", num.rvalue);
    end
  end

endmodule

