module moore_101_detector_behavioral(clk, rst, din, y);
    input clk, rst, din;
    output reg y;

    reg [1:0] state, next_state;

    parameter S0   = 2'b00;
    parameter S1   = 2'b01;
    parameter S10  = 2'b10;
    parameter S101 = 2'b11;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        case (state)
            S0: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S0;
            end

            S1: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S10;
            end

            S10: begin
                if (din)
                    next_state = S101;
                else
                    next_state = S0;
            end

            S101: begin
                if (din)
                    next_state = S1;
                else
                    next_state = S10;
            end

            default: next_state = S0;
        endcase
    end

    always @(*) begin
        if (state == S101)
            y = 1'b1;
        else
            y = 1'b0;
    end
endmodule
