module t_flip_flop_behavioral(clk, rst, t, q);
    input clk, rst, t;
    output reg q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else if (t)
            q <= ~q;
        else
            q <= q;
    end
endmodule
