`timescale 1ns/1ns
module DL_shiftreg_TB ();
	logic ssi=1,clk=1;
	wire [6:0]po;
	wire sso;
	DL_shiftreg CUT3(ssi,clk,po,sso);
	always #40 clk <= ~clk;
	initial begin
	#300 ssi=0;
	#300 ssi=1;
	#300 ssi=0;
	#300 ssi=1;
	#300 ssi=1;
	#300 $stop;
	end
endmodule
