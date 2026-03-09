// UVM -- environment

`ifndef FA_ENVIRONMENT_SV
`define FA_ENVIRONMENT_SV

`include "agent.sv"
`include "scoreboard.sv"
`include "coverage.sv" 

class fa_environment extends uvm_env;
  
  // factory registration
  `uvm_component_utils(fa_environment)
  
  fa_agent 		agt;
  fa_scoreboard	scb;
  fa_coverage 	cov;	// child class handles
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_environment", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);      
    agt = fa_agent :: type_id :: create("agt", this);	// factory based instantiation 
    scb  = fa_scoreboard :: type_id :: create("scb", this);
    cov  = fa_coverage :: type_id :: create("cov", this);
  endfunction
  
  // connect phase -- connecting monitor and scoreboard
  function void connect_phase(uvm_phase phase);
    agt.mon.analysis_port.connect(scb.analysis_import);		// TLM port connecting monitor to scoreboard
    agt.mon.analysis_port.connect(cov.analysis_import);		// TLM port connecting monitor to coverage
  endfunction
  
  function void extract_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"Inside the extract phase", UVM_MEDIUM)
  endfunction
  
  function void check_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"Inside the check phase", UVM_MEDIUM)
  endfunction
  
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"Inside the report phase", UVM_MEDIUM)
  endfunction
  
  function void final_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"Inside the final phase", UVM_MEDIUM)
  endfunction
  
endclass

`endif