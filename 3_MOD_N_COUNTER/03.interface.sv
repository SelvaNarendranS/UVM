// UVM -- interface

`ifndef CNT_INTERFACE_SV		// macro gaurd
`define CNT_INTERFACE_SV		// macro define file opening

interface cnt_intf #(parameter WIDTH = 8) (input logic clk);	// parameterized interface with getting clock as arguments
  
  // input
  logic 			  reset;
  logic 			  enable;
  logic [WIDTH - 1:0] mod_n;
  logic 			  up_down;
  
  // output
  logic [WIDTH - 1:0] q;
  
  // clocking block
  // drive clocking block
  clocking cb_drive @(negedge clk);
    default input #1 output #0;
    input q;
    output reset, enable, mod_n, up_down;
  endclocking
  
  // sample clocking block
  clocking cb_sample @(posedge clk);
    default input #1;
    input reset, enable, mod_n, up_down, q;
  endclocking
  
  // modport
  modport drive(clocking cb_drive, input reset, enable, mod_n, up_down, q);		// driver modport
    modport sample(clocking cb_sample, input reset, enable, mod_n, up_down, q);		// driver modport
    
endinterface
    
`endif		// macro ending of file 
