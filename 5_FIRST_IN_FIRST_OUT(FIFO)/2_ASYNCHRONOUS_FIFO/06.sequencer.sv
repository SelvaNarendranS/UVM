// sequencer

`ifndef ASYNC_FIFO_SEQUENCER
`define ASYNC_FIFO_SEQUENCER

class async_fifo_sequencer extends uvm_sequencer #(async_fifo_transaction);
  
  // factory registration
  `uvm_component_utils(async_fifo_sequencer);
  
  // default constructor
  function new(string name = "async_fifo_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
  
endclass

`endif
