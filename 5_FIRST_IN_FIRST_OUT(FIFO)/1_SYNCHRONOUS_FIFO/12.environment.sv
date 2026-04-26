// UVM -- enviromnent

`ifndef SYNC_FIFO_ENVIRONMENT_SV
`define SYNC_FIFO_ENVIRONMENT_SV

class sync_fifo_environment extends uvm_env;
  
  `uvm_component_utils(sync_fifo_environment)		// factory registration
  
  // class handles
  sync_fifo_agent agt;
  sync_fifo_scoreboard scb;
  sync_fifo_coverage cov;
  
  // default constructor
  function new(string name = "environment", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);      
    agt = sync_fifo_agent :: type_id :: create("agt", this);	// factory based instantiation 
    scb  = sync_fifo_scoreboard :: type_id :: create("scb", this);
    cov  = sync_fifo_coverage :: type_id :: create("cov", this);
  endfunction
  
  // connect phase -- connecting monitor and scoreboard
  function void connect_phase(uvm_phase phase);
    
    agt.mon.analysis_port.connect(scb.analysis_import);		// TLM port connecting monitor to scoreboard
    agt.mon.analysis_port.connect(cov.analysis_export);		// TLM port connecting monitor to coverage 
    
  endfunction
  
endclass

`endif
