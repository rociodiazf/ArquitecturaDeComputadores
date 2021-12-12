	#------------------------------------------------------------------------------------------
	#---FUNCION CONVERSION STRING-NUMERO
	#------------------------------------------------------------------------------------------

	
	.globl atoi
	
atoi:
#-- En este programa pediremos al usuario una cadena de 10 caracteres de Máximo (11 bytes) y sacaremos por pantalla
#-- la conversion a entero
	.include "servicios.asm"
	.eqv E0 -48	#-- No a los numeros magicos
	.eqv E10 10
	
	.data

msg_2:  .string "\n El numero resultante es:"

	.text


	#-- Implementamos el algoritmo
	li t0, 0	#-- Inicilizamos el resultado parcial t0 == num == 0
	mv t1, a0	#-- Movemos lo que habia en t1 a a0, para trabajar con reg. temporales
	li t3 '\n'
	li t4, E10	#-- E10 == 10. De la multiplicacion
	li t6, '0'	#-- '0' refernecia para calcular los enteros
	
bucle:	#-- Iniciamos bucle
	lb t2, 0(t1)	#-- Leemos el caracter
	beq t2, t3, fin_bucle	#-- ¿Es fin de linea? No, seguimos. Sí, printeamos el resultado
	mul t0, t0, t4 	#-- num == num *10
	sub t5, t2, t6	#-- n = car - '0'
	add t0, t0, t5	#-- num = num + n
	addi t1, t1, 1	#-- Incrementamos t1 para apuntar al siguiente caracter
	
	b bucle
	
fin_bucle: 	#-- Printeamos la solucion
	
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Terminamos
	ret
	
	
	
	
