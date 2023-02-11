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
module DL_shiftreg (input si,clk, output [6:0]po, output so);
	D_Latch D7 (si,clk,po[6]);
	D_Latch D6 (po[6],clk,po[5]);
	D_Latch D5 (po[5],clk,po[4]);
	D_Latch D4 (po[4],clk,po[3]);
	D_Latch D3 (po[3],clk,po[2]);
	D_Latch D2 (po[2],clk,po[1]);
	D_Latch D1 (po[1],clk,po[0]);
	D_Latch D0 (po[0],clk,so);
endmodule

