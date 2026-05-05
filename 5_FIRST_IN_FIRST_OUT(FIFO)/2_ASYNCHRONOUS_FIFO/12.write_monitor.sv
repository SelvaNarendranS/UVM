// write monitor

`ifndef ASYNC_FIFO_WR_MONITOR
`define ASYNC_FIFO_WR_MONITOR

class async_fifo_wr_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(async_fifo_rd_monitor)
  async_fifo_wr_transaction wr_trans;				// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;	// virtual interface
  
  // analysis port
  uvm_analysis_port #(async_fifo_wr_transaction) wr_analysis_port;
  
   // default constructor
  function new(string name = "async_fifo_rd_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- from modport
    if(!uvm_config_db #(virtual intf #(WIDTH, DEPTH)) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Virtual interface missing");		// stop the simulation with warning
    
    wr_analysis_port = new("analysis_port", this);
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    forever begin
      wr_trans = sync_fifo_wr_transaction :: type_id :: create("wr_trans");		// object allocation by factory method
      
      write_sample_stimuli(vintf);			// calling task to sample the output from dut
      
      wr_analysis_port.write(wr_trans);		// passing transaction to the TLM port 
    end
  endtask
    
  task write_sample_stimuli(virtual intf #(WIDTH, DEPTH) vintf);
    @(vintf.wr_cb_sample);
    
    wr_trans.wr_rst 	= vintf.wr_cb_sample.wr_rst;
    wr_trans.wr_en 		= vintf.wr_cb_sample.wr_en;
    wr_trans.data_in	= vintf.wr_cb_sample.data_in;
    wr_trans.full		= vintf.wr_cb_sample.full;
    
    `uvm_info(get_type_name(), $sformatf("%0s", wr_trans.convert2string()), UVM_LOW);
    
  endtask
  
endclass

`endif
