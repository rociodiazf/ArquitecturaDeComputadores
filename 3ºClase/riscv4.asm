	.data
	
a:	.word 1
b:	.word 2
s: 	.word 0

	.text
	
	#-- cargamos la direccion de la variable. 
	la x5, a	#x5 apunta a "a"
	
	#-- x10 = a
	lw x10, 0(x5)
	
	#-- x11 = b 
	lw x11, 4(x5)
	
	#-- x12 = a +b
	add x12, x10, x11
	
	#-- 28 bytes
	
	#-- s = a + b
	sw x12, 8(x5)
	
	#-- Terminar
	li a7, 10
	ecall