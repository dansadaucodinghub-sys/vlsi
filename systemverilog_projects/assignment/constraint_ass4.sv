module probability_constraint;

  class signal;

    // 1-bit random signal
    rand bit sig;

    //using the weighted distribution
    constraint signal_distribution {
      sig dist {
        1 := 70,
        0 := 30
      };
    }

  endclass


  initial begin

    signal s;

    // Create the object
    s = new();

    // Randomize the signal 100 times
    repeat (100) begin

      s.randomize();

      $display("signal = %0d", s.sig);

    end

  end

endmodule
