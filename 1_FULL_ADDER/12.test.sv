// UVM -- TEST

`ifndef FA_TEST_SV
`define FA_TEST_SV

`include "transaction.sv"
`include "sequence.sv"
`include "environment.sv"

class fa_test extends uvm_test;
  
  // factory registration
  `uvm_component_utils(fa_test)
  
  fa_environment env;		// child class handles
  fa_sequence seq;
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_test", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = fa_environment :: type_id :: create("env", this);	// factory based instantiation 
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("TEST", $sformatf("printing topology"), UVM_LOW)
    uvm_top.print_topology();
  endfunction
  
  function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info(get_type_name(),"Inside the Start of simulation phase", UVM_MEDIUM)
  endfunction
  
  // run phase -- triggered by testbench top -- trigger's the entire component to start uvm execution
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);	// raise objection by 1 -- to intimate the uvm to wait for the process is on going
    
    seq = fa_sequence :: type_id :: create("seq"); 	// factory based instantiation - for sequence
    
    seq.start(env.agt.seqr);	// initiate sequence execution -- and serve the item to sequencer
    
    phase.phase_done.set_drain_time(this, 1ns);		// wait for the last sequence item to sample
    
    phase.drop_objection(this);		// drops objection -- allow simulation to exit 
    
  endtask
  
endclass

`endif