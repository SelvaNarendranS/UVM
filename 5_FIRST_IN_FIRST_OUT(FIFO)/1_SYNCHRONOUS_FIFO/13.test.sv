// UVM -- test

`ifndef SYNC_FIFO_TEST_SV
`define SYNC_FIFO_TEST_SV

class sync_fifo_test extends uvm_test;
  
  `uvm_component_utils(sync_fifo_test)		// factory registration
  sync_fifo_transaction trans;		// transaction handle
  
  // class handles
  sync_fifo_sequence seq;
  sync_fifo_environment env;
  
  event over;
  
  // default constructor
  function new(string name = "sync_fifo_test", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = sync_fifo_environment :: type_id :: create("env", this);
  endfunction
  
  // end of elaboration phase
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("TEST", $sformatf("printing topology"), UVM_LOW)
    uvm_top.print_topology();
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    
    seq = sync_fifo_sequence :: type_id :: create("seq");
    
    seq.start(env.agt.seqr);		// initiating start
    
    phase.phase_done.set_drain_time(this, 10ns);			// wait for the last stimuli to process
    
    phase.drop_objection(this);
  endtask
  
endclass

`endif
