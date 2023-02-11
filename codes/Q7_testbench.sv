`timescale 1ns/1ns
module reset_flipflop_TB ();
	logic dd=1,clk=0,rst=1;
	wire qq,qp;
	reset_flipflop CUT5 (dd,clk,rst,qq,qp);
	always #40 clk <= ~clk;
	initial begin
	#300 dd=0;
	#300 dd=1;
	#300 rst=0;
	#300 dd=0;
	#300 dd=1;
	#300 rst=1;
	#300 dd=0;
	#300 $stop;
	end
endmodule
