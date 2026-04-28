// transaction

`ifndef ASYNC_FIFO_TRANSACTION
`define ASYNC_FIFO_TRANSACTION

class async_fifo_transaction extends uvm_sequence_item;
  
  // write domain
  rand bit 					wr_rst;
  rand bit 					wr_en;
  randc bit [WIDTH -1 :0]	data_in;
  bit 						full;

  // read domain
  rand bit 			rd_rst;
  rand bit 			rd_en;
  bit [WIDTH -1 :0]	data_out;
  bit 				empty;
  
  // factory registration
  `uvm_object_utils_begin(async_fifo_transaction)
  `uvm_field_int(wr_rst, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(wr_en, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(rd_en, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(data_in, UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(full, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(rd_rst, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(rd_en, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(data_out, UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(empty, UVM_ALL_ON | UVM_BIN)
  `uvm_object_utils_end
  
  function new(string name = "async_fifo_transaction");
    super.new(name);
  endfunction
  
 // constraint for reset condition
  constraint rst_cnst{wr_en == 0;
                      rd_en == 0;
                      wr_rst  == 0;
                      rd_rst  == 0;
                      data_in == 0;
                     }
  
  constraint wr_cnst{wr_en == 1;
                      rd_en == 0;
                      wr_rst  == 1;
                      rd_rst  == 1;
                     }
  
  constraint rd_cnst{wr_en == 0;
                      rd_en == 1;
                      wr_rst  == 1;
                      rd_rst  == 1;
                     }
  
  // display function
  function string convert2string;
    return $sformatf("Time =%0t | wr_rst = %0d | rd_rst = %0d | wr_en = %0d | data_in = %0d(%0b) | rd_en = %0d | data_out = %0d(%0b) | full = %0d | empty = %0d", $time, wr_rst, rd_rst, wr_en, data_in, data_in, rd_en, data_out, data_out, full, empty);
  endfunction
  
endclass

`endif
