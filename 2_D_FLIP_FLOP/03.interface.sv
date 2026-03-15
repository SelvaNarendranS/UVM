// UVM -- interface

`ifndef DFF_INTERFACE_SV		// macro gaurd
`define DFF_INTERFACE_SV		// macro define file opening

interface dff_intf;
  
  logic clk;
  logic rst;
  logic d;
  logic q;
  logic q_bar;
  
  // clocking block
  // drive clocking block
  clocking cb_drive @(negedge clk);
    default input #1 output #0;
    input q, q_bar;
    output rst, d;
  endclocking
  
  // sample clocking block
  clocking cb_sample @(posedge clk);
    default input #0;
    input q, q_bar, rst, d;
  endclocking
  
  // modport
  modport dut(input clk, rst, d, output q, q_bar);		// design modport
  modport drive(clocking cb_drive, output clk, rst, d, input q, q_bar);		// driver modport
    modport sample(clocking cb_sample, input clk, rst, d, q, q_bar);		// driver modport
    
endinterface
    
`endif		// macro ending of file 