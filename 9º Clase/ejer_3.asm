#-- En este programa pediremos al usuario un numero entero. El programa llamará a una subrutina con dos parametros. Uno
#-- el caracter a repetir y el otro el numerod e iteraciones
#-- La subrutina estará en un fichero distinto
	.include "servicios.asm"
	
	.data
msg_1:	.string "Escribe aqui el numero:"
msg_2:	.string "Dime el caracter que vamso a iterar:"


	.text
	
	#-- Pedimos el char
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos el char
	li a7, READ_CHAR
	ecall
	
	#-- Movemos el char a s0 temporalmente
	mv s0, a0
	
	#-- Salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Pedimos el numero
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos el numero
	li a7, READ_INT
	ecall
	
	#-- Recolocamos los argumentos
	mv a1, a0	#-- Numero de iteraciones
	mv a0, s0	#-- Caracter a iterar
	
	jal linea
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
