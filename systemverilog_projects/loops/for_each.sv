module for_each;
//for each loop
  int array[];
  
  initial begin
    array = {2,4,6,8,10,12,14,16,18,20};  
    foreach(array[i])
      $display("%p", array);
  end
endmodule
