#-- Ejemplo de lectura de un caracter de una cadena.
#-- Me va a imprimir en la consola el primer caracter de la cadena

	.eqv PRINT_CHAR 11
	.data 
cad1:	.string "Hola"

	.text
	
	#-- Definimos el puntero al primer caracter de la cadena
	la t0, cad1
	
	#-- Leemos el caracter. OJO CON LA DIFERENCIA ENTRE CARACTER Y STRING.
	lb t1, 3(t0)
	
	#-- Imprimir caracter
	mv a0, t1
	li a7, PRINT_CHAR
	ecall
	
	#-- Terminar
	li a7, 10
	