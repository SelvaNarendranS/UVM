// sequence

`ifndef ASYNC_FIFO_WR_SEQUENCE
`define ASYNC_FIFO_WR_SEQUENCE

class async_fifo_wr_sequence extends uvm_sequence #(async_fifo_transaction);
  
  // factory registration 
  `uvm_object_utils(async_fifo_wr_sequence)
  async_fifo_transaction trans;		// transaction handle
  
  // default constructor
  function new(string name = "async_fifo_wr_sequence");
    super.new(name);
  endfunction
  
  // generating stimulus to the dut
  task body;
    `uvm_info(get_type_name(), "Write Stimuli generation starts", UVM_LOW);
    
    for(int i = 0; i < (DEPTH * 2); i++) begin
      trans = async_fifo_transaction :: type_id :: create("trans");		// object allocation for each inputs
      
      start_item(trans);
      
       if(i == 0) begin
         $display("---- RESET condition ----");
         trans.rst_cnst.constraint_mode(1);			// constraint mode ON
         trans.wr_cnst.constraint_mode(0);
         trans.rd_cnst.constraint_mode(0);
         randomization();							// value generation
        end
      
        // full condition satisfy
        else if(i < DEPTH + 1) begin
          $display("---- FULL condition ----");
          trans.rst_cnst.constraint_mode(0);			// constraint mode OFF
          trans.wr_cnst.constraint_mode(1);
          trans.rd_cnst.constraint_mode(0);
          randomization();			
        end
      
      finish_item(trans);
      `uvm_info(get_type_name(), $sformatf("%0s", convert2string()), UVM_LOW);
      
    end
  
  endtask
  
  function void randomization();
    if(!trans.randomize()) begin
      `uvm_error(get_type_name(), "Randomization failed");
    end
  endfunction
      
endclass

`endif
