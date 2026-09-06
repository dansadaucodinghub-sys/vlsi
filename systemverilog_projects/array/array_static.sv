module array_static;
 //declaring an integer static array, setting up a width or a size of an array as 5, and values are assigned using the '{} 
  int array[5] = '{100,200,300,400,500};
  initial begin
     $display("Array = %p", array);
  end
endmodule
