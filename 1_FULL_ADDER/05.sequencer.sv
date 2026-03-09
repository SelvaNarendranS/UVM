// UVM -- SEQUENCER

`ifndef FA_SEQUENCER_SV
`define FA_SEQUENCER_SV

class fa_sequencer extends uvm_sequencer #(fa_transaction);
  
  // factory registration
  `uvm_component_utils(fa_sequencer)
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
endclass

`endif