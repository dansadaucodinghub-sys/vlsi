module full_adder_behavioral(a, b, cin, s, cout);
    input a, b, cin;
    output reg s, cout;

    always @(*) begin
        {cout, s} = a + b + cin;
    end
endmodule
