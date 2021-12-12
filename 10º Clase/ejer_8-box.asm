#---------------------------------------------------------------------------------------------
#-- FUNCION BOX
#-- ENTRADAS: a0 (char), a1(anchura), a2(altura).
#-- Salidas: Ninguna
#---------------------------------------------------------------------------------------------
	.globl box
	
#---------Punto de entrada
box:
	.text
	#-- Metemos en una pila ra para no perderlo
	addi sp, sp, -8
	sw ra, 4(sp)	#-- almacenamos ra
	
	#-- Nos guardamos los valores de a0 y a1 ya que pueden ser modificados en cada 
	#-- iteracion de la fncion linea
	mv s0, a0
	mv s1, a1
	
	#-- Hacemos un bucle que se repita el numero de veces de la altura del rectangulo
	li t0, 0	#-- Inicilizamos el contador como 1
bucle:	
	beq t0, a2, fin_bucle	#-- Si contador = altura --> fin 
	
	#--Debemos guardar el contador en la pila puesto que los temporales no 
	#--podemos  asegrurar que sean los mismos al volver de la subfucnion
	sw t0, 0(sp)
	
	#-- Refrescamos los valores de a0 y a1
	mv a0, s0
	mv a1, s1
	
	#-- Llamamos a la fucion linea
	jal linea
	
	#-- Sacamos el contador
	lw t0, 0(sp)
	
	#-- Incrementamos el contador
	addi t0, t0, 1
	b bucle
	
fin_bucle:

	#-- Sacamos ra
	lw ra, 4(sp)
	#-- Liberamos la pila
	addi sp, sp, 8
	
	#-- Devolvemos la conexion
	ret