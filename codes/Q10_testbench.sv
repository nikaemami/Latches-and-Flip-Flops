`timescale 1ns/1ns
module LFSR_TB();
	logic clk=1,rst=0,ld=0;
	logic [7:0]ld_data=8'b0;
	wire[7:0]po;
	LFSR_8 CUT_10(clk,rst,ld,ld_data,po);
	always #20 clk <= ~clk;
	initial begin
	#300 ld_data=8'd43;
	#300 ld=1;
	#100 ld=0;
	#12000 $stop;
	end
endmodule
