#-- En este programa vamos a pedir al usuario una cadena y un caracter y se lo vamos a pasar
#-- a una funcion que cuente los caracteres que habiamos pedido como segundo argumento.x-special/nautilus-clipboard

	.include "servicios.asm"
	.eqv MAX 32
	
	.data 
msg_1:	.string "\nEscriba aqui la cadena: "
cad:	.space MAX
msg_2:	.string "\nEscribe el caracter a contar:"
msg_3:	.string "\nEl numeor de repeticiones es"
	
	.text
	#-- Pedimos la cadena
	#-- Escribimos el msg_1
	la a0, msg_1 
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Pedimos y recogemos el caracter
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_CHAR
	ecall
	
	mv a1, a0	#-- Ponemos el char como 2º parametro
	la a0, cad	#-- El puntero a la cadena como el primero
	
	#-- Llamamos a la funcion
	jal count_char
	
	#-- Guardamos la solucion en un registro temporal
	mv t0, a0
	
	#-- Imprimimos el valor de respuesta
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	
	
	
	
	