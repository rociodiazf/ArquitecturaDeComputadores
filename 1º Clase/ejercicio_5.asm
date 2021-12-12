#-- Ejecutamos el programa paso a paso. ¿Qué hace?
	
	.text
#-- inicializamos el registro x3 a 10
	addi x3, x0, 10		#-- x3 = 10
a:
#-- restamos 1 al registro x3
	addi x3,x3,-1		#-- X3 -1
#--crea un bucle que mientras x3 sea mayor que x0 (0) se repita.
	bgt x3,x0, a
	
	li a7, 10
	ecall