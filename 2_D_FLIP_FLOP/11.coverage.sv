// UVM -- coverage

`ifndef DFF_COVERAGE_SV
`define DFF_COVERAGE_SV

class dff_coverage extends uvm_subscriber #(dff_transaction);
  
  `uvm_component_utils(dff_coverage) 		// factory registration
  dff_transaction trans;		// transaction handle
  
  uvm_analysis_imp #(dff_transaction, dff_coverage) analysis_import;
  
  covergroup dff_cg;
    option.per_instance = 1;
    
    reset : coverpoint trans.rst;
    d_input : coverpoint trans.d;
    
    // crossing together
    cross_input : cross reset, d_input;
    
  endgroup
    
  // default constructor
  function new(string name = "dff_coverage", uvm_component parent);
    super.new(name, parent);
    dff_cg = new();		// creating object to covergroup
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    analysis_import = new("analysis_import", this);		// tlm port creation 
  endfunction
  
  // sampling datas from TLM ports
  function void write(dff_transaction t);
    trans = t;
    dff_cg.sample();		// sampleing and evaluation by govergroup
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    `uvm_info("COVERAGE", $sformatf("D flip flop functional coverage = %0.2f%%",dff_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass

`endif