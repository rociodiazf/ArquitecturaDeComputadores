#-- 1) Tenemos guardados 9 bytes de datos guardados en memoria :)
#-- 2) Dos palabras enteras y un byte
#-- 3) Viendo la tabla de las etiquetas lo podemos ver. Vemos que la 2º no esta alineada por lo que 
#-- ese sera el fallo en ejeccuccion, el desalienamiento.
#-- 4) Como hemos dicho antes, es un error en timepo de ejecucion debido al mal alineamiento de los bytes
#-- de las variables
#-- 5) Hay varias formas de arreglarlo, conocemos varias formas: utilizando .word en vez de .byte o poner .aling 2

#-- Forma numeor tres: cambiamos los lw por lb
	.data
	
	.string "1234"
	
v1:	.byte 0xAA
	.byte 0xBB
	.byte 0xCC
	.byte 0xDD
	
	.text
	
	la t0, v1
	lb t1, 0(t0)
	
	li a7,10
	ecall
 	#-- Terminar
 	li a7, EXIT
 	ecall