module pipo_register_behavioral(clk, rst, load, p, q);
    input clk, rst, load;
    input [3:0] p;
    output reg [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else if (load)
            q <= p;
        else
            q <= q;
    end
endmodule
