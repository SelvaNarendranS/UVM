// write sequence

`ifndef ASYNC_FIFO_WR_SEQUENCE
`define ASYNC_FIFO_WR_SEQUENCE

class async_fifo_wr_sequence extends uvm_sequence #(async_fifo_wr_transaction);
  
  // factory registration 
  `uvm_object_utils(async_fifo_wr_sequence)
  async_fifo_wr_transaction wr_trans;		// transaction handle
  
  // default constructor
  function new(string name = "async_fifo_wr_sequence");
    super.new(name);
  endfunction
  
  // generating stimulus to the dut
  task body;
    `uvm_info(get_type_name(), "Write Stimuli generation starts", UVM_LOW);
    
    for(int i = 0; i < (DEPTH * 2); i++) begin
      wr_trans = async_fifo_wr_transaction :: type_id :: create("wr_trans");		// object allocation for each inputs
      
      start_item(wr_trans);
      
      if(i == 0) begin
        $display("---- RESET condition ----");
        wr_trans.rst_cnst.constraint_mode(1);			// constraint mode ON
        wr_trans.wr_cnst.constraint_mode(0);
        randomization();							// value generation
      end
      
      // full condition satisfy
      else if(i < DEPTH + 1) begin
        $display("---- FULL condition ----");
        wr_trans.rst_cnst.constraint_mode(0);			// constraint mode OFF
        wr_trans.wr_cnst.constraint_mode(1);
        randomization();			
      end
      
      else begin
        $display("Write Idle condition");
        wr_trans.wr_rst     = 1'b1;
        wr_trans.wr_en      = 1'b0;
        wr_trans.data_in    = 1'b0;
      end
        
      finish_item(wr_trans);
      `uvm_info(get_type_name(), $sformatf("%0s", wr_trans.convert2string()), UVM_LOW);
      
    end
  
  endtask
  
  function void randomization();
    if(!wr_trans.randomize()) begin
      `uvm_error(get_type_name(), "Randomization failed");
    end
  endfunction
      
endclass

`endif
