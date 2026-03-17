// UVM - TRANSACTION

class sr_transaction extends uvm_sequence_item;
  
  // packet variables
  rand bit 						en;
  rand bit 						wr_en;
  rand bit [WIDTH-1:0] 			data_in;
  randc bit [$clog2(DEPTH)-1:0] addr;
  
  bit [WIDTH-1:0]		 		data_out;
  
  // factory registration with field macros
  `uvm_object_utils_begin(sr_transaction)		// uing uvm macros to register transaction class to uvm factory
    `uvm_field_int(en, 			UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(wr_en, 		UVM_ALL_ON)
    `uvm_field_int(data_in, 	UVM_ALL_ON | UVM_HEX)
    `uvm_field_int(addr, 		UVM_ALL_ON | UVM_HEX)
    `uvm_field_int(data_out,	UVM_ALL_ON | UVM_HEX)
  `uvm_object_utils_end
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_transaction");
    super.new(name);
  endfunction
  
  // constraint
  constraint ct_enable { 
    en dist { 0 := 10, 1 := 90};		// 10% chance of disable & 90% chance of enable
  }
  
  constraint ct_write_enable {
    wr_en dist { 0 := 30, 1 := 80};		// 80% chance of write disable & 30% chance of write enable
  }
  
endclass
