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
    if(!uvm_config_db #(virtual sr_intf #(WIDTH, DEPTH)) :: get(this,
                                                               "",
                                                               "vintf",
                                                                dv_vintf))
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
  task drive(sr_transaction tr);
    
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