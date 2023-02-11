`timescale 1ns/1ns
module D_Latch_TB ();
	logic dd=1,clk=0;
	wire qq,qp;
	D_Latch CUT2(dd,clk,qq,qp);
	always #40 clk <= ~clk;
	initial begin
	#100 dd=0;
	#100 dd=1;
	#100 $stop;
	end
endmodule
