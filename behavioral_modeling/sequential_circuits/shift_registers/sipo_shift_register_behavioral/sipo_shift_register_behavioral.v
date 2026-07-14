module sipo_shift_register_behavioral(clk, rst, si, q);
    input clk, rst, si;
    output reg [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else
            q <= {q[2:0], si};
    end
endmodule
