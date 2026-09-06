module dynamic_array; 
  //dynamic array declaration
  int array[];
  
  initial begin
     //allocating memory for 10 elements in a dynamic array
     array = new[10];
     //initializing array elements
     array = {1,2,3,4,5,6,7,8,9,10};
     $display("The total dynamic array elements: %p", array);
     //increasing the the size of elements
     array = new[5];
     array = {11,12,13,14,15}; 
     $display("after adding five elements: %p", array);
  end 
endmodule
