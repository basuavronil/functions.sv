module tb;
  reg [6:0] b, c;
  function reg [6:0] sample (input reg [6:0] a);
    begin
      sample = a * 2;
    end
  endfunction
  initial begin
    b = 10;
    c = sample (.a(b)); // sample (.a(b) =  sammple (10)   =  sample (.a(10)) all are same 
    $display (" c = %0d, a = %0d", c, sample.a);
    c = sample (.a(5));
    $display (" c = %0d ", c);
  end
endmodule
