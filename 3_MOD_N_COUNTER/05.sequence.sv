// uvm ---- sequence

`ifndef CNT_sequence_SV
`define CNT_sequence_SV

class cnt_sequence extends uvm_sequence #(cnt_transaction);
  
  `uvm_object_utils(cnt_sequence)		// factory registration
  cnt_transaction trans;				// transaction handle
  
  event over;
  
  bit [WIDTH-1:0] temp_up1;
  bit [WIDTH-1:0] temp_down1;
  static bit first_time = 1;
  
  // default constructor
  function new(string name = "cnt_sequence");
    super.new(name);
  endfunction
  
  task body();
    
    for(int i = 0; i <= ((2**WIDTH)+10); i++) begin
      trans = cnt_transaction :: type_id :: create("cnt_transaction");		// object allocation by factory method
    
      start_item(trans);		// start of the one stimuli generation
      
      if(!trans.randomize() with {
        if(!first_time) {
          temp_up == temp_up1;
		  temp_down == temp_down1;
        }
        if(i == 0) 					 reset == 1;		// reset condition
        else {
          if(i < WIDTH*WIDTH) 		   modes == 0;		// up -- stable
          else if(i < (WIDTH*WIDTH)*2) modes == 1;		// down -- stable
          else if(i < ((2**WIDTH)-(WIDTH*WIDTH)))  modes == 2;		// up -- variable
          else if(i < (2**WIDTH)) 	   modes == 3;		// down -- variable
          else 					       modes == 4;		// others mode not selected random generation
        }
      })
        `uvm_fatal(get_type_name(), "Randomization had not done");
        
        if(first_time == 1) begin
          temp_up1 = trans.temp_up;
          temp_down1 = trans.temp_down;
          first_time = 0;
        end
      
      finish_item(trans);			// end of the one stimuli generation
      `uvm_info(get_type_name(), $sformatf("%0s", trans.display()), UVM_LOW)
      
//       `uvm_do(trans); // macro for generation and end of stimuli
      
//       @over;
      
    end
  endtask
  
endclass

`endif
