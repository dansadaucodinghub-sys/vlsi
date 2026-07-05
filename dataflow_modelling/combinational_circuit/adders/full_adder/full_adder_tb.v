module full_adder_tb;
reg a,b, cin;
wire sum,carry;
full_adder dut(a,b,cin,sum,carry);
initial begin
$monitor("a=%0d,b=%0d,cin=%0d,sum=%0d, carry=%0d",a,b,cin,sum,carry);
#2 a=0; b=0; cin=0;
#2 a=0; b=0; cin=1;
#2 a=0; b=1; cin=0;
#2 a=0; b=1; cin=1;
#2 a=1; b=0; cin=0;
#2 a=1; b=0; cin=1;
#2 a=1; b=1; cin=0;
#2 a=1; b=1; cin=1;
end
endmodule
