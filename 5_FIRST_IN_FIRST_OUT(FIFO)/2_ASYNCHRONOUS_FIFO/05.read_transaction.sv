  // transaction

  `ifndef ASYNC_FIFO_RD_TRANSACTION
  `define ASYNC_FIFO_RD_TRANSACTION

  class async_fifo_rd_transaction extends uvm_sequence_item;

    // read domain
    rand bit 			rd_rst;
    rand bit 			rd_en;
    bit [WIDTH -1 :0]	data_out;
    bit 				empty;

    // factory registration
    `uvm_object_utils_begin(async_fifo_rd_transaction)
    `uvm_field_int(rd_rst, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(rd_en, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(data_out, UVM_ALL_ON | UVM_HEX)
    `uvm_field_int(empty, UVM_ALL_ON | UVM_BIN)
    `uvm_object_utils_end

    function new(string name = "async_fifo_rd_transaction");
      super.new(name);
    endfunction

   // constraint for reset condition
    constraint rst_cnst{rd_en == 0;
                        rd_rst  == 0;
                       }

    constraint rd_cnst {rd_en == 1;
                        rd_rst  == 1;
                       }

    // display function
    function string convert2string;
      return $sformatf("Time =%0t | rd_rst = %0d | rd_en = %0d | data_out = %0d(%0b) | empty = %0d", $time, rd_rst, rd_en, data_out, data_out, empty);
    endfunction

  endclass

  `endif
