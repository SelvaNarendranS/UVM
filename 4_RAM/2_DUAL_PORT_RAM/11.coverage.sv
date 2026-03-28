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
    `uvm_info("COVERAGE", $sformatf("SPRAM functional coverage = %0.2f%%",spram_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass




// overriting(the base class) extended class from the single port ram to dual port ram

class dr_coverage extends sr_coverage;
  
  `uvm_component_utils(dr_coverage)	// factory registration
  dr_transaction dr_trans;			// transaction handle
   
  
  // coverage
  covergroup cg_dram;
  // overall enable
    ENABLE : coverpoint dr_trans.en{
      bins active_high = {1};
      bins active_low = {0};
    }
    
    // write/ read Port A
    prt_a : coverpoint dr_trans.wr_en {
      bins awr_write = {1};
      bins awr_read = {0};
    }
    
    // write/ read Port B
    prt_b : coverpoint dr_trans.b_wr {
      bins bwr_write = {1};
      bins bwr_read = {0};
    }
    
    // Port A address coverage
    prta_addr : coverpoint dr_trans.addr {
      bins corner = {0, [DEPTH-2:DEPTH-1]};			// boundary condition
      bins middle = {[1:DEPTH-3]};				// other conditions
    }
    
    // Port B address coverage
    prtb_addr : coverpoint dr_trans.b_addr {
      bins corner = {0, [DEPTH-2:DEPTH-1]};			// boundary condition
      bins middle = {[1:DEPTH-3]};				// other conditions
    }
    
    // cross each other 
    prt_crossing : cross prt_a, prt_b;
    
    // cross collision coverage checking
    collision : cross prt_a, prt_b, prta_addr, prtb_addr {
      bins addr_same = collision with (dr_trans.addr == dr_trans.b_addr);
     
      ignore_bins ignore_others = collision with (dr_trans.addr != dr_trans.b_addr);
    }
    
    // cross avoid global enable at disable condition
    ignore_disable : cross ENABLE, prt_a, prt_b, prta_addr, prtb_addr {
      bins ignore_enable_low = binsof( ENABLE.active_low);
    }
        
  endgroup
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_sequencer", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
    cg_dram = new();			// object allocation to coverage group
  endfunction
  
  virtual function void write(sr_transaction t);
    
    if (!$cast(dr_trans, t)) begin
      `uvm_error("TYPE_MISMATCH", "Traansaction received is not of type dr_transaction")
    end else begin
      cg_dram.sample();				// trigerring coverage exexution
    end
    
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("DPRAM functional coverage = %0.2f%%",cg_dram.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass
