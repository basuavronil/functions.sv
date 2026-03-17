module test;
  int b;
  function reg [3:0] calc(input int a);
    int temp;
    begin
      calc = temp + 5;
      temp = calc;
    end 
    //not necessarily use input arguement 
  endfunction
  initial begin
    b = calc(2); // irresspectivbe of input argument it will give the sane result
    $display(" b = %0d", b);
    b = calc(3); //irresspective of input arguement it will increment the temporary variable and give the result
    $display(" b = %0d", b);
    $display(" b = %0d", b);
  end
endmodule 
