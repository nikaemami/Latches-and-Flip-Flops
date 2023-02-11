`timescale 1ns/1ns
module SRLatch (input s,r,clk, output Q,Qp);
	wire j,k,sp,rp,clkp;
	nand #8 G1(sp,s,s);
	nand #8 G2(rp,r,r);
	nand #8 G3(clkp,clk,clk);
	nand #8 G4(j,sp,clkp);
	nand #8 G5(k,rp,clkp);
	nand #8 G6(Qp,k,Q);
	nand #8 G7(Q,j,Qp);
endmodule
