#-- Pediremos al usuario dos numeros y le diremos si cumplen la condicion de mayor, menor o iguales
	.include "servicios.asm"
	
	.data

	#-- Las entradas de los numeros
n1:	.string "Escribe n1:"
n2:	.string "Escribe n2:"

	#-- Las posibles salidas 
ig:	.string "n1 == n2"
ma:	.string "n1 > n2"
me:	.string "n1 < n2"

	.text
	#-- Pedimos los numeros
	#-- Numero 1
	la a0, n1
	li a7, PRINT_STRING 
	ecall
	
	li a7, READ_INT
	ecall
	mv t0, a0
	
	#-- Numero 2
	la a0, n2
	li a7, PRINT_STRING 
	ecall
	
	li a7, READ_INT
	ecall
	mv t1, a0
	
	#-- Empezamos las comparaciones
	beq t0, t1 ,iguales
	bge t0, t1, mayor
	blt t0, t1, menor
	
iguales:
	#-- En caso de que sesan iguales
	la a0, ig
	li a7, PRINT_STRING
	ecall
	b fin_programa

mayor:
	#-- En caso de que n1 > n2
	la a0, ma
	li a7, PRINT_STRING
	ecall
	b fin_programa
	
menor:
	#-- En caso de que n1 < n2
	la a0, me
	li a7, PRINT_STRING
	ecall
	b fin_programa
	
	
fin_programa:
	#-- Terminamos
	li a7, EXIT
	ecall