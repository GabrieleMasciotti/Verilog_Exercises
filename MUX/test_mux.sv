module test_mux();   //non gli diamo parametri perchè questo qui è il nostro main che deve creare un'istanza dell'altro modulo e metterci degli ingressi e farci vedere un'uscita

   logic my_x;
   logic my_y;    //potevamo anche scrivere "reg" e poi i nomi
   logic my_ic;

   logic my_z;    //oppure "wire" z

   mux miomux(my_z, my_x, my_y, my_ic);

   initial   //quando ti accendo fai questo

     begin

	$dumpfile("provamux.vcd");
	$dumpvars;    //ogni volta che cambio le variabili mi fa vedere che succede
	
	
	my_x = 0;
	my_y = 0;
	my_ic = 1;

	#10   //aspetta 10 unità di tempo

	  my_x = 1;

	#10

	  my_ic = 0;
	

	#10
	
	$finish;    //finisce la presentazione
	
	
     end

endmodule // test_mux

