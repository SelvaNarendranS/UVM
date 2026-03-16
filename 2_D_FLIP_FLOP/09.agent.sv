// UVM -- agent

`ifndef DFF_AGENT_SV
`define DFF_AGENT_SV

class dff_agent extends uvm_agent;
  
  `uvm_component_utils(dff_agent)		// factory registration
  dff_transaction trans;		// transaction handle
  
  // class handles
  dff_sequencer seqr;
  dff_driver drv;
  dff_monitor mon;
  
  // default constructor
  function new(string name = "agent", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE) begin
      seqr = dff_sequencer :: type_id :: create("seqr", this);
      drv = dff_driver :: type_id :: create("drv", this);
    end
    mon = dff_monitor :: type_id :: create("mon", this);
  endfunction
  
  // connect phase
  function void connect_phase(uvm_phase phase);
    if(get_is_active == UVM_ACTIVE) begin
      if(drv != null && seqr != null)
        drv.seq_item_port.connect(seqr.seq_item_export);		// connecting sequence and drv TLM port together
      else
        `uvm_error(get_type_name(),"Driver and sequencer missing memory allocation");
    end
  endfunction
  
endclass

`endif