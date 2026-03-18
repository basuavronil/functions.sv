module test12;
  int b,c ;
  function int sample ();//passing no input arguements 
    int temp = 0;
    sample = temp + 1;
    temp = sample;
  endfunction
  initial begin 
    b = sample ();
    $display ("b = %0d temp = %0d ", b, sample.temp);  // accessing static variables local to a function using function_name.Local_variable
    b = sample ();
    $display ("b = %0d  temp = %0d", b, sample.temp);
    b = sample ();
    $display ("b = %0d temp = %0d", b, sample.temp);
    
  end
endmodule
