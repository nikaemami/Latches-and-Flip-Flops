`timescale 1ns/1ns
module D_Latch (input d,clk, output Q,Qp);
	wire dp,n,dpp,clkp,j,k;
	not #6 G1(n,d);
	nand #8 G2(dpp,n,n);
	nand #8 G3(dp,d,d);
	nand #8 G4(clkp,clk,clk);
	nand #8 G5(j,dpp,clkp);
	nand #8 G6(k,dp,clkp);
	nand #8 G7(Qp,k,Q);
	nand #8 G8(Q,j,Qp);
endmodule
