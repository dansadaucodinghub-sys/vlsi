module weighted_3;

  class data;

    // Random value
    rand int value;

    // All values have equal probability
    constraint weighted_value {
      value dist {
        1 := 20,
        2 := 20,
        3 := 20,
        4 := 20,
        5 := 20
      };
    }

  endclass


  initial begin

    data d;

    // Create the object
    d = new();

    $display("Output for File 3:");

    // Generate 10 values
    repeat (10) begin

      d.randomize();

      $write("%0d", d.value);

    end

    $display();

  end

endmodule
