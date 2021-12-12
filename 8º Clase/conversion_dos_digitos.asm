#-- Implementacion del alforitmo de conversion de cadenas de digitos a numeros

	.include "servicios.asm"
	
	.text
#-- Inicializar el resultado parcial a cero: num = 0

	#-- t0 es num
	li t0, 0
	
#-- Leer el caracter actual de la cadena (car)

	