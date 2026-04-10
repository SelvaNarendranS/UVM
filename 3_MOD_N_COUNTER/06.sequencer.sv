// UVM --- sequencer

`ifndef CNT_SEQUENCER_SV
`define CNT_SEQUENCER_SV

class cnt_sequencer extends uvm_sequencer #(cnt_transaction);
  
  `uvm_component_utils(cnt_sequencer)		// factory registration
  
  // default constructor
  function new(string name = "cnt_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
  
endclass

`endif
