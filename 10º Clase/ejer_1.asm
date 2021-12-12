#-------------------------------------------------------------------------------------------------
#-- NO EJECUTAR ESTE EJERCICIO ES MERAMENTE TEXTO QUE RESPONDE A LA PREGUNTA DEL EJERCICIO 1
#-------------------------------------------------------------------------------------------------

#-- 	1)  a0 podemos decir seguros que es 30, en cambio para el registro a1 no podemos decir lo mismo ya que
#--	es un registro temporal y al haber llamado a una subrutina puede que el valor haya cambiado

#--	2)La primera llamada imprime 5 pero a la segunda no sabemos por que no hemos re-inicializado el valor
#--	puede haber llegad a la segunda llamada un valor de a0 que no sea un 5, o sí. No lo sabemos pero en 
#--	cualquiera de los casos está mal escrito que que deberíamos haberlo re-inicializado antes de llamar
#-- 	otra vez al print_int

#-- 	3) Viendo toda la trayectoria del programa podemos asegurar, gracias a la ultima linea de codigo
#-- 	que el valor de t0 es s0

#--	4) Sí estamos violando, aunque es un poco ambiguo, que no se pueden utilizar registros estáticos en 
#--	subrutinas. Vamos a ver la solucion ahora. Segun la resolucion del profesor estamos violando el convenio de
#--	RICSV porque para pasarle parámetros a una fucion se una a0, a1... ect. Veo mas completa mi respuesta ya que
#--	creo que en una subrutina separada del codigo principal no funcionaría. Igualmente las dos respuestas son
#-- 	correctas

#--	5)PARA NADA ES CORRECTA ESTA SUBRUTINA. En primer y único lugar estamos utilizando un registro estático 
#-- 	en una funcion cosa que está PROHIBIDA por los convenios de RICSV

#--	6)NO ES CORRECTO. Porque despues de llamar a una subrutina el valor de t0 puede haber cambiado ya que es un 
#--	registro temporal. No podemos hacer cosas así. Esto viola el convenio de RICSV. Antes habría que inicializarlo
#--	a un valor conocido


