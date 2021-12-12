#-- Animmacion de bucle infinto representando un circulo con los leds.

	.eqv LEDs 0xFFFF0010	#--Puerto de salida de los numeros
	
	#-- Salidas de los digitos 
	.eqv LED_A 0x01	#-- Led A (1000000 -> 0000001)
	.eqv LED_B 0x02	#-- Led B (0100000 -> 0000010)
	.eqv LED_C 0x04	#-- Led C (0010000 -> 0000100)
	.eqv LED_D 0x08	#-- Led D (0001000 -> 0001000)
	.eqv LED_E 0x10	#-- Led E (0000100-> 0010000)
	.eqv LED_F 0x20	#-- Led F (0000010-> 0100000)
	
	
	#-- Saltos
	.eqv E0 0
	.eqv E1 4
	.eqv E2 8
	.eqv E3 0xC
	.eqv E4 0x10
	.eqv E5 0x14

	
	#--.data 
	#-- Los numeros
#-- tabla:	.word LED_A, LED_B, LED_C, LED_D, LED_E, LED_F

	.text
	#--Inicializamos el puerto en el registro x5
	li x5, LEDs

	#-- Inicializamos los demas valores
	li x6, LED_A
	li x7, LED_B
	li x8, LED_C
	li x9, LED_D
	li x10, LED_E
	li x11, LED_F 
	
	
bucle:
	#-- Vamos sacando por el puerto los numeros.
	sw x6, 0(x5)
	sw x7, 0(x5)
	sw x8, 0(x5)
	sw x9, 0(x5)
	sw x10, 0(x5)
	sw x11, 0(x5)
	
	b bucle
	
#-- Terminar
	li a7, 10
	ecall