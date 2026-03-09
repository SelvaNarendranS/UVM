// UVM - SEQUENCE

`ifndef FA_SEQUENCE_SV
`define FA_SEQUENCE_SV

class fa_sequence extends uvm_sequence #(fa_transaction);
  int count = 1;

  // factory registration
  `uvm_object_utils(fa_sequence)
  fa_transaction trans;		// transaction handle

  // default new constructor -- to allocate object(memory allocation)
  function new(string name = "fa_sequence");
    super.new(name);
  endfunction

  // pre_start
  task pre_start();
    `uvm_info(get_type_name(),"Inside the pre start", UVM_MEDIUM)
  endtask

  // automatic runs by compailer when task body is called
  task pre_body();
    `uvm_info(get_type_name(),"Inside the pre body", UVM_MEDIUM)
  endtask

  // task to generate stimuli according to constraint
  task body();
    `uvm_info(get_type_name(), "Starting sequence items generation\n", UVM_LOW);

    repeat(10) begin
      trans = fa_transaction :: type_id :: create("trans");		// creating(memory(object) allocation) to the transaction

      start_item(trans);		// starting the sequence items -- send request -- wait dor grand from sequencer(wait sequencer & driver to get ready)

      if(!trans.randomize())	// after grand received -- randomize -- and sending item to sequencer
        `uvm_error(get_type_name(), "randomization failed");
      `uvm_info(get_type_name(), $sformatf("%0s",trans.convert2string()), UVM_LOW);

      finish_item(trans);		// sending data to driver and wait for driver to send item done signal
      $display("---------------------------------------------------------- %0d\n", count);
      count++;

      //     `uvm_do(trans);		// macros to start sequence
    end
  endtask

  // post start
  task post_start();
    `uvm_info(get_type_name(),"Inside the post start", UVM_MEDIUM)
  endtask

  // post body
  task post_body();
    `uvm_info(get_type_name(),"Inside the post body", UVM_MEDIUM)
  endtask

endclass

`endif