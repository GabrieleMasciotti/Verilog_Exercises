module mux(output logic z, input logic x,y,ic);

   assign //assegnamento continuo (ogni volta che cambia la parte destra la riassegna alla parte sinistra)

     z = (ic == 0 ? x : y);


endmodule // mux
