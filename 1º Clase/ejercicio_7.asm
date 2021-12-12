        .text

#-- inicializamos x17 a 10
	addi x17, x0, 10
#-- inicializamos x12 a 8
	addi x12, x0, 8
#-- inicializamos x7 a 0
	addi x7, x0, 0
a:
	beq x17,x0,fin  #-- si x17 = 0 then acaba el programa
#-- x7 = x7 + x12
	add x7, x7, x12
#-- x17 = x17 - 1
	addi x17, x17, -1
	
	#-- repetir 
	
	b a
	
fin:
	li a7, 10
	ecall