// testbench 

`include "package.sv"
`include "interface.sv"

import async_fifo_pkg:: *;
`include "uvm_macros.svh"

module async_fifo_testbench;
  bit wr_clk;
  bit rd_clk;
  
  intf #(WIDTH, DEPTH) vintf(clk);		// interface instance
  
  // instantation
  async_fifo #(.WIDTH(WIDTH),
              .DEPTH(DEPTH)) 
  dut(.wr_clk(vintf.wr_clk),
      .wr_rst(vintf.wr_rst),
      .wr_en(vintf.wr_en),
      .data_in(vintf.data_in),
      .full(vintf.full),
      .rd_clk(vintf.rd_clk),
      .rd_rst(vintf.rd_rst),
      .rd_en(vintf.rd_en),
      .data_out(vintf.data_out),
      .empty(vintf.empty)
     );
  
  // write and read clock generation
  initial begin
    wr_clk = 0;
    rd_clk = 0;
    
    forever #5 wr_clk = ~wr_clk;
    forever #10 rd_clk = ~rd_clk;
  end
  
  initial begin
    // condig data base setup
    uvm_config_db( virtual intf #(WIDTH, DEPTH)) :: set(null, "*", "vintf", vintf);
    run_test("async_fifo_test");
  end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
