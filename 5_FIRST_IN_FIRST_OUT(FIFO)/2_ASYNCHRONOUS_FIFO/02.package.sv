// package 

package async_fifo_pkg;
  
  // uvm bootstrap
  import uvm_pkg :: *;
  `include "uvm_macros.svh"
  
  // parameter
  parameter WIDTH = 8;
  parameter DEPTH = 4;

  `uvm_analysis_imp_decl(_wr)
  `uvm_analysis_imp_decl(_rd)
  
  // including files -- bottom -> to  -> top
  // objects
  `include "write_transaction.sv"
  `include "read_transaction.sv"

  // component sequencer
  `include "write_sequencer.sv"
  `include "read_sequencer.sv"
  `include "virtual_sequencer.sv"

  // object - sequence 
  `include "write_sequence.sv"
  `include "read_sequence.sv"
  `include "virtual_sequence.sv"
  
  // components
  `include "write_driver.sv"
  `include "read_driver.sv"
  `include "write_monitor.sv"
  `include "read_monitor.sv"
  `include "write_agent.sv"
  `include "read_agent.sv"

  `include "scoreboard.sv"
  `include "coverage.sv"
  `include "environment.sv"
  `include "test.sv"
  
endpackage
