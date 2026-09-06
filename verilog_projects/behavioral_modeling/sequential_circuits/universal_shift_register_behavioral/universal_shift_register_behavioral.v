module universal_shift_register_behavioral(clk, rst, sel, si_left, si_right, p, q);
    input clk, rst, si_left, si_right;
    input [1:0] sel;
    input [3:0] p;
    output reg [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else begin
            case (sel)
                2'b00: q <= q;
                2'b01: q <= {si_left, q[3:1]};
                2'b10: q <= {q[2:0], si_right};
                2'b11: q <= p;
            endcase
        end
    end
endmodule
