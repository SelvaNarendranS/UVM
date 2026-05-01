  // transaction

  `ifndef ASYNC_FIFO_WR_TRANSACTION
  `define ASYNC_FIFO_WR_TRANSACTION

  class async_fifo_wr_transaction extends uvm_sequence_item;

    // write domain
    rand bit 					wr_rst;
    rand bit 					wr_en;
    randc bit [WIDTH -1 :0]	data_in;
    bit 						full;

    // factory registration
    `uvm_object_utils_begin(async_fifo_wr_transaction)
    `uvm_field_int(wr_rst, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(wr_en, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(rd_en, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(data_in, UVM_ALL_ON | UVM_HEX)
    `uvm_field_int(full, UVM_ALL_ON | UVM_BIN)
    `uvm_object_utils_end

    function new(string name = "async_fifo_wr_transaction");
      super.new(name);
    endfunction

   // constraint for reset condition
    constraint rst_cnst{wr_en == 0;
                        wr_rst  == 0;
                        data_in == 0;
                       }

    constraint wr_cnst{wr_en == 1;
                        wr_rst  == 1;
                       }

    // display function
    function string convert2string;
      return $sformatf("Time =%0t | wr_rst = %0d | wr_en = %0d | data_in = %0d(%0b) | full = %0d", $time, wr_rst, wr_en, data_in, data_in, full,);
    endfunction

  endclass

  `endif
