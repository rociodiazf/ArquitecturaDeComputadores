#-- EN este prgrama vamos a pedir un numero en una cadena que luego 
#-- pasaremos a un programa que lo convertira en int y y nos devolvera el valor

	.include "servicios.asm"
	.eqv MAX 32
	
	.data

msg_1:	.string "\nEscribe aqui el numero: "
cad:	.space MAX

msg_2:	.string "\nEl numero entero es: "

	.text
	#-- Pedimos el numero de la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a conv
	jal conv
	
	#-- Interpretamos la solucion
	#-- Printeaos a0 que es donde esta el numero
	li a7, PRINT_INT
	ecall
	#-- Terminamos
	li a7, EXIT
	ecall
