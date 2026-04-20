// UVM -- AGENT

`ifndef SYNC_FIFO_AGENT_SV
`define SYNC_FIFO_AGENT_SV

`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"

class sync_fifo_agent extends uvm_agent;
  
  // factory registration
  `uvm_component_utils(sync_fifo_agent)
  
  sync_fifo_sequencer seqr;
  sync_fifo_driver	   drv;
  sync_fifo_monitor   mon;		// child class handles
  
  uvm_active_passive_enum is_active; 			// enum defined inside uvm -- for setting active passive
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sync_fifo_agent", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE)	begin	// getting agent class property and and passing active components only
      
      seqr = sync_fifo_sequencer :: type_id :: create("seqr", this);	// factory based instantiation 
      drv  = sync_fifo_driver :: type_id :: create("drv", this);
    end
    mon = sync_fifo_monitor :: type_id :: create("mon", this);		// it can be active or passive property
  endfunction
  
  // connect phase -- connecting driver and sequencer
  function void connect_phase(uvm_phase phase);
    if(get_is_active == UVM_ACTIVE)	begin
      if(drv != null && seqr != null)		// driver and sequencer should have object
        drv.seq_item_port.connect(seqr.seq_item_export);		// connecting driver to sequencer
      else
        `uvm_error(get_type_name(), "Driver and sequencer missing of memory allocation")
    end
  endfunction
      
endclass
        
`endif
