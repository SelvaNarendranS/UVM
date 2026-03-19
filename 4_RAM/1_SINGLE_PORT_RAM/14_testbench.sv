// UVM - TESTBENCH

`timescale 1ns/1ps

`include "package.sv"
`include "interface.sv"

// uvm bootstrap 
// import uvm_pkg :: *;		// sv package import directive	-- added in package file
import sr_pkg :: *;			// importing sr package
`include "uvm_macros.svh"	// uvm macros - compailer directive -- to access macros

module sr_testbench;
  bit clk;
  
//   parameter WIDTH = 8;
//   parameter DEPTH = 256;		// not necessary due to included in package 
  
  sr_intf #(WIDTH, DEPTH) tb_vintf(clk);		// interface handle
  
  // instantation
  single_port_ram #(.WIDTH(WIDTH),
                    .DEPTH(DEPTH)) 
  spram (.clk	   (clk),
         .en	   (tb_vintf.en),
         .wr_en	   (tb_vintf.wr_en),
         .data_in  (tb_vintf.data_in),
         .addr	   (tb_vintf.addr),
         .data_out (tb_vintf.data_out)
        );
  
  // clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // configuration interface and calling run_test
  initial begin
    // interface configuration to database
    uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: set(null, 	// starting point
                                                         "*",	// visibility - all lower hierachy
                                                         "vintf",	// name
                                                         tb_vintf	// value
                                                        );
    run_test("sr_test");		// calling run task in test class to start the UVM execution
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule