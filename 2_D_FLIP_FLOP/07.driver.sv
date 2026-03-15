// UVM -- driver

`ifndef DFF_DRIVER_SV
`define DFF_DRIVER_SV

class dff_driver extends uvm_driver #(dff_transaction);
  
  `uvm_component_utils(dff_driver)		// factory registration
  dff_transaction trans;			// transaction handle
  
  virtual dff_intf.drive vintf;		// virtual interface handle
  
  // default constructor
  function new(string name = "dff_driver", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- by modport
    if(!uvm_config_db #(virtual dff_intf.drive) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Virtual interface missing");		// stop the simulation with warning
  
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    
    forever begin
      seq_item_port.get_next_item(trans);		// getting generated stimuli grom generator
      
      drive_stimuli(trans);			// calling task to pass stimuli to dut
      
      seq_item_port.item_done();
      
    end
  endtask
  
  // driving the generated stimuli to the dut
  task drive_stimuli(dff_transaction tr);
    
    @(vintf.cb_drive);
    
    vintf.cb_drive.rst <= tr.rst;
    vintf.cb_drive.d   <= tr.d;
    
    `uvm_info(get_type_name(), $sformatf("%0s", tr.display()), UVM_LOW)
  endtask
  
endclass

`endif