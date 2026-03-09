// UVM - INTERFACE

`ifndef FA_INTERFACE_SV
`define FA_INTERFACE_SV

interface fa_intf;
  
  logic a;
  logic b;
  logic c; 
  logic sum;
  logic carry;
  
  // modport
  modport tb (output a, b, c, input sum, carry);		// modport for testbench
  
endinterface

`endif