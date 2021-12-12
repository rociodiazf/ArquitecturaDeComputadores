#-- Escribimos un programa en el que tenemos un bucle que se va incrementado 
#--con el numero que definimos como: INC
#-- 

	#-- Definimos el valor de INC
	.eqv INC 10
	#-- Definimos el valor inicial
	.eqv INICIO 100
	
	.text
	
	#-- Inicializamos el contador 
	li x5, INICIO

bucle:	#-- etiqueta bucle
	
	#-- Incrementamos el registro
	addi x5, x5, INC
	
	#--Repetimos
	b bucle
	
	#-- En este programa al ser un bucle infinito no le damos la terminacion 
	