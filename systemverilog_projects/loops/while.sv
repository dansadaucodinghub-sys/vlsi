module while_loop;
//white_loop
  int i;
  initial begin  
      while(i <=10) 
      begin
       $display(i);
       i++;
       #2; 
      end
  end
endmodule
