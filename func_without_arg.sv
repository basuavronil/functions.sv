module test12;
  int b,c ;
  function int sample (); //passing no input arguements 
    int temp = 0;
    sample = temp + 1;
    temp = sample;
  endfunction
  initial begin 
    sample ();
    sample ();
    sample ();
  end
endmodule
//outputs : 1  2  3 
