// UVM -- COVERAGE

class sr_coverage extends uvm_subscriber #(sr_transaction);
  
  `uvm_component_utils(sr_coverage)	// factory registration
  sr_transaction trans;			// transaction handle
   
  // coverage
  covergroup spram_cg;
    option.per_instance = 1;
    
    // covering enable and write enable
    ENABLE : coverpoint trans.en;
    WRITE  : coverpoint trans.wr_en;
    
    // covering address
    ADDRESS : coverpoint trans.addr {
      bins zero 	 = {'0};		// zero to all bits -- min starting
      bins one  	 = {'1};		// 1 to all bits -- max ending 
      bins remaining = default;
//       bins remaining = {[1: ((1 << WIDTH)-2)]};		// remaining all possible address 
    }
    
    // merging all conditions
    MRG : cross ENABLE, WRITE, ADDRESS;
    
  endgroup
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
    spram_cg = new();			// object allocation to coverage group
  endfunction
  
  virtual function void write(sr_transaction t);
    this.trans = t;				// assigning local class handle trans to the base class argument t
    spram_cg.sample();				// trigerring coverage exexution
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("SRAM functional coverage = %0.2f%%",spram_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass