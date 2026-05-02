// virtual sequence

`ifndef ASYNC_FIFO_VIRTUAL_SEQUENCE
`define ASYNC_FIFO_VIRTUAL_SEQUENCE

class async_fifo_virtual_sequence extends uvm_sequence;
  
  // factory registration 
  `uvm_object_utils(async_fifo_virtual_sequence)
  
  // connecting to virtual sequencer
  `uvm_declare_p_sequencer(async_fifo_virtual_sequencer)
  
  // default constructor
  function new(string name = "async_fifo_virtual_sequence");
    super.new(name);
  endfunction
  
  // generating stimulus to the dut
  task body;
    `uvm_info(get_type_name(), "Inside Virtual sequence", UVM_LOW);
    
    // Astual write and read domain sequence handle
    async_fifo_wr_sequence wr_seq;
    async_fifo_wr_sequence rd_seq;
    
    // creating read and write sequence
    wr_seq = async_fifo_wr_sequence :: type_id :: create("wr_seq");
    rd_seq = async_fifo_rd_sequence :: type_id :: create("rd_seq");
    
    
    // parallel operation of 2 domains
    fork
      begin
        wr_seq.start(p_sequencer.wr_seqr);
      end
      
      begin
        rd_seq.start(p_sequencer.rd_seqr);
      end
      
  endtask
      
endclass

`endif
