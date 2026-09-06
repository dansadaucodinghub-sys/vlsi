module fork_join; //Wait for ALL branches
  initial begin  
   fork
    $display("First Statement");
    $display("Second Statement");
    $display("Third Statement");
   join
    begin
      $display("All Process Completed Sucessfully");
    end
  end
endmodule
