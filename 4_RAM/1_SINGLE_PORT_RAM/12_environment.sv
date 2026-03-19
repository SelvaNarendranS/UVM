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
  function void build_phase(uvm_phase phase);
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