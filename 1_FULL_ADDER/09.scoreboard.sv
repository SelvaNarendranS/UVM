// UVM -- SCOSCOREBOARD
`ifndef FA_SCOREBOARD_SV
`define FA_SCOREBOARD_sv

class fa_scoreboard extends uvm_scoreboard;
  
  // factory registration
  `uvm_component_utils(fa_scoreboard)
  
  uvm_analysis_imp #(fa_transaction, fa_scoreboard) analysis_import;		// TLM port analysis import for analysis port
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_scoreboard", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
     analysis_import = new("analysis_import", this);		// (object) memory allocation to analysis import -- arguments - instance and parent name 
  endfunction
  
  // implementation of the analysis port write method
  function void write(fa_transaction trans);
    
    bit	a1;
    bit	b1;
    bit	c1;
    bit sum1;
    bit	carry1;

    // getting values from analysis port and storing to variable
    a1 	   = trans.a;
    b1 	   = trans.b;
    c1 	   = trans.c;
    sum1   = trans.sum;
    carry1 = trans.carry;
    
    `uvm_info(get_type_name(), $sformatf(" received to scoreboard = \n%0s", trans.convert2string()), UVM_LOW);
//     $display("scoreboard : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time,  trans.en, trans.wr_en, trans.data_in, trans.addr, trans.data_out);
    
    self_check(a1, b1, c1, sum1, carry1);	// calling self check function
    
  endfunction
  
  // self checking condition
  function void self_check( 
    input bit a, 
    input bit b,
    input bit c,
    input bit sum,
    input bit carry
  );
    bit expected_sum = 0;
    bit expected_carry = 0;
    
    expected_sum   = ((a ^ b) ^ c);
    expected_carry = (a & b) | (a & c) | (b & c);
    
    // self checking evaluation comparison -- expected Vs dut output
    if(expected_sum == sum) begin
      `uvm_info(get_type_name(), $sformatf("------------------- sum -- PASS -----------------"), UVM_LOW);
    end
    else begin
      `uvm_error(get_type_name(), $sformatf("-------------------sum -- FAIL -----------------(Expected = %0d | Actual = %0d)",expected_sum, sum));
    end
    
    if(expected_carry == carry) begin
      `uvm_info(get_type_name(), $sformatf("------------------- carry -- PASS -----------------"), UVM_LOW);
    end
    else begin
      `uvm_error(get_type_name(), $sformatf("-------------------carry -- FAIL -----------------(Expected = %0d | Actual = %0d)",expected_carry, carry));
    end
    
  endfunction
  
endclass

`endif