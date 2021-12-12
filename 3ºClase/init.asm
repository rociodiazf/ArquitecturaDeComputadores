#-- en este pprograma inicializaremos los registros utilizando i
#-- y trnasferir dichos registros utilizando mv
#--

	.text
	#-- inicializamos los valores 
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8
	
	#-- trans ferimos los valores
	mv x15, x5
	mv x16, x6
	mv x17, x7
	mv x18, x8
	
	#-- terminamos...
	li a7, 10
	ecall