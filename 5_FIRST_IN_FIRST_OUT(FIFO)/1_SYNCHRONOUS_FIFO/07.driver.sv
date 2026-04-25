// driver

`ifndef SYNC_FIFO_DRIVER_SV
`define SYNC_FIFO_DRIVER_SV

class sync_fifo_driver extends uvm_driver #(sync_fifo_transaction);
  
  `uvm_component_utils(sync_fifo_driver)		// factory registration
  sync_fifo_transaction trans;			// transaction handle
  
  virtual intf #(WIDTH, DEPTH) vintf;		// virtual interface handle
  
  // default constructor
  function new(string name = "sync_fifo_driver", uvm_component parent);
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
      seq_item_port.get_next_item(trans);		// getting generated stimuli grom generator
      
      drive_stimuli(trans);			// calling task to pass stimuli to dut
      
      seq_item_port.item_done();
      
    end
  endtask
  
  // driving the generated stimuli to the dut
  task drive_stimuli(sync_fifo_transaction tr);
    
    @(vintf.drive_cb);
    
    vintf.drive_cb.reset 	 <= tr.reset;
    vintf.drive_cb.wr_enable <= tr.wr_enable;
    vintf.drive_cb.rd_enable <= tr.rd_enable;
    vintf.drive_cb.data_in   <= tr.data_in;
    
    `uvm_info(get_type_name(), $sformatf("reset = %0d | wr_enable = %0d | rd_enable = %0d | data_in = %0d | data_out = %0d | full = %0d | empty = %0d", tr.reset, tr.wr_enable, tr.rd_enable, tr.data_in, tr.data_out, tr.full, tr.empty), UVM_LOW);
  endtask
  
endclass

`endif
