module do_while_loop;
//do_while_loop
  integer i;
  initial begin  
      begin
      do
       $display("Looping text %0d", i);
      while(i<=20);
      i++; 
      end
  end
endmodule
