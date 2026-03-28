// overriding (the base class) extended class from the single port ram to dual port ram

class dr_scoreboard extends uvm_scoreboard;
  
  // factory registration
  `uvm_component_utils(dr_scoreboard)
  
    uvm_analysis_imp #(dr_transaction, dr_scoreboard) analysis_import;		// analysis import for analysis port
  
  // Dual port ram memory
  reg [WIDTH-1:0] mem[int];			// associative array for depth of dpram memory locations
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_scoreboard", uvm_component parent);
    super.new(name, parent);
    analysis_import = new("analysis_import", this);
  endfunction
  
  // Dual port ram memory
  reg [WIDTH-1:0]mem[int];			// associative array for depth of dpram memory locations
  
  // implementation of the analysis port write method
  virtual function void write(dr_transaction tr);
    
    // port A
    bit 					pt_a_en;
    bit 					pt_a_wr;
    bit [$clog2(DEPTH)-1:0] pt_a_addr;
    bit [WIDTH-1:0] 		pt_a_data_in;
    bit [WIDTH-1:0]			pt_a_data_out;
        
    // port B
    bit 					pt_b_en;
    bit 					pt_b_wr;
    bit [$clog2(DEPTH)-1:0] pt_b_addr;
    bit [WIDTH-1:0] 		pt_b_data_in;
    bit [WIDTH-1:0]			pt_b_data_out;
        
    // getting values from the analysis import and storing to variable
    pt_a_en 		= tr.en;
    pt_a_wr			= tr.wr_en;
    pt_a_addr 		= tr.addr;
    pt_a_data_out 	= tr.data_out;
    pt_a_data_in 	= tr.data_in;
    pt_b_en 		= tr.b_en;
    pt_b_wr			= tr.b_wr;
    pt_b_addr 		= tr.b_addr;
    pt_b_data_in 	= tr.b_data_in;
    pt_b_data_out 	= tr.b_data_out;
    
//     `uvm_info(get_type_name(), $sformatf(" received to scoreboard = \n%0s", trans.sprint()), UVM_LOW);
    $display("scoreboard mode0 : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, pt_a_en, pt_a_wr, pt_a_data_in, pt_a_addr, pt_a_data_out);
    $write ("| en = %0d | b_wr_en = %0d | b_data_in = %0h | b_addr = %0h | b_data_out = %0h", pt_b_en, pt_b_wr, pt_b_data_in, pt_b_addr, pt_b_data_out);
    
    
    self_checking(pt_a_en, pt_a_wr, pt_a_addr, pt_a_data_in, pt_a_data_out, pt_b_en, pt_b_wr, pt_b_addr, pt_b_data_in, pt_b_data_out);		// calling self check function to check expected output
    
  endfunction
  
  virtual function void self_checking(
      
    // port A
    input 					  a_en,
    input 					  a_wr,
    input [$clog2(DEPTH)-1:0] a_addr,
    input [WIDTH-1:0] 		  a_data_in,
    input [WIDTH-1:0]		  a_data_out,
        
    // port B
    input 					  b_en,
    input 					  b_wr,
    input [$clog2(DEPTH)-1:0] b_addr,
    input [WIDTH-1:0] 		  b_data_in,
    input [WIDTH-1:0]	      b_data_out
  );
    
    // expected output variable
    bit [WIDTH-1:0] a_dataout_expected;
    bit [WIDTH-1:0] b_dataout_expected;
    
    if(MODE == 0) begin
    // read first(read before write)
    if(a_en && b_en) begin		// read first
      a_dataout_expected = (mem.exists(a_addr)) ? mem[a_addr] : '0;
      b_dataout_expected = (mem.exists(b_addr)) ? mem[b_addr] : '0;
    
      // write priority setting
      if((a_wr && b_wr) && (a_addr == b_addr)) begin
        mem[a_addr] = a_data_in;			// port A has highest priority
      end
      else begin
        if(a_wr)
          mem[a_addr] = a_data_in;		// port A write
        if(b_wr)
          mem[b_addr] = b_data_in;		// port B write
      end
    end
    else begin
      a_dataout_expected = '0;
      b_dataout_expected = '0;
    end
    end
    // self checking evaluation comparison -- expected Vs dut output
    else begin
      // write first(write before read)
    if(a_en && b_en) begin
      // write priority setting
      if((a_wr && b_wr) && (a_addr == b_addr)) begin
        mem[a_addr] 	   = a_data_in;			// port A has highest priority - write
        a_dataout_expected = a_data_in;
        b_dataout_expected = a_data_in;			// read
      end
      
      else begin
        // port A
        if(a_wr) begin
          mem[a_addr] 		 = a_data_in;		// port A write
          a_dataout_expected = a_data_in;
        end
        else
          a_dataout_expected = (mem.exists(a_addr)) ? mem[a_addr] : '0;	// read only
        
        // port B
        if(b_wr) begin
          mem[b_addr] 		 = b_data_in;		// port B write
          b_dataout_expected = b_data_in;
        end
        else
          b_dataout_expected = (mem.exists(b_addr)) ? mem[b_addr] : '0;	// read only
      end
    end
    
    else begin
      a_dataout_expected = '0;
      b_dataout_expected = '0;
    end
    end
    
    
    // self checking evaluation comparison -- expected Vs dut output
    // port A comparison
    if(a_dataout_expected === a_data_out) begin		// case equality comparison
      $display("-------------------------------------------------------------");
      `uvm_info(get_type_name(),"             PORT A - PASS                   ", UVM_LOW);
      $display("-------------------------------------------------------------");
    end
    else begin
      $display("--------------------------------------------------------------");
      `uvm_error(get_type_name(),$sformatf("             PORT A - FAIL                   a_dataout_expected = %0d | a_data_out = %0d", a_dataout_expected, a_data_out));
      $display("--------------------------------------------------------------");
    end
    
    // port B comparison
    if(b_dataout_expected === b_data_out) begin			// 4 state comparison
      $display("-------------------------------------------------------------");
      `uvm_info(get_type_name(),"             PORT B - PASS                   ", UVM_LOW);
      $display("-------------------------------------------------------------");
    end
    else begin
      $display("--------------------------------------------------------------");
      `uvm_error(get_type_name(),$sformatf("             PORT B - FAIL                   b_dataout_expected = %0d | b_data_out = %0d", b_dataout_expected, b_data_out));
      $display("--------------------------------------------------------------");
    end
  endfunction   
  
endclass
