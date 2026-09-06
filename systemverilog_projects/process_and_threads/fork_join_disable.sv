module fork_disable;

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

      begin : b3
        #10;
        $display("Third Statement");
      end

    join_none

    $display("Fourth Statement");

    #3;

    disable fork;
    // disable fork: Immediately terminates all currently
    // running forked processes that belong to this fork.

    $display("Forked processes have been stopped.");
    $display("Fifth Statement");

  end

endmodule

endmodule
