// UVM -- monitor

`ifndef CNT_MONITOR_SV
`define CNT_MONITOR_SV

class cnt_monitor extends uvm_monitor;
  
  `uvm_component_utils(cnt_monitor)		// factory registration
  cnt_transaction trans;			// transaction handle
  
  virtual cnt_intf #(WIDTH).sample vintf;		// virtual interface handle
  
  uvm_analysis_port #(cnt_transaction) analysis_port;		// analysis port TLM - port for passing sampled data's to scoreboard and coverage
  
  // default constructor
  function new(string name = "cnt_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- from modport
    if(!uvm_config_db #(virtual cnt_intf #(WIDTH).sample) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Virtual interface missing");		// stop the simulation with warning
    
    analysis_port = new("analysis_port", this);
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    forever begin
      trans = cnt_transaction :: type_id :: create("trans");		// object allocation by factory method
      
      sample_stimuli(vintf);			// calling task to sample the output from dut
      
      analysis_port.write(trans);		// passing transaction to the TLM port 
    end
  endtask
    
  task sample_stimuli(virtual cnt_intf #(WIDTH).sample vintf);
    @(vintf.cb_sample);
    
    trans.reset 	= vintf.cb_sample.reset;
    trans.enable 	= vintf.cb_sample.enable;
    trans.mod_n 	= vintf.cb_sample.mod_n;
    trans.up_down 	= vintf.cb_sample.up_down;
    trans.q 		= vintf.cb_sample.q;
    
    `uvm_info(get_type_name(), $sformatf("%0s", trans.display()), UVM_LOW)
    //     `uvm_info("MONITOR", $sformatf(" sampled by monitor = \n%0s", tr.sprint()), UVM_LOW);			--- to print in tabular format by using ptint method
    
  endtask
  
endclass

`endif
