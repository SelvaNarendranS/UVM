// testbench 

`timescale 1ns/1ps

`include "package.sv"
`include "interface.sv"

 import sync_fifo_pkg :: *;
`include "uvm_macros.svh"

module sync_fifo_testbench;
  bit clk;
  
  intf #(WIDTH, DEPTH) vintf(clk);		// interface instance
  
  // instantation
  sync_fifo #(.WIDTH(WIDTH),
              .DEPTH(DEPTH)) 
  dut(.clk(vintf.clk),
      .reset(vintf.reset),
      .wr_enable(vintf.wr_enable),
      .rd_enable(vintf.rd_enable),
      .data_in(vintf.data_in),
      .data_out(vintf.data_out),
      .full(vintf.full),
      .empty(vintf.empty)
     );
  
  // clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    // config database
    uvm_config_db #(virtual intf #(WIDTH, DEPTH)) :: set(null, "*", "vintf", vintf);
    run_test("sync_fifo_test");
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
