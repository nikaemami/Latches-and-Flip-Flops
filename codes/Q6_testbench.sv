`timescale 1ns/1ns
module ms_flipflop_TB ();
	logic dd=1,clk=0;
	wire qq,qp;
	ms_flipflop CUT4(dd,clk,qq,qp);
	always #40 clk <= ~clk;
	initial begin
	#300 dd=0;
	#300 dd=1;
	#300 $stop;
	end
endmodule
