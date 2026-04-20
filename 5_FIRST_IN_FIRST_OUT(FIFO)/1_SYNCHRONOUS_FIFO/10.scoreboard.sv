// UVM -- SCOSCOREBOARD
`ifndef SYNC_FIFO_SCOREBOARD_SV
`define SYNC_FIFO_SCOREBOARD_sv

class sync_fifo_scoreboard extends uvm_scoreboard;
  
  // factory registration
  `uvm_component_utils(sync_fifo_scoreboard)
  
  uvm_analysis_imp #(sync_fifo_transaction, sync_fifo_scoreboard) analysis_import;		// TLM port analysis import for analysis port
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sync_fifo_scoreboard", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
     analysis_import = new("analysis_import", this);		// (object) memory allocation to analysis import -- arguments - instance and parent name 
  endfunction
  
  // selfcheck fifo memory
  longint fifo[$:DEPTH - 1];
  
  // implementation of the analysis port write method
  function void write(sync_fifo_transaction trans);
    
    bit	rst;
    bit	wr_en;
    bit	rd_en;
    bit [WIDTH-1:0]datain;
    bit	[WIDTH-1:0]dataout;
    bit full1;
    bit empty1;
    

    // getting values from analysis port and storing to variable
    rst 	   = trans.reset;
    wr_en 	   = trans.wr_enable;
    rd_en 	   = trans.rd_enable;
    datain   = trans.data_in;
    dataout = trans.data_out;
    full1   = trans.full;
    empty1  = trans.empty;
    
    
    `uvm_info(get_type_name(), $sformatf("reset = %0d | wr_enable = %0d | rd_enable = %0d | data_in = %0d | data_out = %0d | full = %0d | empty = %0d", reset, wr_enable, rd_enable, data_in, data_out, full, empty), UVM_LOW);
    
    self_check(rst, wr_en, rd_en, datain, dataout, full1, empty1);	// calling self check function
    
  endfunction
  
  // self checking condition
  function void self_check( 
    input bit reset, 
    input bit wr_enable,
    input bit rd_enable,
    input bit [WIDTH-1:0] data_in,
    input bit [WIDTH-1:0] data_out,
    input bit full,
    input bit empty
  );
    bit [WIDTH - 1 : 0]		expected;
    bit exp_full;
    bit exp_empty;
    int 				    count;
    bit [$clog2(DEPTH) - 1:0] wr_ptr;
    bit [$clog2(DEPTH) - 1:0] rd_ptr;

    // expected evaluation
    $display("%0d", count);
      
      if(trans.rst) begin			// reset condition
        wr_ptr   = 0;
        expected = 0;
        rd_ptr   = 0;
      end
      
      // Write condition
    else if(wr_enable && !exp_full) begin
        fifo.push_back(data_in);
      	wr_ptr = wr_ptr + 1'b1;
      end
      
      // read condition 
    else if(trans.rd_enable && !exp_empty) begin
        expected = fifo.pop_front();
        rd_ptr = rd_ptr + 1'b1;
      end
      
      // full & empty condition
      exp_full  = (wr_ptr + 1'b1) == rd_ptr;
      exp_empty = wr_ptr == rd_ptr;
      
      if(trans.rd_en)begin
        if(expected == data_out) begin
          $display("--------------------------------------");
          $display("           data out - PASS");  
          $display("--------------------------------------");
        end
        else begin
          $display("--------------------------------------");
          $display("           data out - FAIL");  
          $display("--------------------------------------");
        end
      end
      
    if(full == exp_full) begin
        $display("--------------------------------------");
        $display("           full - PASS");  
        $display("--------------------------------------");
      end
      else begin
        $display("--------------------------------------");
        $display("           full - FAIL");  
        $display("--------------------------------------");
      end
      
    if(empty == exp_empty) begin
          $display("--------------------------------------");
        $display("           empty - PASS");  
          $display("--------------------------------------");
        end
        else begin
          $display("--------------------------------------");
          $display("         empty - FAIL");  
          $display("--------------------------------------");
        end
      
      count++;
    
  endfunction
  
endclass


`endif
