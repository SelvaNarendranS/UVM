// package 

package sync_fifo_pkg;
  
  // uvm bootstrap
  `import uvm_pkg :: *;
  `include "uvm_macros.svh"
  
  // parameter
  parameter WIDTH = 8;
  parameter DEPTH = 4;
  
  // including files -- bottom -> to  -> top
  // objects
  `include "transaction.sv"
  `include "sequence.sv"
  
  // components
  `include "sequencer.sv"
  `include "driver.sv"
  `include "monitor.sv"
  `include "agent.sv"

  `include "scoreboard.sv"
  `include "coverage.sv"
  `include "environment.sv"
  `include "test.sv"
  
endpackage
