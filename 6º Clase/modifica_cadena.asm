#-- Ejemplo de lectura de un caracter de una cadena.
#-- Me va a imprimir en la consola el primer caracter de la cadena

	.eqv PRINT_CHAR 11
	.data 
cad1:	.string "Hola"

	.text
	
	#-- Definimos el puntero al primer caracter de la cadena
	la t0, cad1
	
	li t1, 'B'
	
	#-- Escribir el caracter en la cadena 
	sb t1, 2(t0)

	
	#-- Terminar
	li a7, 10
	ecall
	
	
	