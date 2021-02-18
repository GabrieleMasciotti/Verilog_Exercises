module m1(output z, input [1:2]x, input clock);
   reg [1:2] stato;
   reg [1:2] nuovostato;

   parameter s0 = 2'b00;
   parameter s1 = 2'b01;
   parameter s2 = 2'b11;
   parameter s3 = 2'b10;
   parameter a = 2'b00;
   parameter b = 2'b01;
   parameter c = 2'b11;

   initial
     stato = s0;

   always @(posedge clock)
    stato <= nuovostato;
   
   always @(*)
    #2 begin
	case(stato)
	  s0: nuovostato = (x==a ? s1 : s0);
	  s1: nuovostato = (x==b ? s2 : (x==a ? s1 : s0));
	  s2: nuovostato = (x==b ? s3 : (x==a ? s1 : s0));
	  s3: nuovostato = s0;
	endcase // case (stato)
     end

   assign
     z = ((stato==s3 && x==a) ? 1 : 0);
   
endmodule // m1
