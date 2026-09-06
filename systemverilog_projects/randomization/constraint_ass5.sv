module weighted_1;

  class data;

    rand bit value;

    constraint weighted_value {
      value dist {
        0 := 50,
        1 := 50
      };
    }

  endclass


  initial begin

    data d;

    d = new();

    $display("Output for File 1:");

    repeat (8) begin

      d.randomize();

      $write("%0d", d.value);

    end

    $display();

  end

endmodule
