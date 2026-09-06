module repeat_loop;
//repeat_loop
  string i;
  initial begin  
      i = "Dansadau Chip Design & Verification Engineer"; 
      begin
       repeat(10)
       $display(i);
       #2; 
      end
  end
endmodule
