module mealy_101_detector_behavioral(clk, rst, din, y);
    input clk, rst, din;
    output reg y;

    reg [1:0] state, next_state;

    parameter S0  = 2'b00;
    parameter S1  = 2'b01;
    parameter S10 = 2'b10;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        y = 1'b0;

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
                if (din) begin
                    next_state = S1;
                    y = 1'b1;
                end
                else
                    next_state = S0;
            end

            default: begin
                next_state = S0;
                y = 1'b0;
            end
        endcase
    end
endmodule
