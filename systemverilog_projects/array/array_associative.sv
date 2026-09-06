module array_associative;
  //int array0[int];
  //declaration of an array setting index as string and the type of element as integer 
  string array0[int];
  
  initial begin
     array0 = '{6:"BMW", 2:"AUDI", 7:"BENZ", 0:"TATA"};
     $display("Array0: %p", array0);
     $display("The size of Array0 is: %0d", array0.size());
     $display("Checking if in array0 element 2 exists %d:", array0.exists(2));
     $display("Returning the total number of elements in array0 %d", array0.num());
     array0.delete();
     $display("Printing array values after delete: %p", array0);
  end
endmodule
