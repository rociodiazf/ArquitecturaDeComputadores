#-- Calcula la expresion (a - b) + (c + 5)
#-- Evaluar para a = 1, b = 2 y c=3

	.text
	#-- t0 = a, t1=b, t2 = c
	#-- t0 = a= 1
	li t0,1
	
	#-- t1 = b= 2
	li t1, 2
	
	#-- t3 = c = 3
	li t2, 3
	
	#--Calcular la expresion
	#-- t3 = (a-b)
	sub t3, t0, t1
	
	#-- t4= (c +5)
	addi t4, t2, 5
	
	#-- t5 = (a -b) + (c+5)
	add t5, t3,t4
	
	#-- Terminar
	li a7, 10
	ecall
	