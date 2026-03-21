// UVM - PACKAGE

package dr_pkg;

  // import UVM boot strap
  import uvm_pkg :: *;
  `include "uvm_macros.svh"
  
  // parameters
  parameter WIDTH = 4;
  parameter DEPTH = 8;
  parameter int MODE  = 0;		// mode0 - read first, mode1 - write first
  
  // include UVM classes --- components & objects  -- bottom to top hierachy
  // objects
  `include "transaction.sv"
  `include "sequence.sv"
  
  // component
  `include "sequencer.sv"
  `include "driver.sv"
  `include "monitor.sv"
  `include "agent.sv"
  
  // scoreboard
  `include "scoreboard.sv"				// base parent scoreboard
  `include "scoreboard_mode0.sv"		// mode0 scoreboard
  `include "scoreboard_mode1.sv"		// mode scoreboard

  `include "coverage.sv"
  `include "environment.sv"
  `include "test.sv"

								// while object(memory) allocation each class enters into the package and sees the parameter values
  
  // typedef is optional one
endpackage
