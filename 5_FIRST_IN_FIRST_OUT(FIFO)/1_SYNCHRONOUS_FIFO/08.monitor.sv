// monitor

`ifndef "SYNC_FIFO_MONITOR"
`define "SYNC_FIFO_MONITOR"

class sync_fifo_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(sync_fifo_monitor)
  sync_fifo_transaction trans;				// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;	// virtual interface
  
  // analysis port
  uvm_analysis_port #(sync_fifo_transaction) analysis_port;
  
   // default constructor
  function new(string name = "sync_fifo_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- from modport
    if(!uvm_config_db #(virtual intf #(WIDTH, DEPTH)) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Virtual interface missing");		// stop the simulation with warning
    
    analysis_port = new("analysis_port", this);
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    forever begin
      trans = sync_fifo_transaction :: type_id :: create("trans");		// object allocation by factory method
      
      sample_stimuli(vintf);			// calling task to sample the output from dut
      
      analysis_port.write(trans);		// passing transaction to the TLM port 
    end
  endtask
    
  task sample_stimuli(virtual intf #(WIDTH, DEPTH) vintf);
    @(vintf.sample_cb);
    
    trans.reset 	= vintf.sample_cb.reset;
    trans.wr_enable = vintf.sample_cb.wr_enable;
    trans.rd_enable = vintf.sample_cb.rd_enable;
    trans.data_in	= vintf.sample_cb.data_in;
    trans.data_out	= vintf.sample_cb.data_out;
    trans.full		= vintf.sample_cb.full;
    trans.empty		= vintf.sample_cb.empty;
    
    `uvm_info(get_type_name(), $sformatf("reset = %0d | wr_enable = %0d | rd_enable = %0d | data_in = %0d | data_out = %0d | full = %0d | empty = %0d", reset, wr_enable, rd_enable, data_in, data_out, full, empty), UVM_LOW);
    
  endtask
  
endclass

`endif
