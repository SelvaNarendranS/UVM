// UVM -- testbench

`timescale 1ns/1ps

`include "package.sv"
`include "interface.sv"

// uvm bootstramp
import dff_pkg :: *;			// importing package 
`include "uvm_macros.svh"		// uvm macros compailer directive

module dff_testbench;
  
  dff_intf vintf();			// interface instance
  
  // dut instantation
  d_flip_flop inst (vintf.dut);
  
  // clock generation
  initial begin
    vintf.clk = 0;
    forever #5 vintf.clk = ~vintf.clk;
  end
  
  // configuration database setup and calling run test
  initial begin
    `uvm_info("TESTBENCH", "START OF THE TESTBENCH", UVM_MEDIUM);
    
    // setting configuration database for driver
    uvm_config_db #(virtual dff_intf.drive) :: set(null, "uvm_test_top.env.agt.drv", "vintf", vintf.drive);	// setting only accessable to driver  --- by its hierachy
    
    // setting configuration database for monitor
    uvm_config_db #(virtual dff_intf.sample) :: set(null, "uvm_test_top.env.agt.mon", "vintf", vintf.sample);	// setting only accessable to monitor --- by its hierachy
    
    run_test("dff_test");  // calling test to start evaluation
  end
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars;
  end
  
endmodule