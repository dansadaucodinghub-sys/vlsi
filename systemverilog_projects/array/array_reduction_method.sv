module reduction_methods_array; 
 //Reduction Methods
   int arr[];
   initial begin
    int arr_sum, arr_product, arr_and, arr_or, arr_xor;
    arr= new[6];
    arr = '{100,200,300,400,500,600};
    arr_sum = arr.sum();
       $display("Sum of Array: %p", arr_sum);     
    arr_product = arr.product();
       $display("Product of Array: %p", arr_product);
    arr_and = arr.and();
       $display("Bitwise AND: %p", arr_and);
    arr_or = arr.or();
       $display("Bitwise OR: %p", arr_or);
    arr_xor = arr.xor();
       $display("Bitwise XOR: %p", arr_xor); 
  end
endmodule
