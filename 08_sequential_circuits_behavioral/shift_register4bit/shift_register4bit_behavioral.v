module shift_register4bit_behavioral(clk, rst, serial_in, q);
    input clk, rst, serial_in;
    output reg [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else
            q <= {q[2:0], serial_in};
    end
endmodule
