module all_gates(
	input a, b, 
	output reg yand,
	output reg yor,
	//output reg ynot,
	output reg ynand,
	output reg ynor
	//output reg yxor,
	//output reg yxnor
);
   function reg mux_2x1(input i0,i1,s);
   	mux_2x1 = (~s&i0) | (s&i1);
   endfunction

   //and gate values 
   always @(*) begin
   	yand = mux_2x1(1'b0, b, a);
   end
   
   //or gate values
   always @(*) begin
   	yor = mux_2x1(1'b0, b, a) | b;
   end

   //nand gate values
   always @(*) begin
   	ynand = ~mux_2x1(1'b0, b, a);
   end

   //nor gate values
   always @(*) begin
   	ynor = ~mux_2x1(1'b0, b, a) | b;
   end

endmodule
