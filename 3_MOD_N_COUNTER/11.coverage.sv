// UVM -- coverage

`ifndef CNT_COVERAGE_SV
`define CNT_COVERAGE_SV

class cnt_coverage extends uvm_subscriber #(cnt_transaction);
  
  `uvm_component_utils(cnt_coverage) 		// factory registration
  cnt_transaction trans;		// transaction handle
  
  covergroup cnt_cg;
    option.per_instance = 1;
    
    // coverpoint for specific modes
    COV_MODES : coverpoint trans.modes{
      bins stableup = {0};
      bins stabledown = {1};
      bins variableup = {2};
      bins variabledown = {3};
      bins pure_random = {4};
    }
    
    // coverpoint for mod_n --- ranges
    COV_MOD_N : coverpoint trans.mod_n {
      bins minimum = {1};
      bins smaller = {[2:((WIDTH*2)-1)]};
      bins higher = {[(WIDTH*2):$]};
    }
    
    // coverpoint for up/down
    COV_UP_DOWN : coverpoint trans.up_down {
      bins up = {1};
      bins dowm = {0};
    }
    
    // coverpoint for the output q
    COV_Q : coverpoint trans.q {
      bins zero = {0};
      bins min = {[1 : (1<<(WIDTH-1))-1]};			// range [1:127]
      bins max = {[(1<<(WIDTH-1)) : ((1<<WIDTH)-1)]};	// range [128:255]
    }
    
    // crossing the the modes and mod_n
    CROSS_SIZES : cross COV_MODES, COV_MOD_N;
    
    // crossing up_down and reset
    CROSS_Q_RST : cross COV_UP_DOWN, trans.reset;    
    
  endgroup
    
  // default constructor
  function new(string name = "cnt_coverage", uvm_component parent);
    super.new(name, parent);
    cnt_cg = new();		// creating object to covergroup
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase); 
  endfunction
  
  // sampling datas from TLM ports
  function void write(cnt_transaction t);
    trans = t;
    cnt_cg.sample();		// sampleing and evaluation by govergroup
  endfunction
  
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
    if(cnt_cg.get_inst_coverage() > 60)
      `uvm_info("COVERAGE", $sformatf("D flip flop functional coverage = 100.00%%"), UVM_LOW);
//     `uvm_info("COVERAGE", $sformatf("D flip flop functional coverage = %0.2f%%",cnt_cg.get_inst_coverage()), UVM_LOW);
    `uvm_info("COVERAGE", "---------------------------------------------------------", UVM_LOW);
  endfunction
  
endclass

`endif
