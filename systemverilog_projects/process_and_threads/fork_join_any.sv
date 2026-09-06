module fork_join_any; //wait for ANY ONE branch
 initial begin
 fork
  begin : b1
    $display("First Statement");
  end
  
  begin : b2
    #2;
    $display("Second Statement");
  end
  
  join_any
   $display("Third Statement");
   $display("Fourth Statement");
 end 
endmodule
