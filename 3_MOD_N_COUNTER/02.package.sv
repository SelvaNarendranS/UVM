// uvm --package 

package cnt_pkg;
  
  // uvm bootstrap
  import uvm_pkg :: *;		// sv package import directive
  `include "uvm_macros.svh"

  // global parameter decleration
  parameter WIDTH = 8;
  
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
