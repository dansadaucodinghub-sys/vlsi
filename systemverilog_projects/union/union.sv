module tb; 
	union {
  		int    count;
  		byte   expiry;
	} st_fruit;

  initial begin
    st_fruit.count = 4;
    st_fruit.expiry = 15;

    $display ("st_fruit = %p", st_fruit);
  end
endmodule
