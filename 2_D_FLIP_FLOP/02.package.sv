// uvm --package 

package dff_pkg;
  
  // uvm bootstrap
  import uvm_pkg :: *;		// sv package import directive
  `include "uvm_macros.svh"
  
  // including files
  // include UVM classes --- components & objects  -- bottom to top hierachy
  // objects
  `include "transaction.sv"
  `include "sequence.sv"
  
  // component
  `include "sequencer.sv"
  `include "driver.sv"
  `include "monitor.sv"
  `include "agent.sv"
  
  `include "scoreboard.sv"
  `include "coverage.sv"
  `include "environment.sv"
  `include "test.sv"

endpackage  