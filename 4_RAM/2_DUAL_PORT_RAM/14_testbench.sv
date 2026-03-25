// UVM - TESTBENCH

`timescale 1ns/1ps

`include "package.sv"
`include "dr_interface.sv"
`include "sr_interface.sv"

// uvm bootstrap 
import dr_pkg :: *;			// importing dr package
`include "uvm_macros.svh"	// uvm macros - compailer directive -- to access macros

module dr_testbench;
  bit clk;
  logic mode_signal;  // Add a 1-bit mode signal
  
  sr_intf #(WIDTH, DEPTH) stb_vintf(clk);		// interface handle
  dr_intf #(WIDTH, DEPTH, MODE) tb_vintf(clk);		// interface handle
  
  // Assign mode value
  assign mode_signal = MODE;
  assign tb_vintf.mode = MODE;
  
  // instantation
  dual_port_ram #(.WIDTH(WIDTH),
                  .DEPTH(DEPTH))
  dut(.clk		  (clk),
      .mode		  (mode_signal),  // Use 1-bit signal instead of parameter
      
      // port A
      .a_en 	  (tb_vintf.a_en),
      .a_wr		  (tb_vintf.a_wr),
      .a_addr	  (tb_vintf.a_addr),
      .a_data_in  (tb_vintf.a_data_in),
      .a_data_out (tb_vintf.a_data_out),
      
      // port B
      .b_en 	  (tb_vintf.b_en),
      .b_wr		  (tb_vintf.b_wr),
      .b_addr	  (tb_vintf.b_addr),
      .b_data_in  (tb_vintf.b_data_in),
      .b_data_out (tb_vintf.b_data_out)
     );
  
  // clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // configuration interface and calling run_test
  initial begin
    // interface configuration to database
    uvm_config_db #(virtual dr_intf #(WIDTH, DEPTH, MODE)) :: set(null, "*", "dr_vintf", tb_vintf);
    uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: set(null, "*", "vintf", stb_vintf);
    
    // configuring ram mode into database   -- for scoreboards
    uvm_config_db #(int) :: set(null, "*", "ram_mode", MODE);
    
    run_test("dr_test");		// calling run task in test class to start the UVM execution
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
