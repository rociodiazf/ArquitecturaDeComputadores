#-- En este programa pediremos al usuario un numero entero. El programa llamará a una subrutina que printeará el numero
#-- de asteriscos indicados en un parametro que pasaremos a la subrutina
#-- La subrutina estará en un fichero distinto
	.include "servicios.asm"
	
	.data
msg_1:	.string "Escribe aqui el numero:"


	.text
	
	#-- Pedimos el numero
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos el numero
	li a7, READ_INT
	ecall
	
	#-- No movemos el resultado por que le tenemos que pasar a la subrutina en el registro a0 el numero de *
	
	jal linea
	
	#-- Terminamos
	li a7, EXIT
	ecall
	