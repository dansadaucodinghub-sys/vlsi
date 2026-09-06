module tb; 
  string a = "DANSADAU";
  string b = "dansadau";
  string equality;
  initial begin
     //default values stored
     $display("default value stored in variable a is: %s", a); 
     $display("default value stored in variable b is: %s", b);
       
     //using len method
     $display("the length of variable a is: %d", a.len()); 
     $display("the length of variable b is: %d", b.len());

    //using the put character method (putc)
    a.putc(7,"M");  
    b.putc(0,"w");  
    $display("using the put character method in variable a replacing the character at index 7: %s", a);        
    $display("using the put character method in variable b replacing the character at index 0: %s", b);    
    
    //using the get character method (getc)
    $display("using the get character method in variable a getting the character at index 7: %0d", a.getc(7)); 
    $display("using the get character method in variable a getting the character at index 0: %0d", b.getc(0));

    //using the compare method first_string.compare(second_string)
    $display("Compare of a and b is: %0d", a.compare(b));
    $display("icompare of a and b is: %0d", b.icompare(b));

    //Using string operators
    $display("Equality Operation on the two strings is: %0d", a==b);
    $display("In-Equality Operation on the two strings is: %0d", a!=b);
    $display("Less than or Euqal Operation on the two strings is: %0d", a<=b);
    $display("Greater than or Equal Operation on the two strings is: %0d", a>=b);
  end
endmodule
