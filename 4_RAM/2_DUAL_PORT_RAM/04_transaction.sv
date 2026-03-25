// UVM - TRANSACTION

class sr_transaction extends uvm_sequence_item;
  
  // packet variables
  rand bit 						en;
  rand bit 						wr_en;
  rand bit [WIDTH-1:0] 			data_in;
  rand bit [$clog2(DEPTH)-1:0] addr;
  
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
    wr_en dist { 0 := 30, 1 := 70};		// 70% chance of write disable & 30% chance of write enable
  }
  
endclass


// overriding(the base class) extended class from the single port ram to dual port ram

class dr_transaction extends sr_transaction;
  
  // packet variables		-- adding port B fields only
  bit 							mode;
  rand bit 						b_en;
  rand bit 						b_wr;
  rand bit [WIDTH-1:0] 			b_data_in;
  rand bit [$clog2(DEPTH)-1:0] b_addr;
  
  bit [WIDTH-1:0]		 		b_data_out;
  
  // factory registration with field macros
  `uvm_object_utils_begin(dr_transaction)		// uing uvm macros to register transaction class to uvm factory
  `uvm_field_int(b_en, 			UVM_ALL_ON)
  `uvm_field_int(b_wr, 			UVM_ALL_ON)
  `uvm_field_int(b_data_in, 	UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(b_addr, 		UVM_ALL_ON | UVM_HEX)
  `uvm_field_int(b_data_out,	UVM_ALL_ON | UVM_HEX)
  `uvm_object_utils_end
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_transaction");
    super.new(name);
  endfunction
  
  // constraint
  constraint ct_enable { 
    b_en dist { 0 := 10, 1 := 90};		// 10% chance of disable & 90% chance of enable
  }
  
  constraint ct_b_write_enable {
    if(b_en) 
      b_wr dist { 0 := 30, 1 := 70};		// 70% chance of port B write disable & 30% chance of Port B write enable
    else
      b_wr == 0;
  }
  
endclass
