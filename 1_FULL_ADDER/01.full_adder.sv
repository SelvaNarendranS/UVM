// UVM - DESIGN ---- ADDER

module full_adder( 
  input  a, b, c,
  output sum, carry
);
  
  assign {carry, sum} = a + b + c;
  
endmodule

// https://edaplayground.com/x/dKcc