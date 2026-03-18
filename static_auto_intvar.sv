module test;
    function automatic void feature1();
    int d;
    static int e;
    automatic int f;
    d++;
    e++;
    f++;
    $display(" d = %0d e = %0d  f=%0d ", d, e, f);
  endfunction
  
  initial begin 
    feature1();
    #10;
    feature1();
    #10;
    feature1();
  end
endmodule
// d = 1   e = 1  f = 1
// d = 1   e = 2  f = 1
// d = 1   e = 3  f = 1
