// write driver

`ifndef ASYNC_FIFO_WR_DRIVER_SV
`define ASYNC_FIFO_WR_DRIVER_SV

class async_fifo_wr_driver extends uvm_driver #(async_fifo_wr_transaction);
  
  `uvm_component_utils(async_fifo_wr_driver)		// factory registration
  async_fifo_wr_transaction wr_trans;			// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;		// virtual interface handle
  
  // default constructor
  function new(string name = "async_fifo_wr_driver", uvm_component parent);
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
      seq_item_port.get_next_item(wr_trans);		// getting generated stimuli grom generator
      
      drive_write_domain_stimuli(wr_trans);			// calling task to pass stimuli to dut
      
      seq_item_port.item_done();
      
    end
  endtask
  
  // driving the generated stimuli to the dut
  task drive_write_domain_stimuli(async_fifo_wr_transaction wr_tr);
    
    @(vintf.wr_cb_drive);
    
    vintf.wr_cb_drive.wr_rst 	<= wr_tr.wr_rst;
    vintf.wr_cb_drive.wr_en	    <= wr_tr.wr_en;
    vintf.wr_cb_drive.data_in   <= wr_tr.data_in;
    
    `uvm_info(get_type_name(), $sformatf("%0s", wr_tr.convert2string()), UVM_LOW);
  endtask
  
endclass

`endif
