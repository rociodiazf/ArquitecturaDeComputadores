#-- Escribimos un programa en el que tenemos un bucle que se va incrementado 
#-- con el numero que definimos como: INC y  lo enlazamos con el display


	
	.eqv INC 1	#-- Definimos el valor de INC
	.eqv INICIO 0	#-- Definimos el valor inicial
	.eqv LEDS 0xFFFF0010	#--Salida del los LED's
	
	
	.text	
	
	#-- Inicializamos el contador 
	li x5, INICIO
	#--Inicializamos un registro para el puerto
	li x6, LEDS

bucle:	#-- etiqueta bucle
	
	#-- Incrementamos el registro
	addi x5, x5, INC
	
	#--Sacamos el numero por el puerto de los LED's
	sw x5, 0(x6)
	
	#--Repetimos
	b bucle
	
	#-- En este programa al ser un bucle infinito no le damos la terminacion 
	