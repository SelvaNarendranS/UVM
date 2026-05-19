// UVM -- test

`ifndef ASYNC_FIFO_TEST_SV
`define ASYNC_FIFO_TEST_SV

class async_fifo_test extends uvm_test;
  
  `uvm_component_utils(async_fifo_test)		// factory registration
  
  async_fifo_environment env;   // environment handle
  
  // default constructor
  function new(string name = "async_fifo_test", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = async_fifo_environment :: type_id :: create("env", this);
  endfunction
  
  // end of elaboration phase
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info(get_type_name(), $sformatf("printing topology"), UVM_LOW)
    uvm_top.print_topology();
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    async_fifo_virtual_sequence vseq;
    vseq = async_fifo_virtual_sequence::type_id::create("vseq");
    
    phase.raise_objection(this);
    
    vseq.start(env.vseqr);		// initiating start
    
    phase.phase_done.set_drain_time(this, 10ns);			// wait for the last stimuli to process
    
    phase.drop_objection(this);
  endtask
  
endclass

`endif
