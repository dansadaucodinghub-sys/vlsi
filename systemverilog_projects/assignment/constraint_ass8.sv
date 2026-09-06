module weighted_4;

  class data;

    // Random value
    rand int value;

    // 2 has a higher probability because it occurs
    // more frequently in the required pattern
    constraint weighted_value {
      value dist {
        1 := 5,
        2 := 7
      };
    }

  endclass


  initial begin

    data d;

    // Create the object
    d = new();

    $display("Output for File 4:");

    // Generate 12 values
    repeat (12) begin

      d.randomize();

      $write("%0d", d.value);

    end

    $display();

  end

endmodule
