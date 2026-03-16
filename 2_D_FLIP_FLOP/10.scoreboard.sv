// UVM -- scoreboard

`ifndef DFF_SCOREBOARD_SV
`define DFF_SCOREBOARD_SV

class dff_scoreboard extends uvm_scoreboard;
  
  `uvm_component_utils(dff_scoreboard)
  
  uvm_analysis_imp #(dff_transaction, dff_scoreboard) analysis_import;
  
  static int count = 1;
  
  event over;
  
  // default constructor
  function new(string name = "dff_scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    analysis_import = new("analysis_import", this);
  endfunction
  
  function void write(dff_transaction trans);
    
    bit rst_in;
    bit d_in;
    bit q_out;
    bit q_bar_out;
    
    rst_in = trans.rst;
    d_in = trans.d;
    q_out = trans.q;
    q_bar_out = trans.q_bar;
    
    `uvm_info(get_type_name(), $sformatf("%0s", trans.display()), UVM_LOW)
    
    self_checking(rst_in, d_in, q_out, q_bar_out);		// calling comparison function
    
  endfunction
  
  // selfchecking comparison
  function void self_checking(
    input rst,
    input d,
    input q,
    input q_bar
  );
    
    bit expected_q, expected_q_bar;
    
    if(rst)
      expected_q = 0;
    else
      expected_q = d;
    
    expected_q_bar = ~expected_q;
    
    // comparison
    if((q == expected_q) && (q_bar == expected_q_bar)) begin
      `uvm_info(get_type_name(), $sformatf("------------------- PASS -----------------"), UVM_LOW);
    end
    else begin
      `uvm_error(get_type_name(), $sformatf("------------------- FAIL -----------------(Expected = %0d | Actual = %0d)",expected_q, q));
    end
    
    $display(" ----------------------------------------------------- %0d\n", count);
    count++;
    
    ->over;		// trigger event
  endfunction
  
endclass

`endif