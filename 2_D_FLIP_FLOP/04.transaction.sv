// UVM --- transaction

`ifndef DFF_TRANSACTION_SV
`define DFF_TRANSACTION_SV

class dff_transaction extends uvm_sequence_item;
  
  rand bit rst;
  rand bit d;
  bit q;
  bit q_bar;
  
  constraint dff_rst {rst dist {0 := 70, 1 := 20};}
  constraint dff_d {d dist {0 := 50, 1 := 50};}
  
  // factory registration
  `uvm_object_utils(dff_transaction)
  
  // default constructor
  function new(string name = "dff_transaction");
    super.new(name);
    endfunction
  
  function string display();
    return $sformatf("INPUT rst = %0d | d = %0d | OUTPUT: q = %0d | q_bar = %0d", rst, d, q, q_bar);
  endfunction
  
endclass

`endif