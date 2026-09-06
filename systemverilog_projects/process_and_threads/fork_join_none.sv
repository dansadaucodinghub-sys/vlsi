module fork_join_none; //Don't wait for branches

  initial begin
    fork

      begin : b1
        #5;
        $display("First Statement");
      end

      begin : b2
        #2;
        $display("Second Statement");
      end

    join_none

    $display("Fourth Statement");
    $display("Fifth Statement");

  end

endmodule
