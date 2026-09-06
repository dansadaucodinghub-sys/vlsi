module full_adder(a, b, cin, sum, cout);
    input a, b, cin;
    output reg sum, cout;
    reg [1:0] ha1, ha2;

function reg half_adder(input A,B)
	half_adder = {a&b, a^b};
endfunction

    always @(*) begin
        ha1 = half_adder(a,b);
	
    end
endmodule
