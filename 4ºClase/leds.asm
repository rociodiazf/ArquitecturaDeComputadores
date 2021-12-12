#-- Ejemplo de escritura en un puerto de salida
#-- Los LED están mapeados en la dirección 0xFFFF0000

	#-- Dirección de mapeo de los LED's
	.eqv LEDS 0xFFFF0010
	
	#-- Calos a sacar por los LEDs. #NoALosNumerosMMagicos
	.eqv VALOR 0xAA
	
	.text 
	
	#-- x5 es un puntero a los LEDs
	li x5, LEDS
	
	#-- x6 contiene el valor a sacar por los LEDs 
	li x6, VALOR
	
	#-- Sacar el valor por los leds
	sw x5, 0(x5)
	
	#-- terminar
	li a7, 10
	ecall	
	