// UVM - INTERFACE

interface dr_intf #(parameter WIDTH = 8,
                    parameter DEPTH = 256) (input logic clk);
  
  logic 					mode;		// mode0 - read first, mode1 - write first
  
  // port A
  logic 					a_en;
  logic 					a_wr;
  logic [$clog2(DEPTH)-1:0] a_addr;
  logic [WIDTH-1:0] 		a_data_in;
  logic [WIDTH-1:0]			a_data_out;
  
  // port B
  logic 					b_en;
  logic 					b_wr;
  logic [$clog2(DEPTH)-1:0] b_addr;
  logic [WIDTH-1:0] 		b_data_in;
  logic [WIDTH-1:0]			b_data_out;
  
  // clocking block
  
  // stimuli driving
  clocking cb_driver @(negedge clk);
    default input #1 output #2;
    output a_en, a_wr, a_addr, a_data_in, b_en, b_wr, b_addr, b_data_in;
    input a_data_out, b_data_out;
  endclocking
  
  // sampling
  clocking cb_monitor @(posedge clk);
    default input #0;
    input a_en, a_wr, a_addr, a_data_in, b_en, b_wr, b_addr, b_data_in, a_data_out, b_data_out;
  endclocking
    
endinterface
