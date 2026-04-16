// transaction 

class sync_fifo_transaction extends uvm_sequence_item;
  
  rand bit reset;
  rand bit wr_enable;
  rand bit rd_enable;
  rand bit [WIDTH-1:0 ]data_in;
  
  bit [WIDTH-1:0 ]data_out;
  bit full;
  bit empty;
  
  // factory registration
  `uvm_object_utils_begin(sync_fifo_transaction)
  `uvm_field_int(reset, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(wr_enable, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(rd_enable, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(data_in, UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(data_out, UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(full, UVM_ALL_ON | UVM_BIN)
  `uvm_field_int(empty, UVM_ALL_ON | UVM_BIN)
  `uvm_object_utils_end
  
  function new(string name = "sync_fifo_transaction");
    super.new(name);
  endfunction
  
  // constraint
  constraint ct_rst {
    reset dist {0 := 90, 1:= 5}; 
  }
  
  constraint wr_en {
    wr_enable dist {1:= 60, 0 := 40}; 
  }
  
  constraint rd_en {
    rd_enable dist {1:= 60, 0 := 40}; 
  }
  
endclass
