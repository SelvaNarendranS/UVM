// UVM -- write AGENT

`ifndef ASYNC_FIFO_WR_AGENT_SV
`define ASYNC_FIFO_WR_AGENT_SV

`include "write_sequencer.sv"
`include "write_driver.sv"
`include "write_monitor.sv"

class async_fifo_wr_agent extends uvm_agent;
  
  // factory registration
  `uvm_component_utils(async_fifo_wr_agent)
  
  async_fifo_wr_sequencer wr_seqr;
  async_fifo_wr_driver	   wr_drv;
  async_fifo_wr_monitor   wr_mon;		// child class handles
  
  uvm_active_passive_enum is_active; 			// enum defined inside uvm -- for setting active passive
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "async_fifo_wr_agent", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE)	begin	// getting agent class property and and passing active components only
      
      wr_seqr = async_fifo_wr_sequencer :: type_id :: create("wr_seqr", this);	// factory based instantiation 
      wr_drv  = async_fifo_wr_driver :: type_id :: create("wr_drv", this);
    end
    wr_mon = async_fifo_wr_monitor :: type_id :: create("wr_mon", this);		// it can be active or passive property
  endfunction
  
  // connect phase -- connecting driver and sequencer
  function void connect_phase(uvm_phase phase);
    if(get_is_active == UVM_ACTIVE)	begin
      if(wr_drv != null && wr_seqr != null)		// driver and sequencer should have objectA
        wr_drv.seq_item_port.connect(wr_seqr.seq_item_export);		// connecting driver to sequencer
      else
        `uvm_error(get_type_name(), "Driver and sequencer missing of memory allocation")
    end
  endfunction
      
endclass
        
`endif
