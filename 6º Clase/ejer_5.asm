#-- 1) Tenemos guardados 9 bytes de datos guardados en memoria :)
#-- 2) Dos palabras enteras y un byte
#-- 3) Viendo la tabla de las etiquetas lo podemos ver. Vemos que la 2º no esta alineada por lo que 
#-- ese sera el fallo en ejeccuccion, el desalienamiento.
#-- 4) Como hemos dicho antes, es un error en timepo de ejecucion debido al mal alineamiento de los bytes
#-- de las variables
#-- 5) Hay varias formas de arreglarlo, conocemos varias formas: utilizando .word en vez de .byte o poner .aling 2
#--  Forma numero 1: cambiamos los .byte a un .word
	.data
	
	.string "1234"

v1:	.word 0xDDCCBBAA
	
	.text
	
	la t0, v1
	lw t1, 0(t0)
	
	li a7,10
	ecall
 	#-- Terminar
 	li a7, EXIT
 	ecall