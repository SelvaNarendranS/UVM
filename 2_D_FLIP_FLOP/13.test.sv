// UVM -- test

`ifndef DFF_TEST_SV
`define DFF_TEST_SV

class dff_test extends uvm_test;
  
  `uvm_component_utils(dff_test)		// factory registration
  dff_transaction trans;		// transaction handle
  
  // class handles
  dff_sequence seq;
  dff_environment env;
  
  event over;
  
  // default constructor
  function new(string name = "dff_test", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = dff_environment :: type_id :: create("env", this);
//     seq.over = over;
//     env.scb.over = over;
  endfunction
  
  // connect phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
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
    
    seq = dff_sequence :: type_id :: create("seq");
    
    seq.start(env.agt.seqr);		// initiating start
    
    phase.phase_done.set_drain_time(this, 10ns);			// wait for the last stimuli to process
    
    phase.drop_objection(this);
  endtask
  
endclass

`endif