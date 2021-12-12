#-- En este programa vamos a implementar un codigo en python dado por el enunciado en el que 
#-- contamos la longitu de una palabra mediante recursividad. Le queitamos un bite a la plabra y vemos
#-- y le sumamos uno, asi hasta que no tengamos nada

	.include "servicios.asm"
	
	.eqv MAX 1024
	
	.data
msg_1:	.string "Escribe aqui la cadena: "
cad:	.space MAX
msg_2:	.string "Su longitud es: "

	.text
	#-- Pedimos una cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a la funcion len
	jal len
	
	mv s0, a0	#-- Para conservarlo
	
	#-- Imprimimos el resultado
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall