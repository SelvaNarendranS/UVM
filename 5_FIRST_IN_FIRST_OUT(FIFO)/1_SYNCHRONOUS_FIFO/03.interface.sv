// interface 

interface intf #(parameter WIDTH = 8,
                 parameter DEPTH = 16) (input logic clk);
  
  logic reset;
  logic wr_enable;
  logic rd_enable;
  logic [WIDTH-1:0 ]data_in;
  logic [WIDTH-1:0 ]data_out;
  logic full;
  logic empty;
  
  // clocking block 
  
  // drive clocking block
  clocking drive_cb @(negedge clk);
    default input #1 output #0;
    input data_out, full, empty;
    output reset, wr_enable, rd_enable, data_in;
  endclocking
  
  // sample clocking block
  clocking sample_cb @(posedge clk);
    default input #1;
    input reset, wr_enable, rd_enable, data_in, data_out, full, empty;
  endclocking
  
endinterface
