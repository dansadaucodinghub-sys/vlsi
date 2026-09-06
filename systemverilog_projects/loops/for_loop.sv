module for_loop;
//for loop
  int i;
  initial begin  
    for(i = 0; i <= 100; i++)
     begin
      $strobe("%d \t", i);
      #2;
     end
  end
endmodule
