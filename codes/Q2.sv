`timescale 1ns/1ns
module SR_Latch_TB ();
	logic ss=1,rr=0,clk=0;
	wire qq,qp;
	SRLatch CUT1(ss,rr,clk,qq,qp);
	always #40 clk <= ~clk;
	initial begin
	#200 rr=1;
	#200 ss=0;
	#200 rr=0;ss=1;
	#200 ss=0;
	#200 $stop;
	end
endmodule
