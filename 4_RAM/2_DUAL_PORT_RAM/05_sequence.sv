// UVM - SEQUENCE

class sr_sequence extends uvm_sequence #(sr_transaction);
  
  // factory registration
  `uvm_object_utils(sr_sequence)
  sr_transaction trans;		// transaction handle
  
  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "sr_sequence");
    super.new(name);
  endfunction
  
  // task to generate stimuli according to constraint
  task body();
    `uvm_info("SEQUENCE", "Starting sequence items generation", UVM_LOW);
    
    repeat(DEPTH) begin
      trans = sr_transaction :: type_id :: create("trans");		// creating(memory(object) allocation) to the transaction
      
      start_item(trans);		// starting the sequence items -- send request -- wait dor grand from sequencer(wait sequencer & driver to get ready)
      
      if(!trans.randomize())	// after grand received -- randomize -- and sending item to sequencer
        `uvm_error("Sequence", "randomization failed");
   
      finish_item(trans);		// sending data to driver and wait for driver to send item done signal
    end
  endtask
  
endclass
