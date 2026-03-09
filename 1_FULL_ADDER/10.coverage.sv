// UVM -- Coverage

`ifndef FA_COVERAGE	
`define FA_COVERAGE	

class fa_coverage extends uvm_subscriber #(fa_transaction);		// uvm factory base class for coverage
  
  // uvm factory registration
  `uvm_component_utils(fa_coverage)
  
  uvm_analysis_imp #(fa_transaction, fa_coverage) analysis_import;	// TLM analysis port from monitor
  
  fa_transaction trans;		// transaction handle
  
  // checking the stimuli covered test cases
  covergroup fulladder_cg;
    option.per_instance = 1;
    
    input_a : coverpoint trans.a;
    
    input_b : coverpoint trans.b;
    
    input_c : coverpoint trans.c;
    
    cross_inputs : cross input_a, input_b, input_c;			// individual inputs has been cross checked
    
  endgroup
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name, uvm_component parent);
    super.new(name, parent);
    fulladder_cg = new();			// memory allocation for covergroup
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    analysis_import = new("analysis_import", this);		// tlm port creation
  endfunction
 
  
  function void write(fa_transaction t);
    
    trans = t;
    fulladder_cg.sample();			// sampling the test stimuli and evaluating with the coverage group
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("Full Adder functional coverage = %0.2f%%",fulladder_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass

`endif