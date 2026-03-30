// UVM -- TEST

class sr_test extends uvm_test;
  
  // factory registration
  `uvm_component_utils(sr_test)
  
  sr_environment env;		// child class handles
  sr_sequence seq;
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_test", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = sr_environment :: type_id :: create("env", this);	// factory based instantiation 
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("TEST", $sformatf("printing topology"), UVM_LOW)
    uvm_top.print_topology();
  endfunction
  
  // run phase -- triggered by testbench top -- trigger's the entire component to start uvm execution
  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);	// raise objection by 1 -- to intimate the uvm to wait for the process is on going
    
    seq = sr_sequence :: type_id :: create("seq"); 	// factory based instantiation - for sequence
    
    seq.start(env.agt.seqr);	// initiate sequence execution -- and serve the item to sequencer
    
    phase.phase_done.set_drain_time(this, 10ns);		// wait for the last sequence item to sample
    
    phase.drop_objection(this);		// drops objection -- allow simulation to exit 
    
  endtask
  
endclass





// overriding(the base class) extended class from the single port ram to dual port ram

class dr_test extends sr_test;
  
  // factory registration
  `uvm_component_utils(dr_test)
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_test", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  virtual function void build_phase(uvm_phase phase);
    
    // first declaring factory overriding before environment ceation
    sr_transaction :: type_id :: set_type_override(dr_transaction :: get_type());
    sr_driver :: type_id :: set_type_override(dr_driver :: get_type());
    sr_monitor:: type_id :: set_type_override(dr_monitor :: get_type());
    sr_coverage:: type_id :: set_type_override(dr_coverage :: get_type());
    
    // changing the environemnt to the 2 mode scoreboard
    sr_environment:: type_id :: set_type_override(dr_environment :: get_type());
    
    super.build_phase(phase);		// building environment after the override done
  endfunction
    
endclass
