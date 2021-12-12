#-- Ejemplo de conversion de una cadena de un digito a su numero correspondiente

	.include "servicios.asm"
	
	.text
	
	li t0, '2'	#-- t0 solo puede ser entr '0'-'9'
	
	sub t0, t0, t1	#-- t0 = t0 -t1
	
	#-- Terminar 
	li a7, EXIT
	ecall