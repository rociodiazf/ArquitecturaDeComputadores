#-- En este programa vamos a printear por terminal 3 numero que nos de el usuario. 
#-- Los guardaremos en memoria y luego para printearlos los leeremos de memoria.
	
	.eqv READ_INT 5
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11
	.eqv E0 0
	.eqv E1 4
	.eqv E2 8
	.eqv E3 12
	.eqv COMA 0x2C		#-- ','

 	.data
 	#-- Reservamos la memoria
 var:	.word 0, 0, 0, 0
 	
 	.text
 	
 	#--Sacamos la direccion de memoria donde estan las variables
 	la s0, var	
 		
 	#--Pedimos los cuatro valores enteros
 	
 	#-- Nº1
 	li a7, READ_INT
 	ecall
 	sw a0, E0(s0)	#-- Guardamos el primer valor
 	
 	#-- Nº2
 	li a7, READ_INT
 	ecall 
 	sw a0, E1(s0)	#-- Guardamos el segundo valor
 	
 	#-- Nº3
 	li a7, READ_INT
 	ecall
 	sw a0, E2(s0)	#-- Guardamos el tercer valor
 	
 	#-- Nº4 
 	li a7, READ_INT
 	ecall
 	sw a0, E3(s0)	#-- Guardamos el cuarto valor
 	
 	
 	#-- Los printeamos de memoria
 	
 	#-- 1º
 	lw a0, E0(s0)
 	li a7, PRINT_INT 
 	ecall
 	
 	#-- Printeamos la coma
 	li a0, COMA
 	li a7, PRINT_CHAR
 	ecall
 	
 	#-- 2º
 	lw a0, E1(s0)
 	li a7, PRINT_INT 
 	ecall
 	
 	#-- Printeamos la coma
 	li a0, COMA
 	li a7, PRINT_CHAR
 	ecall
 	
 	#-- 3º
 	lw a0, E2(s0)
 	li a7, PRINT_INT 
 	ecall
 	
 	#-- Printeamos la coma
 	li a0, COMA
 	li a7, PRINT_CHAR
 	ecall
 	
 	#-- 4º
 	lw a0, E3(s0)
 	li a7, PRINT_INT 
 	ecall
 	
 	#-- Terminar 
 	li a7, 
 	
 	
 	