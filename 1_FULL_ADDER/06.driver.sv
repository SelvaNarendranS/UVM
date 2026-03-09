// UVM -- DRIVER

`ifndef FA_DRIVER_SV
`define FA_DRIVER_SV

class fa_driver extends uvm_driver #(fa_transaction);
  
  // factory registration
  `uvm_component_utils(fa_driver)
  fa_transaction trans;			// transaction handle
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_driver", uvm_component parent);	// getting arguments of class instance and parent name
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
  task drive(fa_transaction tr);
    
    vintf.a = tr.a;
    vintf.b = tr.b;
    vintf.c = tr.c;
    
    `uvm_info(get_type_name(), $sformatf("%0s",tr.convert2string()), UVM_LOW);
    #2;		// delay for data get stable
  endtask
  
endclass

`endif