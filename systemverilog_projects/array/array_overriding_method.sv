module oderring_methods_array; 
 //Array Oderring method
  int arr[]; 
  initial begin
  arr = '{90,70,60,30,10};
  //reverse array
  arr.reverse();
     $display("Reversing the Array: %p", arr);
  //sort array
  arr.sort();
     $display("Sorting Array: %p", arr);
  //rsort array
  arr.rsort();
     $display("Resorting Array: %p", arr);
  //shuffle array
  arr.shuffle();
     $display("Shuffle Array: %p", arr);
  end
endmodule
