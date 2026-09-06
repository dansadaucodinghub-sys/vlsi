module weighted_1;

  class data;

    // 1-bit random variable
    rand bit value;

    // 0 and 1 have equal probability
    constraint weighted_value {
      value dist {
        0 := 50,
        1 := 50
      };
    }

  endclass


  initial begin

    data d;

    // Create the object
    d = new();

    $display("Output for File 1:");

    // Generate 8 values
    repeat (8) begin

      d.randomize();

      $write("%0d", d.value);

    end

    $display();

  end

endmodule
