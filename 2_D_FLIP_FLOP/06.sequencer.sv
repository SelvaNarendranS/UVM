// UVM --- sequencer

`ifndef DFF_SEQUENCER_SV
`define DFF_SEQUENCER_SV

class dff_sequencer extends uvm_sequencer #(dff_transaction);
  
  `uvm_component_utils(dff_sequencer)		// factory registration
  
  // default constructor
  function new(string name = "dff_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
  
endclass

`endif