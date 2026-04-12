// UVM -- enviromnent

`ifndef CNT_ENVIRONMENT_SV
`define CNT_ENVIRONMENT_SV

class cnt_environment extends uvm_env;
  
  `uvm_component_utils(cnt_environment)		// factory registration
  
  // class handles
  cnt_agent agt;
  cnt_scoreboard scb;
  cnt_coverage cov;
  
  // default constructor
  function new(string name = "environment", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);      
    agt = cnt_agent :: type_id :: create("agt", this);	// factory based instantiation 
    scb  = cnt_scoreboard :: type_id :: create("scb", this);
    cov  = cnt_coverage :: type_id :: create("cov", this);
  endfunction
  
  // connect phase -- connecting monitor and scoreboard
  function void connect_phase(uvm_phase phase);
    
    agt.mon.analysis_port.connect(scb.analysis_import);		// TLM port connecting monitor to scoreboard
    agt.mon.analysis_port.connect(cov.analysis_export);		// TLM port connecting monitor to coverage 
    
  endfunction
  
endclass

`endif
