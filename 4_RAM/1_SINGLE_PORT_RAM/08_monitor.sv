// UVM -- MONITOR

class sr_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(sr_monitor)
  sr_transaction trans;			// transaction handle
  
  uvm_analysis_port #(sr_transaction) analysis_port;		// analysis port for store received data from dut
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_monitor", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  virtual sr_intf #(WIDTH, DEPTH) mon_vintf;		// virtual interface handle
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: get(this,
                                                               "",
                                                               "vintf",
                                                               mon_vintf))
    `uvm_fatal("MONITOR","VIRTUAL INTERFACE MISSING");
    
    analysis_port = new("analysis_port", this);		// (object) memory allocation to analysis port -- arguments - instance and parent name 
  endfunction
  
  // run phase -- receiving signals from dut
  task run_phase(uvm_phase phase);
    forever begin
      trans = sr_transaction :: type_id :: create("trans");	// creating(memory(object) allocation) to the transaction
      
      sample(mon_vintf);		// calling task to sample data from dut
      
      analysis_port.write(trans);	// writing the sampled data's into analaysis port
    end
  endtask
  
  // task sample - sample input and output from dut
  task sample(virtual sr_intf #(WIDTH, DEPTH) mon_vintf);
    @(mon_vintf.cb_monitor);
    
    trans.en		= mon_vintf.cb_monitor.en;
    trans.wr_en		= mon_vintf.cb_monitor.wr_en;
    trans.data_in	= mon_vintf.cb_monitor.data_in;
    trans.addr		= mon_vintf.cb_monitor.addr;
    trans.data_out	= mon_vintf.cb_monitor.data_out;
    
    $display("monitor : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, trans.en, trans.wr_en, trans.data_in, trans.addr, trans.data_out);
    
//     `uvm_info("MONITOR", $sformatf(" sampled by monitor = \n%0s", tr.sprint()), UVM_LOW);
  endtask
  
endclass
    