// UVM -- AGENT

class sr_agent extends uvm_agent;
  
  // factory registration
  `uvm_component_utils(sr_agent)
  
  sr_sequencer seqr;
  sr_driver	   drv;
  sr_monitor   mon;		// child class handles
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_agent", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (object)memory allocation to its child class
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE)	begin	// getting agent class property and and passing active components only
      
      seqr = sr_sequencer :: type_id :: create("seqr", this);	// factory based instantiation 
      drv  = sr_driver :: type_id :: create("drv", this);
    end
    mon = sr_monitor :: type_id :: create("mon", this);		// it can be active or passive property
  endfunction
  
  // connect phase -- connecting driver and sequencer
  function void connect_phase(uvm_phase phase);
    if(get_is_active == UVM_ACTIVE)	begin
      if(drv != null && seqr != null)			// driver and sequencer should have object
        drv.seq_item_port.connect(seqr.seq_item_export);		// connecting driver to sequencer
      else
        `uvm_error("AGENT", "Driver and sequencer missing of memory allocation")
    end
  endfunction
  
endclass
