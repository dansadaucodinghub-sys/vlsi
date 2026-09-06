module down_counter_behavioral(clk, rst, en, count);
    input clk, rst, en;
    output reg [3:0] count;

    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 4'b1111;
        else if (en)
            count <= count - 1'b1;
        else
            count <= count;
    end
endmodule
