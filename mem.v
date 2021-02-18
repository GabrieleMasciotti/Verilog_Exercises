module mem(output [N-1:0]z1,
	   output [N-1:0] z2, 
	   input [N-1:0]  in,
	   input [2:0] 	  addr1, // leggere primo operando 
	   input [2:0] 	  addr2, // leggere secondo operando
	   input [2:0] 	  addr3, // scrivere 
	   input 	  enable,
	   input clock);

   parameter N = 8;
   
   reg [N-1:0] 		 M[8];

   always @(posedge clock)
     begin
	if(enable)
	  M[addr3] = in;
     end

   assign
     z1 = M[addr1];
   assign
     z2 = M[addr2];
   
endmodule
