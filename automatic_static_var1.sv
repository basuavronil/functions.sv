module tb;

    function void feature();
    int a; 
    automatic int b; 
    static int c;
    a++;
    b++;
    c++;
    $display( " %0d", a);
    $display( " %0d", b);
    $display( " %0d", c);    
  endfunction
  
  initial begin
    feature();
    #10;
    feature();
    #10;
    feature ();
  end 
endfunction
//output a = 1   b = 1  c = 1
  //     a = 2   b = 1  c = 2
  //     a = 3   b = 1  c = 3
