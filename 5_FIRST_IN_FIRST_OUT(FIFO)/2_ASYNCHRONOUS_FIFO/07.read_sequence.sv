// sequence

`ifndef ASYNC_FIFO_RD_SEQUENCE
`define ASYNC_FIFO_RD_SEQUENCE

class async_fifo_rd_sequence extends uvm_sequence #(async_fifo_rd_transaction);
  
  // factory registration 
  `uvm_object_utils(async_fifo_rd_sequence)
  async_fifo_rd_transaction rd_trans;		// transaction handle
  
  // default constructor
  function new(string name = "async_fifo_rd_sequence");
    super.new(name);
  endfunction
  
  // generating stimulus to the dut
  task body;
    `uvm_info(get_type_name(), "read Stimuli generation starts", UVM_LOW);
    
    for(int i = 0; i < (DEPTH * 2); i++) begin
      rd_trans = async_fifo_rd_transaction :: type_id :: create("rd_trans");		// object allocation for each inputs
      
      start_item(rd_trans);
      
       if(i == 0) begin
         $display("---- RESET condition ----");
         rd_trans.rst_cnst.constraint_mode(1);			// constraint mode ON
         rd_trans.rd_cnst.constraint_mode(0);
         randomization();							// value generation
        end
      
        // read condition
        else if(i < (DEPTH*2)) begin
          $display("---- READ condition ----");
          rd_trans.rst_cnst.constraint_mode(0);				// constraint mode OFF
          rd_trans.rd_cnst.constraint_mode(1);
          randomization();						
        end
      
      finish_item(rd_trans);
      `uvm_info(get_type_name(), $sformatf("%0s", rd_trans.convert2string()), UVM_LOW);
      
    end
  
  endtask
  
  function void randomization();
    if(!rd_trans.randomize()) begin
      `uvm_error(get_type_name(), "Randomization failed");
    end
  endfunction
      
endclass

`endif
