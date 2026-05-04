// virtual sequencer

`ifndef ASYNC_FIFO_VIRTUAL_SEQUENCER
`define ASYNC_FIFO_VIRTUAL_SEQUENCER

class async_fifo_virtual_sequencer extends uvm_sequencer;
  
  // factory registration
  `uvm_component_utils(async_fifo_virtual_sequencer);
  
  // write and read domain sequence handle
  async_fifo_wr_sequencer wr_seqr;
  async_fifo_rd_sequencer rd_seqr;
  
  // default constructor
  function new(string name = "async_fifo_virtual_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
  
endclass

`endif
