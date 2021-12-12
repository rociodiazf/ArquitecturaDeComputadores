#-- En este programa vamos a usar funciones ya hechas. Vamos a pedir una cadena al usuario y le vamos a calcular la
#-- longitud con la funcion len, y vamos a usar dos veces la funcion count para buscar si hay alguna 'a' 
#-- o alguna 'e'
	.include "servicios.asm"
	.eqv MAX 32

	.data
cad_1:	.space MAX
msg_1:	.string "\n Escribe aqui una palabra: "
msg_2:	.string "\n Longitud: "

	
	.text 
	
	#-- Pedimos la cadena de caracteres
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- Recogemso la frase
	la a0, cad_1
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a la funcion len que nos devuelve en a0 un int
	#-- Printeamos la longitud
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	#-- Llamamos a la funcion
	la a0, cad_1
	jal len
	#-- Printeamos el int que nos devuelve
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Como sabemos la funcion count ya nos da todo impreso entonces....
	#--- Llamamos a la fucnion para el caso de la 'a'
	la a0, cad_1
	li a1, 'a'
	jal count
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- LLamamos a la funcion para el caso de la 'e'
	la a0, cad_1
	li a1, 'e'
	jal count
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	
