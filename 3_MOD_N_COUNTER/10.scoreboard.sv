// UVM -- scoreboard

`ifndef CNT_SCOREBOARD_SV
`define CNT_SCOREBOARD_SV

class cnt_scoreboard extends uvm_scoreboard;
  
  `uvm_component_utils(cnt_scoreboard)
  
  uvm_analysis_imp #(cnt_transaction, cnt_scoreboard) analysis_import;
  
  static int count = 1;
  
  bit [WIDTH-1:0] expected_q;		// output selfcheck
  
//   event over;
  
  // default constructor
  function new(string name = "cnt_scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    analysis_import = new("analysis_import", this);
  endfunction
  
  function void write(cnt_transaction trans);
    
    bit 			reset_in;
    bit 			enable_in;
    bit [WIDTH-1:0] mod_n_in;
    bit 			up_down_in;
    bit [WIDTH-1:0] q_out;
    
    reset_in = trans.reset;
    enable_in = trans.enable;
    mod_n_in = trans.mod_n;
    up_down_in = trans.up_down;
    q_out = trans.q;
    
    `uvm_info(get_type_name(), $sformatf("%0s", trans.display()), UVM_LOW)
    
    self_checking(reset_in, enable_in, mod_n_in, up_down_in, q_out);		// calling comparison function
    
  endfunction
  
  // selfchecking comparison
  function void self_checking(
    input 			  reset,
    input 			  enable,
    input [WIDTH-1:0] mod_n,
    input 			  up_down,
    input [WIDTH-1:0] q			
  );
    
    int limit;
    limit = (mod_n == 0) ? (2**WIDTH) : mod_n;		// updataing current value
    
    // comparison
    if(q == expected_q) begin
      `uvm_info(get_type_name(), $sformatf("------------------- PASS -----------------"), UVM_LOW);
    end
    else begin
      `uvm_error(get_type_name(), $sformatf("------------------- FAIL -----------------(Expected = %0d | Actual = %0d)",expected_q, q));
    end
    
    // advance selfcheck to detect the next expected q
    if(reset) begin
      expected_q = 0;
    end
    else if(enable && (expected_q >= limit)) begin
      expected_q = up_down ? 0 : (limit[WIDTH-1:0]- 1);
    end
    
    else if(enable) begin
      if(up_down)			// up count
        expected_q = (expected_q + 1) % limit;
      
      else begin				// down count
        if(expected_q == 0)
          expected_q = limit - 1;
        else
          expected_q = expected_q - 1;
      end 
    end
    
    
    $display(" ----------------------------------------------------- %0d\n", count);
    count++;
    
//     ->over;		// trigger event
  endfunction
  
endclass

`endif
