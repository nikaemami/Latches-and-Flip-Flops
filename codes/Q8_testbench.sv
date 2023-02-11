`timescale 1ns/1ns
module flpp_shiftreg_TB ();
	logic ssi=1,clk=1,rst=0;
	wire sso;
	wire [7:0]po;
	flipflop_shiftreg CUT6(ssi,clk,rst,sso,po);
	always #50 clk <= ~clk;
	initial begin
	#300 ssi=0;
	#300 ssi=1;
	#300 ssi=0;
	#300 ssi=1;
	#300 ssi=1;
	#300 rst=1;
	#300 ssi=0;
	#300 ssi=1;
	#300 $stop;
	end
endmodule