// sequencer

`ifndef "SYNC_FIFO_SEQUENCER"
`define "SYNC_FIFO_SEQUENCER"

class sync_fifo_sequencer extends uvm_sequencer #(sync_fifo_transaction);
  
  // factory registration
  `uvm_component_utils(sync_fifo_sequencer);
  
  // default constructor
  function new(string name = "sync_fifo_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
  
endclass

`endif
