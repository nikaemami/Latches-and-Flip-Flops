`timescale 1ns/1ns
module LFSR_8 (input clk,rst,ld, input [7:0]ld_data, output logic [7:0]po);
	logic feedback;
	logic [7:0]lfsr_o;
	always@(posedge clk,posedge rst)begin
	   if(rst)
	     po = 8'b0;
	   else if(ld)
	     lfsr_o <= ld_data;
	   else
	     lfsr_o <= {feedback,lfsr_o[7:1]};
	end
	assign feedback = lfsr_o[7]^lfsr_o[6]^lfsr_o[3]^lfsr_o[0];
	genvar i;
	for(i=7;i>=0;i=i-1) begin
		assign po[i]=lfsr_o[i];
	end
endmodule

