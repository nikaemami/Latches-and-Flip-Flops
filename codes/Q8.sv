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
module reset_flipflop (input d,clk,rst, output Q,Qp);
	wire Q1,Qp1,clkp,rstp,m;
	not #6 G1(rstp,rst);
	and #14 G2(m,d,rstp);
	D_Latch D1 (m,clk,Q1,Qp1);
	not #6 G3(clkp,clk);
	D_Latch D2 (Q1,clkp,Q,Qp);
endmodule
module flipflop_shiftreg (input si,clk,rst, output so, output [7:0]po);
	wire [8:0]q;
	assign q[8]=si;
	assign so=q[0];
	genvar i;
	generate
	   for (i=0 ; i<8; i=i+1) begin: flipflop_shiftregs
	   reset_flipflop flp(q[8-i],clk,rst,q[7-i]);
	   assign po[7-i]=q[7-i];
	   end
	endgenerate
endmodule
