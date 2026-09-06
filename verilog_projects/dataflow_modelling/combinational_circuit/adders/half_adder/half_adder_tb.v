module half_adder_tb;
reg a,b;
wire sum,carry;
half_adder dut(a,b,sum,carry);
initial begin
$monitor("a=%0d,b=%0d,sum=%0d, carry=%0d",a,b,sum,carry);
#2 a=0; b=0;
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end
endmodule
