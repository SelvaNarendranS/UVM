// UVM -- SEQUENCER

class sr_sequencer extends uvm_sequencer #(sr_transaction);
  
  // factory registration
  `uvm_component_utils(sr_sequencer)
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
endclass