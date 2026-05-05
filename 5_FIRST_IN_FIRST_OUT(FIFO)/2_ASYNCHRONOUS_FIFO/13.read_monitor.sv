// read monitor

`ifndef ASYNC_FIFO_RD_MONITOR
`define ASYNC_FIFO_RD_MONITOR

class async_fifo_rd_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(async_fifo_rd_monitor)
  async_fifo_rd_transaction rd_trans;				// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;	// virtual interface
  
  // analysis port
  uvm_analysis_port #(async_fifo_rd_transaction) wr_analysis_port;
  
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
    
    rd_analysis_port = new("analysis_port", this);
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    forever begin
      rd_trans = async_fifo_rd_transaction :: type_id :: create("rd_trans");		// object allocation by factory method
      
      read_sample_stimuli(vintf);			// calling task to sample the output from dut
      
      rd_analysis_port.write(rd_trans);		// passing transaction to the TLM port 
    end
  endtask
    
  task read_sample_stimuli(virtual intf #(WIDTH, DEPTH) vintf);
    @(vintf.rd_cb_sample);
    
    rd_trans.rd_rst 	= vintf.rd_cb_sample.rd_rst;
    rd_trans.rd_en 		= vintf.rd_cb_sample.rd_en;
    rd_trans.data_out	= vintf.rd_cb_sample.data_out;
    rd_trans.empty		= vintf.rd_cb_sample.empty;
    
    `uvm_info(get_type_name(), $sformatf("%0s", rd_trans.convert2string()), UVM_LOW);
    
  endtask
  
endclass

`endif
