`timescale 1ns/1ns
module shiftreg_always (input si,clk,rst, output so,output logic [7:0]po);
	assign so=po[0];	
	always@(posedge clk,posedge rst)begin
	   if(rst)
	     po <= 8'b0;
	   else
	     po <= {si,po[7:1]};
	end
endmodule
