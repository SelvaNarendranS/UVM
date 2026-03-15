// UVM - DESIGN ---- D FLIP FLOP

module d_flip_flop(
  dff_intf.dut intff
);
  
  always @(posedge intff.clk) begin
    if(intff.rst)
      intff.q <= 0;
    else
      intff.q <= intff.d;
  end
  
  assign intff.q_bar = ~intff.q;
  
endmodule  

// https://edaplayground.com/x/qD4z