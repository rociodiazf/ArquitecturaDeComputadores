#-- Ejemplo de constantes definidas
#-- mediante identificadorees
#-- Contador con valor inicial

	#--  valor inicial del contador
	.eqv INICIAL 20
	.eqv CONT 1
	
	.text
	
	#-- x5 es el contador 
	#-- lo inicializamos
	li x5, INICIAL	#-- NO a los numeros magicos
	
bucle:
	#-- Incrementamos el valor
	addi x5, x5, CONT
	b bucle
	
	
	#-- terminar
	li a7, 10
	ecall