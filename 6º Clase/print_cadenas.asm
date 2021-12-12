#-- Ejemplo de definicion de cadenas

	.eqv PRINT_STRING 4
	.eqv EXIT 10

	.data
	
cad1:	.string "En un lab de la URJC"
#-- como no hay un cero no sale por pantalla la otra frase.
	.string "de cuyo numero no quiero acordarme..."
	.asciz "esto es otra cadena"	#-- esto es mas antiguo y no se usa tanto. el otro es mas generico
	
#--Vamos a imprimir una cadena
#-- nos vamos a ayudas, llamadas al sistema

	.text #-- segmento de codigo
	
	la a0, cad1
	
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
	
	