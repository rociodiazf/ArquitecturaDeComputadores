#-- Escribir un programa en el que salga por el display el numero 3 

	.eqv LEDs 0xFFFF0010


	.eqv DIG1 0x06  #-- Digito nº1	(0110000 --> 0000110)
	.eqv DIG2 0x5B  #-- Digito nº2	(1101101 --> 1011011)
	.eqv DIG3 0x4F  #-- Digito nº3	(1111001 --> 1001111)
	.eqv DIG4 0x66	#-- Digito nº4	(0110011 --> 1100110)
	
	.text
	
	#-- Inicializamos los valores de las direcciones de memoria.
	li x5, LEDs	
	li x6, DIG3
	
	#-- Sacamos por el puerto de salida.
	sw x6, 0(x5)
	
#-- Terminar
	li a7, 10
	ecall
	
	