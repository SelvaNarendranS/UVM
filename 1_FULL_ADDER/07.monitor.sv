// UVM -- MONITOR

`ifndef FA_MONITOR_SV
`define FA_MONITOR_SV

class fa_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(fa_monitor)
  fa_transaction trans;			// transaction handle
  
  uvm_analysis_port #(fa_transaction) analysis_port;		// analysis port for store received data from dut
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_monitor", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  virtual fa_intf.tb vintf;		// virtual interface handle
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual fa_intf.tb) :: get(this,
                                                   "",
                                                   "vintf_tb",
                                                    vintf))
    `uvm_fatal("MONITOR","VIRTUAL INTERFACE MISSING");
    
    analysis_port = new("analysis_port", this);		// (object) memory allocation to analysis port -- arguments - instance and parent name 
  endfunction
  
  // run phase -- receiving signals from dut
  task run_phase(uvm_phase phase);
    forever begin
      trans = fa_transaction :: type_id :: create("trans");	// creating(memory(object) allocation) to the transaction
      
      sample(vintf);		// calling task to sample data from dut
      
      analysis_port.write(trans);	// writing the sampled data's into analaysis port
    end
  endtask
  
  // task sample - sample input and output from dut
  task sample(virtual fa_intf.tb vintf);

    #1;		// wait for dut to process and sample after stable output
    trans.a		= vintf.a;
    trans.b		= vintf.b;
    trans.c		= vintf.c;
    trans.sum	= vintf.sum;
    trans.carry	= vintf.carry;
    #2;
    
    `uvm_info(get_type_name(), $sformatf("%0s",trans.convert2string()), UVM_LOW);
     
//     `uvm_info("MONITOR", $sformatf(" sampled by monitor = \n%0s", tr.sprint()), UVM_LOW);
  endtask
  
endclass

`endif    