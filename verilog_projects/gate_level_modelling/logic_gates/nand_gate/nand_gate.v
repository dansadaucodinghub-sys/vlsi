module nand_gate(
   input wire a,
   input wire b, 
   output wire y
);
nand(y, a,b);
endmodule
