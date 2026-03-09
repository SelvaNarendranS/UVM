// UVM - TESTBENCH

`timescale 1ns/1ps

//`include "package.sv"
import uvm_pkg::*;	// uvm bootstrap  // sv package import directive	-- added in package file
`include "uvm_macros.svh"	// uvm macros - compailer directive -- to access macros

`include "interface.sv"
`include "test.sv"

module fa_testbench;	
  
  fa_intf vintf();		// interface handle declaration
  
  // instantation
  full_adder dut (.a	(vintf.a),
                  .b	(vintf.b),
                  .c	(vintf.c),
                  .sum	(vintf.sum),
                  .carry(vintf.carry)
                 );
  
  // configuration interface and calling run_test
  initial begin
    `uvm_info("TESTBENCH - TOP "," ------ Start of the testbench", UVM_MEDIUM)
    
    `uvm_info("TESTBENCH - TOP "," ------ Configuration database of virtual interface has been set", UVM_MEDIUM)
    // interface configuration to database
    uvm_config_db #(virtual fa_intf.tb) :: set(null, 	// starting point
                                            "*",	// visibility - all lower hierachy
                                            "vintf_tb",	// name
                                            vintf.tb	// value
                                           );
    
    `uvm_info("TESTBENCH -TOP "," ------ calling run_test task -- test execution starts", UVM_MEDIUM)
    run_test("fa_test");		// calling run task in test class to start the UVM execution
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule