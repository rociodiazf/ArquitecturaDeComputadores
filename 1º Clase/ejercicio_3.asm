#-- Ejercicio nuemro 3
#-- Demebos incrementar varios reistros indefinidamente mediante
#-- tres bucles independientes para los registros x3, x4 y x5

	.text
	
	#-- Inicializar el registro x3 a 0
	addi x3, x0, 0
	#-- Inicializar el registro x4 a 0
	addi x4, x0, 0
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x3 en una unidad
	addi x3, x3, 1  #-- x3 = x3 + 1
	
	#-- Incrementar el registro x4 en tres unidades
	addi x4, x4, 3  #-- x4 = x4 + 3
	
	#-- Incrementar el registro x5 en cinco unidades
	addi x5, x5, 5  #-- x5 = x5 + 5
	
	#-- Repetir indefinidamente		
	b bucle
