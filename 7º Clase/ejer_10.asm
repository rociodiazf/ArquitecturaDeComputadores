#-- Escribiremos un programa que tenga las mismas instrucciones que vienen dadas en el ejercicio numero 10

	.text
	
	b salto
	li t1, 1
	li t2, 2
	li t3, 3
	li t4, 4
salto:	li t5, 5
	#-- Terminamos
	li a7, 10
	ecall