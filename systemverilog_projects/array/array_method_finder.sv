module array_locators; 
 //Finder Method
   int array[]={1,2,3,4,5,6,7,8,9,10};
   int result[$];
   initial begin
     //display the array
     $display("Default Sets Array Values: %p", array);
     //find_index() method
     result = array.find_index() with(item == 2);
     $display("Find method: %p", result);
     //find_first_index() method
     result = array.find_first_index() with(item > 4);
     $display("Find method: %p", result);
     //find_last_index() method
     result = array.find_last_index() with(item < 6);
     $display("Find method: %p", result);
     //unique_index() method
     result = array.unique_index() with(item >= 9);
     $display("Find method: %p", result);
   end
endmodule
