// UVM -- COVERAGE

`ifndef ASYNC_FIFO_COVERAGE_SV
`define ASYNC_FIFO_COVERAGE_SV

// declaring distintly named callbacks
// `uvm_analysis_imp_decl(_wr)
// `uvm_analysis_imp_decl(_rd)

// uvm_component is used to get 2 transactions (read & write )
class async_fifo_coverage extends uvm_component;
  
  `uvm_component_utils(async_fifo_coverage)	// factory registration
  
  uvm_analysis_imp_wr #(async_fifo_wr_transaction, async_fifo_coverage) wr_cov_export;
  uvm_analysis_imp_rd #(async_fifo_rd_transaction, async_fifo_coverage) rd_cov_export;
  
  // write domain
  bit 			 wr_rst;
  bit 			 wr_en;
  bit [WIDTH-1:0]data_in;
  bit 			 full;
  
  // read domain
  bit			 rd_rst;
  bit			 rd_en;
  bit [WIDTH-1:0]data_out;
  bit 			 empty;
   
  // coverage
  covergroup async_fifo_cg;
    option.per_instance = 1;
    
    // covering reset, read and write enable
    CP_WRITE_EN : coverpoint wr_en {
      bins inactive = {0};
      bins active   = {1};
    }
    
    CP_READ_EN : coverpoint rd_en {
      bins inactive = {0};
      bins active   = {1};
    }
    
    CP_WR_RESET : coverpoint wr_rst {
      bins inactive = {0};
      bins active   = {1};
    }
    
    CP_RD_RESET : coverpoint rd_rst {
      bins inactive = {0};
      bins active   = {1};
    }
    
    // covering full and empty
    CP_FULL  : coverpoint full {
      bins not_full = {0};
      bins full_cond   = {1};
    }
    
    CP_EMPTY : coverpoint empty {
      bins not_empty = {0};
      bins empty_cond   = {1};
    }
    
    // merging all conditions
    // read and write enable
    RD_WR_EN : cross CP_WRITE_EN, CP_READ_EN;
    
    // write enable full and read enable and empty
    WR_EN_FULL : cross CP_WRITE_EN, CP_FULL;
    RD_EN_EMPTY : cross CP_READ_EN, CP_EMPTY;
    
    FULL_RD_EN : cross CP_FULL, CP_READ_EN;
    EMPTY_WR_EN : cross CP_EMPTY, CP_WRITE_EN;
    
    // reset
    WR_RD_RST : cross CP_WR_RESET, CP_RD_RESET;
    
  endgroup
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "async_fifo_coverage", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
    async_fifo_cg = new();			// object allocation to coverage group
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    wr_cov_export = new("wr_cov_export", this);
    rd_cov_export = new("rd_cov_export", this);
  endfunction
    
  // write domain sampling
  virtual function void write_wr(async_fifo_wr_transaction t);
    wr_rst	= t.wr_rst;
    wr_en	= t.wr_en;
    data_in	= t.data_in;
    full	= t.full;
    async_fifo_cg.sample();
  endfunction
  
  // read domain sampling
  virtual function void write_rd(async_fifo_rd_transaction t);
    rd_rst	 = t.rd_en;
    data_out = t.empty;
    rd_rst	 = t.rd_en;
    data_out = t.empty;
    async_fifo_cg.sample();
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("SRAM functional coverage = %0.2f%%",async_fifo_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass

`endif
