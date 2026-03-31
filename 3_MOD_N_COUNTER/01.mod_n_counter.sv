 //UVM -- DESIGN --- mod-N counter verification - design

module mod_N_counter #(parameter WIDTH = 8) (		// a fixed counter size
  
  input 				 clk, 
  input 				 reset,
  input 				 enable,
  input [WIDTH-1 :0] 	 mod_n,		// limit of the counter
  input 			  	 up_down,	// up = 1, down = 0
  output reg [WIDTH-1:0] q			// output 
);
  
  wire [WIDTH-1:0] psnt_limit = (mod_n == 0) ? ({WIDTH{1'b1}}) : mod_n;		// loading current limit -- continuously 
  
  always @(posedge clk) begin
    if(reset) begin
      q <= 0;			
    end
    else begin
      if(enable) begin
        if(up_down) begin		// up counting
          if(q >= psnt_limit-1)
            q <= 0;				// reset the counter
          else
            q <= q + 1;			// increment counter
        end
        
        else begin 				// down counting
          if(q == 0)
            q <= psnt_limit-1;				// reset the counter
          else
            q <= q - 1;			// decrement counter
        end
      end
    end
  end
  
endmodule

// https://edaplayground.com/x/rWtu
