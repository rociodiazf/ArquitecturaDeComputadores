#-- Error de alineamiento

	.eqv EXIT 10

	#-- En el segmento de datos se define
	#-- una cadena y una variable (palabra)
	.data
str:	.string "Hola" #-- Tamaño son 5 bytes, 4 para los caracteres, y uno de el 0

	#-- Reservar 4 bytes para usarlos para almcenar una palabra
v1:	.word 0
	.space 4
	.string "FIN"

	.text
	
	#-- t0 es el puntero a v1
	la t0, v1
	
	#-- Leer la variable v1 y meterla en el reg t1
	lw t1, 0(t0)
	
	#-- Terminar
	li a7, EXIT
	ecall