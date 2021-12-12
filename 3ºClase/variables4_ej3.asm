#-- Este programa crearemos 4 variables y las estudiaremos
	.data
	
v1:	.word 0x12345678
v2:	.word 0x11223344
v3:	.word 0xCACABACA
v4:	.word 0x00FABADA
	
	
	.text
	
	li a7, 10
	ecall 