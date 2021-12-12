#.- Jugando con caracteres

	.include "servicios.asm"
	
	.text
	
	li t0, '2'
	
	#-- Imprimir el caracter almacenado en t0
	mv a0, t0
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimir el numero almacenado en t0
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall