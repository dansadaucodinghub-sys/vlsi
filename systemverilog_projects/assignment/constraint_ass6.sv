module weighted_2;

  class data;

    // Random value
    rand int value;

    // Give 0 a higher probability than 2, 4 and 6
    constraint weighted_value {
      value dist {
        0 := 40,
        2 := 10,
        4 := 10,
        6 := 10
      };
    }

  endclass


  initial begin

    data d;

    // Create the object
    d = new();

    $display("Output for File 2:");

    // Generate 7 values
    repeat (7) begin

      d.randomize();

      $write("%0d", d.value);

    end

    $display();

  end

endmodule
