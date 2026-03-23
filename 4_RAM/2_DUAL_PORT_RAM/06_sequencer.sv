// UVM -- SEQUENCER

class sr_sequencer #(type T = sr_transaction) extends uvm_sequencer #(T);
  
  // factory registration
  `uvm_component_param_utils(sr_sequencer #(T))
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
endclass
