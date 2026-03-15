// uvm ---- sequence

`ifndef DFF_sequence_SV
`define DFF_sequence_SV

class dff_sequence extends uvm_sequence #(dff_transaction);
  
  `uvm_object_utils(dff_sequence)		// factory registration
  dff_transaction trans;				// transaction handle
  
  event over;
  
  // default constructor
  function new(string name = "dff_sequence");
    super.new(name);
  endfunction
  
  task body();
    repeat(10) begin
      trans = dff_transaction :: type_id :: create("dff_transaction");		// object allocation by factory method
    
      start_item(trans);		// start of the one stimuli generation
      
      if(!trans.randomize())
        `uvm_error(get_type_name(), "Randomization had not done");
      
      finish_item(trans);			// end of the one stimuli generation
      `uvm_info(get_type_name(), $sformatf("%0s", trans.display()), UVM_LOW)
      
//       `uvm_do(trans); // macro for generation and end of stimuli
      
//       @over;
      
    end
  endtask
  
endclass

`endif