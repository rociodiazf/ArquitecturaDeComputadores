#-- Programa en el que se calcula:
#-- f= (a+b+c) - [(d-a)+(e+3)-30]
	.text
	#-- Inicializamos las variables dadas
	addi x1, x0, 2
	addi x2, x0, 4
	addi x3, x0, 6
	addi x4, x0, 8
	addi x5, x0, 10
	
	#-- (a+b)
	add x6, x1, x2	#-- x6 = x1+x2
	#-- (a+b+c)
	add x6, x6, x3	#-- x7 = x6+x3
	#-- (d-a)
	sub x8, x4, x1	#-- x8 = x4 - x1
	#-- (e+3)
	addi x9, x5, 3	#-- x9 = x5 + 3
	#--  (d-a)+(e+3)
	add x10, x8, x9	#-- x10 = x8 + x9
	#-- [(d-a)+(e+3)-30]
	addi x11, x10, -30	#-- x11 = x10 -30
	#-- (a+b+c) - [(d-a)+(e+3)-30]
	sub x12, x6, x11
	
	
	#-- Terminar
	li a7, 10
	ecall
	
	
