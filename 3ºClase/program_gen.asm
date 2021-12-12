#-- programa para inicializar el segmento de 
#-- datos con los nuemros enteros: 0, 1, 2, 3, 4, 5.....

	.data
inicio:
	.text
	
	#--registro contador: 0, 1, 2, 3, 4....
	li x6, 0
	
	#-- puntero para escritura de datos
	la x7, inicio

bucle:
	#-- Inicializar la siguiente palabra del segmento de datos
	sw x6, 0(x7) 
	
	#-- Incrementar el contador 
	addi x6, x6, 1
	
	#-- INcrementar el puntero
	addi x7, x7, 4
	
	b bucle
	
	#-- Terminar
	li a7, 10
	ecall