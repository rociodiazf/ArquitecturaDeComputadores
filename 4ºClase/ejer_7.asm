#-- Sacaremos por el display los numeros 1, 2, 3 y 4 seguidos

	.eqv LEDs 0xFFFF0010	#--Puerto de salida de los numeros
	
	.eqv DIG1 0x06	#-- Digito 1
	.eqv DIG2 0x5B	#-- Digito 2
	.eqv DIG3 0x4F	#-- Digito 3
	.eqv DIG4 0x66	#-- Digito 4
	
	#-- Saltos
	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC

	.data 
	#-- Los numeros
tabla:	.word DIG1, DIG2, DIG3, DIG4

	.text
	#--Inicializamos el puerto en el registro x5
	li x5, LEDs
	
	#-- Guardamos la direccion de los datos de la tabla
	la x6, tabla
	
	#-- Cargamos en registros los calores de la tabla
	lw x7, E1(x6)
	lw x8, E2(x6)
	lw x9, E3(x6)
	lw x10, E4(x6)
	
	#-- Vamos sacando por el puerto los numeros.
	sw x7, 0(x5)
	sw x8, 0(x5)
	sw x9, 0(x5)
	sw x10, 0(x5)
	
#-- Terminar
	li a7, 10
	ecall
