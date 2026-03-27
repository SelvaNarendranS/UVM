// UVM -- MONITOR

class sr_monitor extends uvm_monitor;
  
  // factory registration
  `uvm_component_utils(sr_monitor)
  sr_transaction trans;			// transaction handle
  
  uvm_analysis_port #(sr_transaction) analysis_port;		// analysis port for store received data from dut
  
   virtual sr_intf #(WIDTH, DEPTH) mon_vintf;		// virtual interface handle
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_monitor", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: get(this, "", "vintf", mon_vintf))
    `uvm_fatal("MONITOR","VIRTUAL INTERFACE MISSING");
    
    analysis_port = new("analysis_port", this);		// (object) memory allocation to analysis port -- arguments - instance and parent name 
  endfunction
  
  // run phase -- receiving signals from dut
  task run_phase(uvm_phase phase);
    forever begin
      trans = sr_transaction :: type_id :: create("trans");	// creating(memory(object) allocation) to the transaction
      
      sample(trans);		// calling task to sample data from dut
      
      analysis_port.write(trans);	// writing the sampled data's into analaysis port
    end
  endtask
  
  // task sample - sample input and output from dut
  virtual task sample(sr_transaction tr);
    @(mon_vintf.cb_monitor);
    
    tr.en		= mon_vintf.cb_monitor.en;
    tr.wr_en	= mon_vintf.cb_monitor.wr_en;
    tr.data_in	= mon_vintf.cb_monitor.data_in;
    tr.addr		= mon_vintf.cb_monitor.addr;
    tr.data_out	= mon_vintf.cb_monitor.data_out;
    
    $display("base monitor : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, tr.en, tr.wr_en, tr.data_in, tr.addr, tr.data_out);
    
//     `uvm_info("MONITOR", $sformatf(" sampled by monitor = \n%0s", tr.sprint()), UVM_LOW);
  endtask
  
endclass




// overriding(the base class) extended class from the single port ram to dual port ram
    
class dr_monitor extends sr_monitor;
  
  // factory registration
  `uvm_component_utils(dr_monitor)
  
  virtual dr_intf #(WIDTH, DEPTH) dr_mon_vintf;		// virtual interface handle
  
  uvm_analysis_port #(dr_transaction) dr_analysis_port;		// analysis port for store received data from dut
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_monitor", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual dr_intf #(WIDTH, DEPTH)) :: get(this, "", "dr_vintf", dr_mon_vintf)) begin
      `uvm_fatal(get_type_name(),"DUAL PORT VIRTUAL IN)TERFACE MISSING");
    end
    dr_analysis_port = new("dr_analysis_port", this);
    
  endfunction
  
  // task sample - sample input and output from dut
  virtual task sample(sr_transaction tr);
    dr_transaction dr_tr;			// transaction handle

    // upcast to pass the port B values --- accept port B values
    if(!$cast(dr_tr, tr))
      `uvm_fatal(get_type_name(), "$cast failed factory override failed");
    
    @(dr_mon_vintf.cb_monitor);
    
    // port A
    dr_tr.en		= dr_mon_vintf.cb_monitor.a_en;
    dr_tr.wr_en		= dr_mon_vintf.cb_monitor.a_wr;
    dr_tr.data_in	= dr_mon_vintf.cb_monitor.a_data_in;
    dr_tr.addr		= dr_mon_vintf.cb_monitor.a_addr;
    dr_tr.data_out	= dr_mon_vintf.cb_monitor.a_data_out;
    
    // port B
    dr_tr.b_en			= dr_mon_vintf.cb_monitor.b_en;
    dr_tr.b_wr 			= dr_mon_vintf.cb_monitor.b_wr;
    dr_tr.b_data_in		= dr_mon_vintf.cb_monitor.b_data_in;
    dr_tr.b_addr		= dr_mon_vintf.cb_monitor.b_addr;
    dr_tr.b_data_out	= dr_mon_vintf.cb_monitor.b_data_out;
    
    $display("extended monitor : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, dr_tr.en, dr_tr.wr_en, dr_tr.data_in, dr_tr.addr, dr_tr.data_out);
    $write (" b_en = %0d | b_wr_en = %0d | b_data_in = %0h | b_addr = %0h | b_data_out = %0h", dr_tr.b_en, dr_tr.b_wr, dr_tr.b_data_in, dr_tr.b_addr, dr_tr.b_data_out);
    
    //     `uvm_info("Extended MONITOR", $sformatf(" sampled by extended monitor = \n%0s", tr.sprint()), UVM_LOW);
    
    analysis_port.write(tr);		// write base transaction
    dr_analysis_port.write(dr_tr);		// write extended transaction
  endtask
  
endclass
