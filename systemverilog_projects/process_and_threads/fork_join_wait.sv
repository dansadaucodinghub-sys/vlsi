module fork_wait;

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
        #8;
        $display("Third Statement");
      end

    join_none

    // join_none does not wait for the forked processes.
    // The parent process continues immediately.

    $display("Fourth Statement");
    $display("Fifth Statement");

    wait fork;
    // wait fork: Wait here until ALL forked processes have finished.

    $display("All forked processes have finished.");
    $display("Sixth Statement");

  end

endmodule
