#-- En esta funcion vamos recoger una cadena que vamos a poner todas las letras a mayusculas

	#---------------------------------------------------------------------------------------
	#-- INICIO DE FUNCIO
	#---------------------------------------------------------------------------------------
	
	.globl upper

upper:

	.eqv MIN 97
	.eqv MAX 122
	.eqv MAYU -32
	
	.text
	addi t0, a0, 0	#-- Copiamos la direccion en t0
	li t1, MIN	#-- Instalamos el minimo en t1
	li t2, MAX	#-- Maximo en t2
	li t4, '\n'	#-- Fnail de cadena

bucle:
	lb t3, 0(t0)
	beq  t3, t4, final
	blt t3, t1, es_grande	
	#-- En caso de que sea una minuscula 
	#-- Restamos 32 para colocarlo en la tabla ascii en las mayus
	addi t3, t3, MAYU
	sb t3, 0(t0)
es_grande:	
	addi t0, t0, 1	
	b bucle
	
final:	
	ret
	