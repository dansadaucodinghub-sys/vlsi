module piso_shift_register_behavioral(clk, rst, load, p, si, so);
    input clk, rst, load, si;
    input [3:0] p;
    output so;

    reg [3:0] q;

    assign so = q[3];

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else if (load)
            q <= p;
        else
            q <= {q[2:0], si};
    end
endmodule
