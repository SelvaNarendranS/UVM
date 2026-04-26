// UVM -- COVERAGE

class sync_fifo_coverage extends uvm_subscriber #(sync_fifo_transaction);
  
  `uvm_component_utils(sync_fifo_coverage)	// factory registration
  sync_fifo_transaction trans;			// transaction handle
   
  // coverage
  covergroup sync_fifo_cg;
    option.per_instance = 1;
    
    // covering reset, read and write enable
    WRITE : coverpoint trans.wr_enable;
    READ : coverpoint trans.rd_enable;
    RESET  : coverpoint trans.reset;
    
    // covering full and empty
    FULL : coverpoint trans.full;
    EMPTY : coverpoint trans.empty;
    
    // merging all conditions
    READ_WRITE : cross WRITE, READ;
    WRITE_FULL : cross WRITE, FULL;
    READ_EMPTY : cross READ, EMPTY;
    
  endgroup
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sync_fifo_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
    sync_fifo_cg = new();			// object allocation to coverage group
  endfunction
  
  virtual function void write(sync_fifo_transaction t);
    this.trans = t;				// assigning local class handle trans to the base class argument t
    sync_fifo_cg.sample();				// trigerring coverage exexution
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("SRAM functional coverage = %0.2f%%",sync_fifo_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass
