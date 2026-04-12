// UVM -- testbench

`timescale 1ns/1ps

`include "package.sv"
`include "interface.sv"

// uvm bootstramp
import cnt_pkg :: *;			// importing package 
`include "uvm_macros.svh"		// uvm macros compailer directive

module cnt_testbench;
  bit clk;
  
  cnt_intf #(WIDTH) vintf(clk);			// interface instance
  
  // dut instantation
  mod_N_counter #(.WIDTH(WIDTH))
  dut(.clk	  (vintf.clk),
      .reset  (vintf.reset),
      .enable (vintf.enable),
      .mod_n  (vintf.mod_n),
      .up_down(vintf.up_down),
      .q      (vintf.q)
     );
  
  // clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // configuration database setup and calling run test
  initial begin
    `uvm_info("TESTBENCH", "START OF THE TESTBENCH", UVM_MEDIUM);
    
    // setting configuration database for driver
    uvm_config_db #(virtual cnt_intf #(WIDTH).drive) :: set(null, "uvm_test_top.env.agt.drv", "vintf", vintf.drive);	// setting only accessable to driver  --- by its hierachy
    
    // setting configuration database for monitor
    uvm_config_db #(virtual cnt_intf #(WIDTH).sample) :: set(null, "uvm_test_top.env.agt.mon", "vintf", vintf.sample);	// setting only accessable to monitor --- by its hierachy
    
    run_test("cnt_test");  // calling test to start evaluation
  end
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars;
  end
  
endmodule
