module siso_shift_register_behavioral(clk, rst, si, so);
    input clk, rst, si;
    output so;

    reg [3:0] q;

    assign so = q[3];

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else
            q <= {q[2:0], si};
    end
endmodule
