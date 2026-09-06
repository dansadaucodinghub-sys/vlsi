module sequence_detector_101_behavioral(clk, rst, din, detected);
    input clk, rst, din;
    output reg detected;

    reg [1:0] state;

    parameter S0  = 2'b00;
    parameter S1  = 2'b01;
    parameter S10 = 2'b10;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= S0;
            detected <= 1'b0;
        end
        else begin
            detected <= 1'b0;

            case (state)
                S0: begin
                    if (din)
                        state <= S1;
                    else
                        state <= S0;
                end

                S1: begin
                    if (din)
                        state <= S1;
                    else
                        state <= S10;
                end

                S10: begin
                    if (din) begin
                        state <= S1;
                        detected <= 1'b1;
                    end
                    else
                        state <= S0;
                end

                default: begin
                    state <= S0;
                    detected <= 1'b0;
                end
            endcase
        end
    end
endmodule
