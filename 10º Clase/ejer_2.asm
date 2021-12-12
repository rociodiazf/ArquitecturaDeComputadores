#-------------------------------------------------------------------------------------------------
#-- NO EJECUTAR ESTE EJERCICIO ES MERAMENTE TEXTO QUE RESPONDE A LA PREGUNTA DEL EJERCICIO 2
#-------------------------------------------------------------------------------------------------
#-- Para este ejercicio debemos coger los codigos analizados en el ejercicio anterior y corregirlos.

#-- Apartado 1
#--	....
	li s0, 30
	li t0, 5
	jal tarea1

	mv a0, s0
	li t0, 5	#-- O guardar el nuemro en memoria o en la pila.
#-- TAMBIEN PODEMOS USAR UN REGISTRO QUE SI PRESERVE SU VALOR TRAS UNA FUNCION COMO S1
	mv a1, t0
#--	....

#-- Apartado 2
	li a0, 5
	jal print_int
	
	li a0, 5
	jal print_int 
#-- 	.....

#-- Apartado 3
inc: 

     #-- Leer el primer argumento
     mv t0, a0

     #-- Incrementar su valor en una unidad
     addi t0, t0, 1

     #-- Devolver el valor incrementado por a0
     mv a0, t0
     ret
     
#-- Apartado 4
par:  

    #.... resto de instrucciones
    
    #.... es par
    li t0, 1   


    #-- Imprimir mensaje
    jal mensaje_par

    #-- devolver codigo de retorno (que está en t0)
    mv a0, t0
    ret
