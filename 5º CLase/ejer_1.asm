#-- Ejercicio 1. Calcularemos la expresion: f = (2*a - b) + c - 1. Utilizando solo recursos ABI.
#-- Para los valores: a = 10, b = 20 y c = 30 

	.eqv X1 10
	.eqv X2 20
	.eqv X3 30
	.eqv EXIT 10

	.text
	#-- 2*a
	li t0, X1
	addi t0, t0, X1
	
	#-- (2*a-b)
	li t1, X2
	sub t2,t0,t1
	
	#-- (2*a-b)+c
	li t3, X3
	add t4, t2, t3
	
	#-- (2*a-b)+c-1
	addi t5, t4, -1		#--Solución
	
	#-- Terminamos
	
	li a7, EXIT
	ecall
	