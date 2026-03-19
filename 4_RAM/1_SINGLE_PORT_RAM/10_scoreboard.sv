// UVM -- SCOREBOARD

class sr_scoreboard extends uvm_scoreboard;
  
  // factory registration
  `uvm_component_utils(sr_scoreboard)
  
  uvm_analysis_imp #(sr_transaction, sr_scoreboard) analysis_import;		// analysis import for analysis port
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_scoreboard", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
    analysis_import = new("analysis_import", this);		// (object) memory allocation to analysis import -- arguments - instance and parent name 
  endfunction
  
  // single port ram memory
  reg [WIDTH-1:0]mem[int];			// associative array for depth of spram memory locations
  
  // implementation of the analysis port write method
  function void write(sr_transaction trans);
    
    bit 					enable;
    bit 					wr;
    bit [WIDTH-1:0]			datain;
    bit [$clog2(DEPTH)-1:0] address;
    bit [WIDTH-1:0]			dataout;
    
//     this.trans = trans;		// bouh handle are same

    // getting values from analysis port and storing to variable
    enable 	 = trans.en;
    wr 		 = trans.wr_en;
    datain 	 = trans.data_in;
    address  = trans.addr;
    dataout  = trans.data_out;
    
    `uvm_info("SCOREBOARD", $sformatf(" received to scoreboard = \n%0s", trans.sprint()), UVM_LOW);
//     $display("scoreboard : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time,  trans.en, trans.wr_en, trans.data_in, trans.addr, trans.data_out);
    
    self_check(enable, wr, datain, address, dataout);	// calling self check function
    
  endfunction
  
  // self checking condition
  function void self_check( 
    input bit 					  en, 
    input bit 					  wr_en,
    input bit [WIDTH-1:0] 	 	  data_in,
    input bit [$clog2(DEPTH)-1:0] addr,
    input bit [WIDTH-1:0] 	 	  data_out
  );
    bit [WIDTH-1:0] expected_data_out = 0;
    
    //   read first(read before write)
    if(en) begin
      expected_data_out = mem[addr];	// read only
      if(wr_en)
        mem[addr] 	= data_in;		// write
    end
    else 
      expected_data_out = 0;
        
    
    // write first(write and read next) 
//     if(en) begin
//       if(wr_en) begin
//         mem[addr] = data_in;		// write
//         expected_data_out = data_in;		// read -- write first read next
//       end
//       else
//         expected_data_out = mem[addr];	// read only
//     end
//     else
//       expected_data_out = 0;
    
    // self checking evaluation comparison -- expected Vs dut output
    if(expected_data_out == data_out) begin
      `uvm_info(get_type_name(), $sformatf("------------------- PASS -----------------\n"), UVM_LOW);
    end
    else begin
      `uvm_error(get_type_name(), $sformatf("------------------- FAIL -----------------(Expected = %0h)",expected_data_out));
    end
    
  endfunction
  
endclass