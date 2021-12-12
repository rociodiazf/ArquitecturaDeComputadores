#-- Inicializar el segmento de datos
#-- con mi primera variable. 

	.data

i:		
a:	.word 0xBEBECAFE, 1, 2
	.word 0x00FABADA
b:	.word 0xFACEB00C

	.text
hola:

	#-- x5 contiene la direccion de la varialbe a
	la x5,a  #-- load adress
	
	#-- x6 = a
	lw x6, 0(x5)	#-- le damos al refistro x6 la variable a
	
	#-- Terminar el programa
	li a7, 10
	ecall

	