// sequence

`ifndef SYNC_FIFO_SEQUENCE
`define SYNC_FIFO_SEQUENCE

class sync_fifo_sequence extends uvm_sequence #(sync_fifo_transaction);
  
  // factory registration 
  `uvm_object_utils(sync_fifo_sequence)
  sync_fifo_transaction trans;		// transaction handle
  
  // default constructor
  function new(string name = "sync_fifo_sequence");
    super.new(name);
  endfunction
  
  // generating stimulus to the dut
  task body;
    `uvm_info(get_type_name(), "Stimuli generation starts", UVM_LOW);
    
    for(int i = 0; i <= (DEPTH*2); i++) begin
      trans = sync_fifo_transaction :: type_id :: create("trans");
      
      start_item(trans);
      
      if(!trans.randomize() with {
        if(i == 0) reset == 1;
        else {
          if(i <= DEPTH) {		// full condition
            reset == 0;
            wr_enable == 1;
            rd_enable == 0;
          }
          else if(i > (DEPTH+(DEPTH/2))) {		// read condition
            reset == 0;
            rd_enable == 1;
            wr_enable == 0;
          }
          else reset == 0;			// other conditions
        }
      }) begin
        `uvm_error(get_type_name(), "Randomization failed");
      end
      
      finish_item(trans);
      `uvm_info(get_type_name(), $sformatf("reset = %0d | wr_enable = %0d | rd_enable = %0d | data_in = %0d | data_out = %0d | full = %0d | empty = %0d", trans.reset, trans.wr_enable, trans.rd_enable, trans.data_in, trans.data_out, trans.full, trans.empty), UVM_LOW);
    end
      
    endtask
  
endclass

`endif
