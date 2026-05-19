// UVM -- enviromnent

`ifndef ASYNC_FIFO_ENVIRONMENT_SV
`define ASYNC_FIFO_ENVIRONMENT_SV

class async_fifo_environment extends uvm_env;
  
  `uvm_component_utils(async_fifo_environment)		// factory registration
  
  // class handles
  async_fifo_wr_agent          wr_agt;
  async_fifo_rd_agent          rd_agt;
  async_fifo_virtual_sequencer vseqr;
  async_fifo_scoreboard        scb;
  async_fifo_coverage          cov;
  
  // default constructor
  function new(string name = "async_fifo_environment", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);      
    
    // setting agent as active
    uvm_config_db #(uvm_active_passive_enum)::set(this, "wr_agt", "is_active", UVM_ACTIVE);
    uvm_config_db #(uvm_active_passive_enum)::set(this, "rd_agt", "is_active", UVM_ACTIVE);
    
    wr_agt = async_fifo_wr_agent :: type_id :: create("wr_agt", this);	// factory based instantiation 
    rd_agt = async_fifo_rd_agent :: type_id :: create("rd_agt", this);
    vseqr = async_fifo_virtual_sequencer :: type_id :: create("vseqr", this); 
    scb  = async_fifo_scoreboard :: type_id :: create("scb", this);
    cov  = async_fifo_coverage :: type_id :: create("cov", this);
    
  endfunction
  
  // connect phase -- connecting monitor and scoreboard
  function void connect_phase(uvm_phase phase);
    
    wr_agt.wr_mon.wr_analysis_port.connect(scb.wr_analysis_import);		// TLM port connecting write monitor to scoreboard
    
    rd_agt.rd_mon.rd_analysis_port.connect(scb.rd_analysis_import);		// TLM port connecting read monitor to scoreboard
    
    wr_agt.wr_mon.wr_analysis_port.connect(cov.wr_cov_export);		// TLM port connecting write monitor to coverage 
    
    rd_agt.rd_mon.rd_analysis_port.connect(cov.rd_cov_export);		// TLM port connecting write monitor to coverage 
    
    vseqr.wr_seqr = wr_agt.wr_seqr;
    vseqr.rd_seqr = rd_agt.rd_seqr;
    
  endfunction
  
endclass

`endif
