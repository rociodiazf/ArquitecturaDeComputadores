#-----------------------------------------------------
#-- Subrutina operar(x,y)
#--
#-- Imprimir el vector (x,y)
#-- Imprimir el vector incrementado (x+1, y+1)s
#--
#-- ENTRADAS:
#--  a0: Coordenada x
#--  a1: Coordenada y 
#-- SALIDAS: Ninguna
#----------------------------------------------------

	#-- Punto de entrada
	.globl operar
	
	.text
operar:	

	#--- Crear pila
	addi sp, sp, -24
	
	#-- Guardar direccion de retorno
	sw ra, 20(sp)
	
	#-- Almacenar los parametros en la pila en la pila
	sw a0, 16(sp)
	sw a1, 12(sp)
	sw a2, 8(sp)
	sw a3, 4(sp)

	#-- Imprimir el vector (x,y)
	jal print_vec
	
	#-- Recuperar x,y
	lw a0, 16(sp)
	lw a1, 12(sp)
	lw a2, 8(sp)
	lw a3, 4(sp)
	
	#-- Incrementar las coordenadas
	add a0, a0, a2
	add a1, a1, a3
	
	#-- Imprimir el vector incrementado (x+1, y+1)
	jal print_vec

	#-- Recuperar direccion de retorno
	lw ra, 20(sp)

	#-- Devolvemos la pila
	addi sp, sp, 24
	
	#-- Devolvemos conexion
	ret
