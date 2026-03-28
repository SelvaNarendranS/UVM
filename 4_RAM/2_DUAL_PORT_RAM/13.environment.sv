// UVM -- environment

class sr_environment extends uvm_env;
  
  // factory registration
  `uvm_component_utils(sr_environment)
  
  sr_agent 		agt;
  sr_coverage	cov;
  sr_scoreboard	scb; 		// child class handles
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_environment", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);      
    agt = sr_agent :: type_id :: create("agt", this);	// factory based instantiation 
    scb  = sr_scoreboard :: type_id :: create("scb", this);
    cov  = sr_coverage :: type_id :: create("cov", this);
    
  endfunction
  
  // connect phase -- connecting monitor and scoreboard
  function void connect_phase(uvm_phase phase);
    agt.mon.analysis_port.connect(scb.analysis_import);		// connecting monitor to scoreboard
    agt.mon.analysis_port.connect(cov.analysis_export);		// connecting monitor to coverage
  endfunction
  
endclass




// overriding(the base class) extended class from the single port ram to dual port ram

class dr_environment extends sr_environment;
  
  // factory registration
  `uvm_component_utils(dr_environment)
  
  dr_scoreboard	dr_scb; 
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_environment", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class ---- to select scoreboard mode
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    dr_scb  = dr_scoreboard :: type_id :: create("dr_scb", this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    dr_monitor dr_mon;
    
    // upcasting monitor clocking block
    if(!$cast(dr_mon, agt.mon))
      `uvm_fatal(get_type_name(), "$cast failed monitor to dr_monitor");
    
    dr_mon.dr_analysis_port.connect(dr_scb.analysis_import);			// connecting monitor to scoreboard
    
  endfunction
  
endclass
