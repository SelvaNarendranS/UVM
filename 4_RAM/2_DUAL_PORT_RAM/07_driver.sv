// UVM -- DRIVER

class sr_driver extends uvm_driver #(sr_transaction);
  
  // factory registration
  `uvm_component_utils(sr_driver)
  sr_transaction trans;			// transaction handle
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_driver", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  virtual sr_intf #(WIDTH, DEPTH) dv_vintf;		// virtual interface handle
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: get(this, "", "vintf", dv_vintf))
    `uvm_fatal("DRIVER","VIRTUAL INTERFACE MISSING");
  endfunction
  
  // run phase -- sending stimuli data to dutas packet from sequencer
  task run_phase(uvm_phase phase);
    forever begin
      seq_item_port.get_next_item(trans);		// sending request to the sequencer for next stimuli
      
      drive(trans);		// calling drive task to driving dut input signals
      
      seq_item_port.item_done();		// ackowledgement signal to sequencer -- received items from sequence
      
    end
  endtask
  
  
  // task drive -- drive input signals to dut
  virtual task drive(sr_transaction tr);
    
    @(dv_vintf.cb_driver);
    dv_vintf.cb_driver.en 		<= tr.en;
    dv_vintf.cb_driver.wr_en 	<= tr.wr_en;
    dv_vintf.cb_driver.data_in 	<= tr.data_in;
    dv_vintf.cb_driver.addr 	<= tr.addr;
    
//     `uvm_info("DRIVER", $sformatf(" Driver to dut stimuli = \n%0s", tr.sprint()), UVM_LOW);
    $write ("driver : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, trans.en, trans.wr_en, trans.data_in, trans.addr, trans.data_out);
    
    if(tr.en) begin
      if(tr.wr_en)
        $write("\t-- enable and write enable ON\n");
      else
        $write("\t-- write enable OFF\n");
    end
    else
      $write("\t-- enable OFF\n");
    
  endtask
  
endclass



// overriding(the base class) extended class from the single port ram to dual port ram

class dr_driver extends sr_driver;
  
  // factory registration
  `uvm_component_utils(dr_driver)
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "dr_driver", uvm_component parent);	// getting arguments of class instance and parent name
    super.new(name, parent);
  endfunction
  
  // virtual interface
  virtual dr_intf #(WIDTH, DEPTH) dr_dv_vintf;		// virtual interface handle
  
  // build phase -- (building)configuring the component  -- building virtual interface to receive handle - of virtual interface from top testbench
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db #(virtual dr_intf #(WIDTH, DEPTH)) :: get(this, "", "dr_vintf", dr_dv_vintf))
      `uvm_fatal(get_type_name(),"DUAL PORT VIRTUAL INTERFACE MISSING");
  endfunction
    
  // task drive -- drive input signals to dut
  // virtual task overriting of base class method
  
//   virtual task drive(sr_transaction tr);		-- even through i use virtual the base class only receives the base class transaction so if i need to pass the newly added transaction ports we need to use the "$cast" to pass the port - B transaction the base class by upcasting
  
  virtual task drive(sr_transaction tr);
    dr_transaction dr_tr;
    
    // upcast to pass the port B values --- accept port B values
    if(!$cast(dr_tr, tr))
      `uvm_fatal(get_type_name(), "$cast failed factory override failed");	

    @(dr_dv_vintf.cb_driver);
    
    // port A
    dr_dv_vintf.cb_driver.a_en 		<= dr_tr.en;
    dr_dv_vintf.cb_driver.a_wr 		<= dr_tr.wr_en;
    dr_dv_vintf.cb_driver.a_data_in <= dr_tr.data_in;
    dr_dv_vintf.cb_driver.a_addr 	<= dr_tr.addr;
    
    // port B
    dr_dv_vintf.cb_driver.b_en 		<= dr_tr.b_en;
    dr_dv_vintf.cb_driver.b_wr 		<= dr_tr.b_wr;
    dr_dv_vintf.cb_driver.b_data_in <= dr_tr.b_data_in;
    dr_dv_vintf.cb_driver.b_addr 	<= dr_tr.b_addr;
    
    //     `uvm_info("extended DRIVER", $sformatf("Driver to dut stimuli = \n%0s", tr.sprint()), UVM_LOW);
    $write ("extended driver : %0t | en = %0d | wr_en = %0d | data_in = %0h | addr = %0h | data_out = %0h", $time, dr_tr.en, dr_tr.wr_en, dr_tr.data_in, dr_tr.addr, dr_tr.data_out);
    $write ("b_en = %0d | b_wr_en = %0d | b_data_in = %0h | b_addr = %0h | b_data_out = %0h", dr_tr.b_en, dr_tr.b_wr, dr_tr.b_data_in, dr_tr.b_addr, dr_tr.b_data_out);
    
    if(dr_tr.en && dr_tr.wr_en)
      $write("\t-- enable and port A write enable ON\n");
    else if(dr_tr.b_en && dr_tr.b_wr)
      $write("\t-- enable and port B write enable ON\n");
    else if(!dr_tr.en && dr_tr.wr_en)
      $write("\t-- port A write enable & enable OFF\n");
    else if(!dr_tr.b_en && dr_tr.b_wr)
      $write("\t-- port B write enable & enable OFF\n");
    
  endtask
    
endclass
