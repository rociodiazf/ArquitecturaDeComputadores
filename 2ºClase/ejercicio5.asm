	.text
	#-- inicializa estos registros cn los valores...
	addi x5, x5, 3  #-- A
	addi x6, x6, 5  #-- B
	addi x7, x7, 7  #-- C
	addi x8, x8, 9  #-- D
	
	
	sub x9, x7, x8 	#-- t1 = C -D
	 
	add x6, x6, x6	#-- B = B + B 
	  
	add x6, x6, x6  #-- B = B+ B
	 
	sub x9, x6, x9 #-- t1 = B - t1
	  
	add x5, x5, x5  #-- A = A + A
	 
	add x5, x5, x9  #-- A = A + t1
	
	addi x10, x5, 15 #-- t2 = A + 15 
	
	#-- Terminar
	li a7, 10
	ecall