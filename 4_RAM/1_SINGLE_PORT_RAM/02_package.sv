// UVM - PACKAGE

package sr_pkg;

  // import UVM boot strap
  import uvm_pkg :: *;
  `include "uvm_macros.svh"
  
  // parameters
  parameter WIDTH = 8;
  parameter DEPTH = 8;
  
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

								// while object(memory) allocation each class enters into the package and sees the parameter values
  
  // typedef is optional one
endpackage
