// Synchronous FIFO verification - design
module sync_fifo #(parameter WIDTH = 8, 
                   parameter DEPTH = 4) (
  // system
  input logic 				clk,
  input logic				reset,
  
  // input ports
  input logic				wr_enable,
  input logic 				rd_enable,
  input logic [WIDTH - 1:0] data_in,
  
  // output ports
  output logic [WIDTH -1:0]	data_out,
  output logic				full,
  output logic				empty
);
  
  // internal counter & memory
  logic [WIDTH - 1:0] mem[DEPTH - 1:0];
  logic [$clog2(DEPTH):0] wr_ptr;
  logic [$clog2(DEPTH):0] rd_ptr;
  
  // Write and read condition
  always @(posedge clk) begin
    if(reset) begin			// reset condition
      wr_ptr   <= 0;
      data_out <= 0;
      rd_ptr   <= 0;
    end
    else begin
      // write
      if(wr_enable && !full) begin
        mem[wr_ptr[$clog2(DEPTH)-1:0]] <= data_in;
        wr_ptr <= wr_ptr + 1'b1;
      end
      
      // read
      if(rd_enable && !empty) begin
        data_out <= mem[rd_ptr[$clog2(DEPTH)-1:0]];
        rd_ptr   <= rd_ptr + 1'b1;
      end
    end
  end
  
  // full & empty condition
  assign full  = ((wr_ptr[$clog2(DEPTH)-1:0]) == rd_ptr[$clog2(DEPTH)-1:0]) && (wr_ptr[$clog2(DEPTH)] != rd_ptr[$clog2(DEPTH)]);
  assign empty = wr_ptr == rd_ptr;
    
endmodule  

// https://www.edaplayground.com/x/eZ7s
