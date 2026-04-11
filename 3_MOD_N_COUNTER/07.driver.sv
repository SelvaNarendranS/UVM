// UVM -- driver

`ifndef CNT_DRIVER_SV
`define CNT_DRIVER_SV

class cnt_driver extends uvm_driver #(cnt_transaction);
  
  `uvm_component_utils(cnt_driver)		// factory registration
  cnt_transaction trans;			// transaction handle
  
  virtual cnt_intf #(WIDTH).drive vintf;		// virtual interface handle
  
  // default constructor
  function new(string name = "cnt_driver", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- by modport
    if(!uvm_config_db #(virtual cnt_intf #(WIDTH).drive ) :: get(this, "", "vintf", vintf))
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
  task drive_stimuli(cnt_transaction tr);
    
    @(vintf.cb_drive);
    
    vintf.cb_drive.reset 	<= tr.reset;
    vintf.cb_drive.enable   <= tr.enable;
    vintf.cb_drive.mod_n 	<= tr.mod_n;
    vintf.cb_drive.up_down  <= tr.up_down;
    
    $display("\t-------------------------- %0s ------------------------",    (tr.modes == 0) ? "up stable" : 
             (tr.modes == 1) ? "down stable" :
             (tr.modes == 2) ? "up variable" :
             (tr.modes == 3) ? "down variable" : "pure random");
    `uvm_info(get_type_name(), $sformatf("%0s", tr.display()), UVM_LOW)
  endtask
  
endclass

`endif
