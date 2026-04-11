// UVM -- agent

`ifndef CNT_AGENT_SV
`define CNT_AGENT_SV

class cnt_agent extends uvm_agent;
  
  `uvm_component_utils(cnt_agent)		// factory registration
  cnt_transaction trans;		// transaction handle
  
  // class handles
  cnt_sequencer seqr;
  cnt_driver drv;
  cnt_monitor mon;
  
  // default constructor
  function new(string name = "agent", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE) begin
      seqr = cnt_sequencer :: type_id :: create("seqr", this);
      drv = cnt_driver :: type_id :: create("drv", this);
    end
    mon = cnt_monitor :: type_id :: create("mon", this);
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
