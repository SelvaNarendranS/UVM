// UVM -- scoreboard 

`ifndef ASYNC_FIFO_SCOREBOARD_SV
`define ASYNC_FIFO_SCOREBOARD_SV

`uvm_analysis_imp_decl(_wr)
`uvm_analysis_imp_decl(_rd)

class async_fifo_scoreboard extends uvm_scoreboard;
  
  // factory registration
  `uvm_component_utils(async_fifo_scoreboard)
  
  uvm_analysis_imp_wr #(async_fifo_wr_transaction, async_fifo_scoreboard) wr_analysis_import;		// TLM port analysis import for analysis port
  uvm_analysis_imp_rd #(async_fifo_rd_transaction, async_fifo_scoreboard) rd_analysis_import;
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "async_fifo_scoreboard", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    wr_analysis_import = new("wr_analysis_import", this);		// (object) memory allocation to analysis import -- arguments - instance and parent name
    rd_analysis_import = new("rd_analysis_import", this);
  endfunction
  
  // selfcheck fifo memory
  bit [WIDTH-1:0] fifo[$];
  int 			  count;
  bit [$clog2(DEPTH):0] wr_ptr;
  bit [$clog2(DEPTH):0] rd_ptr;
  
  bit [WIDTH-1:0] expected_data_out;
  bit 			  exp_full;
  bit 			  exp_empty;
  
  // write 
  bit 			 wr_reset;
  bit 			 wr_enable;
  bit [WIDTH-1:0]datain;
  bit 			 full1;
  
  // read
  bit			 rd_reset;
  bit			 rd_enable;
  bit [WIDTH-1:0]dataout;
  bit 			 empty1;
  
  // implementation of the write analysis port --- write domain side
  function void write(async_fifo_wr_transaction wr_trans);

    // getting values from analysis port and storing to variable
    wr_reset 	= wr_trans.wr_rst;
    wr_enable 	= wr_trans.wr_en;
    datain  	= wr_trans.data_in;
    full1   	= wr_trans.full;
    
    if(wr_reset == 0) begin
      fifo.delete();			// cleared the fifo
      wr_ptr = 0;
      `uvm_info(get_type_name(), "WRITE domain reset triggered fifo got cleared", UVM_LOW);
      return;
    end
    
    if(wr_enable && !full1) begin
      fifo.push_back(datain);
      wr_ptr = wr_ptr + 1'b1;
      `uvm_info(get_type_name(), $sformatf("WRITE: wr_reset = %0d | wr_enable = %0d | data_in = %0d | full = %0d", wr_reset, wr_enable, datain, full1), UVM_LOW);
    end
        
  endfunction
  
  // implementation of the read analysis port --- read domain side
  function void write(async_fifo_rd_transaction rd_trans);

    // getting values from analysis port and storing to variable
    rd_reset 	= rd_trans.rd_rst;
    rd_enable 	= rd_trans.wr_en;
    dataout  	= rd_trans.data_out;
    empty1   	= rd_trans.empty;
    
    if(rd_reset == 0) begin
      fifo.delete();			// cleared the fifo
      rd_ptr = 0;
      `uvm_info(get_type_name(), "READ domain reset triggered fifo got cleared", UVM_LOW);
      return;
    end
    
    if(wr_enable && !empty1) begin
      if(fifo.size() == 0) begin
        `uvm_error(get_type_name(), " FIFO Underflow ");
      end
      else begin
        expected_data_out = fifo.pop_front();
        rd_ptr = rd_ptr + 1'b1;
        `uvm_info(get_type_name(), $sformatf("READ: rd_reset = %0d | rd_enable = %0d | data_out = %0d | empty = %0d", rd_reset, rd_enable, dataout, empty1), UVM_LOW);
      end
        
      compare();
    end
        
  endfunction
  
  // self checking condition
  function void compare();

    // expected evaluation
    $display("%0d", count);
      
      // full & empty condition
      exp_full  = ((wr_ptr[$clog2(DEPTH)-1:0]) == rd_ptr[$clog2(DEPTH)-1:0]) && (wr_ptr[$clog2(DEPTH)] != rd_ptr[$clog2(DEPTH)]);
    exp_empty = (wr_ptr == rd_ptr);
      
      // checking data_out last cycle
    if(expected_data_out == dataout) begin
        $display("--------------------------------------");
        $display("           data out - PASS");  
        $display("--------------------------------------");
      end
      else begin
        $display("--------------------------------------");
        $display("           data out - FAIL --- expected = %0d | got = %0d", expected_data_out, dataout);  
        $display("--------------------------------------");
      end
      
    if(full1 == exp_full) begin
        $display("--------------------------------------");
        $display("           full - PASS");  
        $display("--------------------------------------");
      end
      else begin
        $display("--------------------------------------");
        $display("           full - FAIL  expected=%0d got=%0d", exp_full, full1);  
        $display("--------------------------------------");
      end
      
    if(empty1 == exp_empty) begin
          $display("--------------------------------------");
        $display("           empty - PASS");  
          $display("--------------------------------------");
        end
        else begin
          $display("--------------------------------------");
          $display("         empty - FAIL   expected=%0d got=%0d", exp_empty, empty1);  
          $display("--------------------------------------");
        end
    end
      
      count++;
    
  endfunction
  
endclass


`endif
