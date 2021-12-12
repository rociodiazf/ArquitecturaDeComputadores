#-- En este programa pediremos una cadena de caracteres y la vamos a cifrar con una constante k
#-- finalmente esa cadena la imprimiremos

	.include "servicios.asm"
	
	.eqv L_CAD 64	#-- Longitud de la cadena
	.eqv K 5	#-- Constante de incriptacion de la cadena

	.data
	
msg_1:	.string "Inserte la cadena a codificar: "
cad:	.space L_CAD

	.text
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a1, L_CAD
	li a7, READ_STRING
	ecall
	
	#-- Ciframos la cadena con un bucle
	li t1, '\n'
	
bucle:	
	lb t0, 0(a0)	#-- Cargamos el valor del caracter en t0
	beq t0, t1, fin_bucle	#-- En caso de que sea igual a \0 terminamos la codificacion
	addi t0, t0, K	#-- Codificamos el valor sumandole la constante K
	sb t0 (a0)	#-- Guardamos el caracter cifrado donde estaba el otro
	addi a0, a0, 1	#-- Pasamos a la siguiente posicion de memoria
	b bucle

fin_bucle:
	#-- Printeamos la nueva cadena de caracteres codificada
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	
	
	
	