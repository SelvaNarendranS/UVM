// UVM - TRANSACTION

`ifndef FA_TRANSACTION_SV   // macro guard  // executes only ones protects from duplicate files with same name
`define FA_TRANSACTION_SV	// macro definition	

class fa_transaction extends uvm_sequence_item;
  
  // packet variables
  rand bit [2:0] abc;
  static bit[2:0] i = 0;
  
  bit a;
  bit b;
  bit c;
  
  bit sum;
  bit carry;
    
  // factory registration with field macros
  `uvm_object_utils_begin(fa_transaction)		// uing uvm macros to register transaction class to uvm factory
    `uvm_field_int(a, 		UVM_ALL_ON)
    `uvm_field_int(b, 		UVM_ALL_ON)
    `uvm_field_int(c, 		UVM_ALL_ON)
    `uvm_field_int(sum, 	UVM_ALL_ON)
    `uvm_field_int(carry,	UVM_ALL_ON)
  `uvm_object_utils_end
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_transaction");
    super.new(name);
  endfunction
  
  // constraint
  constraint addition {
    abc < 8;
    abc == i;
  }
  
  function post_randomize();
      a = abc[0];
      b = abc[1];
      c = abc[2];
      i++;
  endfunction
  
  // display function
  function string convert2string();
    return $sformatf("INPUT : a = %0d | b = %0d | c = %0d | OUTPUT : sum = %0d | carry = %0d", a, b, c, sum, carry);
  endfunction
  
endclass

`endif				// end of the file