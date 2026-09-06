module array_locators; 
 //Locators Method
   int array[]={1,2,3,4,5,6,7,8,9,10};
   int result[$];
   initial begin
     //display the array
     $display("Default Sets Array Values: %p", array);
     //find() method
     result = array.find(x) with (x == 6);
     $display("Find method: %p", result);
     //find_first()
     result = array.find_first(x) with (x == 11);
     $display("Find_first method: %p", result);
     //find_last()
     result = array.find_last(x) with (x == 2);
     $display("Find_last method: %p", result);
     //min()
     result = array.min();
     $display("Min method: %p", result);
     //max
     result = array.max();
     $display("Max method: %p", result);
     //unique()
     array = {1,2,2,1,3,4,5,6,7,8,7,9,10};
     result = array.unique();
     $display("Unique method: %p", result);
   end
endmodule
