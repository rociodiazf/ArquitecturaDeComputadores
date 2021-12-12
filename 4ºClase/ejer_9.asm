#-- Cuenta atrás indefinida de 9 a 0.

	.eqv LEDs 0xFFFF0010	#--Puerto de salida de los numeros
	
	#-- Salidas de los digitos 
	.eqv DIG0 0x3F	#-- Digito 0 (1111110 -> 0111111)
	.eqv DIG1 0x06	#-- Digito 1
	.eqv DIG2 0x5B	#-- Digito 2
	.eqv DIG3 0x4F	#-- Digito 3
	.eqv DIG4 0x66	#-- Digito 4
	.eqv DIG5 0x6D	#-- Digito 5 
	.eqv DIG6 0x7D	#-- Digito 6
	.eqv DIG7 0x07	#-- Digito 7 
	.eqv DIG8 0x7F	#-- Digito 8 (1111111)
	.eqv DIG9 0x6F	#-- Digito 9 (1110011 -> 1100111)
	#-- El nueve cambia dependdeiendo como lo dibujes, con el led 4 encendido o no. Las dos formas estan bien.
	
	#-- Saltos
	.eqv E0 0
	.eqv E1 4
	.eqv E2 8
	.eqv E3 0xC
	.eqv E4 0x10
	.eqv E5 0x14
	.eqv E6 0x18
	.eqv E7 0x1C
	.eqv E8 0x20
	.eqv E9 0x24
	
	.data 
	#-- Los numeros
tabla:	.word DIG0, DIG1, DIG2, DIG3, DIG4, DIG5, DIG6, DIG7, DIG8, DIG9

	.text
	#--Inicializamos el puerto en el registro x5
	li x5, LEDs
	
	#-- Guardamos la direccion de los datos de la tabla
	la x6, tabla
	
	#-- Cargamos en registros los calores de la tabla
	lw x7, E0(x6)
	lw x8, E1(x6)
	lw x9, E2(x6)
	lw x10, E3(x6)
	lw x11, E4(x6)
	lw x12, E5(x6)
	lw x13, E6(x6)
	lw x14, E7(x6)
	lw x15, E8(x6)
	lw x16, E9(x6)
	
bucle:
	#-- Vamos sacando por el puerto los numeros.
	sw x16, 0(x5)
	sw x15, 0(x5)
	sw x14, 0(x5)
	sw x13, 0(x5)
	sw x12, 0(x5)
	sw x11, 0(x5)
	sw x10, 0(x5)
	sw x9, 0(x5)
	sw x8, 0(x5)
	sw x7, 0(x5)
	
	b bucle
	
#-- Terminar
	li a7, 10
	ecall