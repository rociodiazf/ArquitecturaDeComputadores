#-- En este ejercicio pediremos un numero de dos cifras al usuario (sin controlar errores) y lo convertiremos
#-- a entero mediante la formula num = (d1 - 48) * 10 + (d0 - 48).
	.include "servicios.asm"
	.eqv E0 -48	#-- No a los numeros magicos
	
	.data
msg_1:	.string "\n Escribe un numero de dos cifras:"
cad:	.space 3
msg_2:	.string "\n La solucion es:"

	.text
	#-- Pedimos el numero de dos cifras
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- Recogemos la cadena de caracteres
	la a0, cad
	li a1, 3
	li a7, READ_STRING
	ecall
	
	#-- Implementamos la formula.
	#--Sacamos los caracteres
	la t0, cad
	lb t1, 0(t0)	#-- t0 == d1
	addi t0, t0, 1	#-- Para pasar a la segunda posiccion
	lb t2, 0 (t0)	#-- t1 == d0
	#-- d0 - 48 == t3
	addi t3, t2, E0
	#-- d1 -48 == t4
	addi t4, t1, E0
	#-- (d1-48)*10 == t6
	li t5, 10
	mul t6, t4, t5
	#-- num == t6 + t3 == t0
	add t0, t6, t3
	
	#-- Printeamos el numero 
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	
	
	
	
