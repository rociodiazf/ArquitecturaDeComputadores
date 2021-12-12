#-- Sacar el numero que el ususario elija por el display de 7 segmentos.

	.eqv READ_INT 5
	.eqv DISPLAY 0xFFFF0010
	

	.text
	
	#-- Pedimos el numero. Miramos el servicio
	li a7, READ_INT
	ecall
	
	#-- Leemos la direccion de memoria del display
	li s0, DISPLAY
	
	#-- Sacamos el numero por el puerto del display
	sw a0, 0(s0)
	
	#-- Terminamos 
	li a7, 10
	ecall
	
	
	