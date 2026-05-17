// uvm read driver

`ifndef ASYNC_FIFO_RD_DRIVER_SV
`define ASYNC_FIFO_RD_DRIVER_SV

class async_fifo_rd_driver extends uvm_driver #(async_fifo_rd_transaction);
  
  `uvm_component_utils(async_fifo_rd_driver)		// factory registration
  async_fifo_rd_transaction rd_trans;			// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;		// virtual interface handle
  
  // default constructor
  function new(string name = "async_fifo_rd_driver", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // getting values from database  --- by modport
    if(!uvm_config_db #(virtual intf #(WIDTH, DEPTH)) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Virtual interface missing");		// stop the simulation with warning
  
  endfunction
  
  // run phase
  task run_phase(uvm_phase phase);
    
    forever begin
      seq_item_port.get_next_item(rd_trans);		// getting generated stimuli grom generator
      
      drive_read_domain_stimuli(rd_trans);			// calling task to pass read domain stimuli to dut
      
      seq_item_port.item_done();
      
    end
  endtask
  
  // driving the generated write domain stimuli to the dut
  task drive_read_domain_stimuli(async_fifo_rd_transaction rd_tr);
    
    @(vintf.rd_cb_drive);
    
    vintf.rd_cb_drive.rd_rst 	<= rd_tr.rd_rst;
    vintf.rd_cb_drive.rd_en	    <= rd_tr.rd_en;
    
    `uvm_info(get_type_name(), $sformatf("%0s", rd_tr.convert2string()), UVM_LOW);
  endtask
  
endclass

`endif
