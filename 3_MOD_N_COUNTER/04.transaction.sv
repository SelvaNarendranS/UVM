// UVM --- transaction

`ifndef CNT_TRANSACTION_SV
`define CNT_TRANSACTION_SV

class cnt_transaction extends uvm_sequence_item;
  
  // inputs
  rand bit 			   reset;
  rand bit 			   enable;
  rand bit [WIDTH-1:0] mod_n;
  rand bit 			   up_down;
  
  // output
  bit [WIDTH-1:0] q;
  
  // randomization of modes
  rand bit[2:0] modes; // 0 - up count (stable mod size)
  					   // 1 - down count (stable mod size)
  					   // 2 - up count (variavle mod size)
  					   // 3 - down count (variable mod size)
  					   // others - other all conditions
  
  rand bit [WIDTH-1:0] temp_up;
  rand bit [WIDTH-1:0] temp_down;
  bit first_time = 1;
  
  // constraints
  
  // default constraints if mode not selected
  constraint cnt_rst  {reset dist {0 := 70, 1 := 20};}
  constraint cnt_en   {enable dist {0 := 10, 1 := 90};}
  constraint cnt_mode { up_down dist {0 := 50, 1 := 50};}
  
  constraint cnt_mode_range {modes < 5;}		// randomize modes
  
  // constraint selective mode  ---- force setting
  constraint cnt_mode_select {
    mod_n > 0;
    
    if(modes == 0) {			// up --- stable mod size
      {reset, enable} == 2'b01;	
      up_down 		  == 1;			// up count
      if(!first_time)mod_n	== temp_up;
    }
    else if(modes == 1) {			// down   --- stable mod size
      {reset, enable} == 2'b01;	
      up_down 		  == 0;			// down count
      if(!first_time)mod_n	== temp_down;
    }
    else if(modes == 2) {			// up --- variable mod size
      {reset, enable} == 2'b01;	
      up_down 		  == 1;			// up count
      mod_n			!= temp_up;
    }
    else if(modes == 3) {			// down   --- variable mod size
      {reset, enable} == 2'b01;	
      up_down 		  == 0;			// down count
      mod_n			!= temp_down;
    }
  }
  
  function void post_randomize();
    if(up_down == 1) temp_up = mod_n;
    if(up_down == 0) temp_down = mod_n;
    
    first_time = 0;			// turning off to store mod value to temp
  endfunction
  
  // factory registration
  `uvm_object_utils_begin(cnt_transaction)
  `uvm_field_int(reset, UVM_ALL_ON)
  `uvm_field_int(enable, UVM_ALL_ON)
  `uvm_field_int(mod_n, UVM_ALL_ON)
  `uvm_field_int(up_down, UVM_ALL_ON)
  `uvm_field_int(q, UVM_ALL_ON)
  `uvm_object_utils_end
  
  // default constructor
  function new(string name = "cnt_transaction");
    super.new(name);
    endfunction
  
  function string display();
    return $sformatf("INPUT reset = %0d | enable = %0d | mod_n = %0d | up_down = %0d | OUTPUT: q = %0d", reset, enable, mod_n, up_down, q);
  endfunction
  
endclass

`endif
