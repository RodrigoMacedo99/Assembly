#loop 1 o $t0 será o valoor da super fatorial 
li $t0, 5

#loop 2
li $t1, 0
li $k1, 1

#calculo 1
li $t2, 0

#fat
li $t3, 0
li $t5, 1

#soma
li $s0, 0
li $s1, 1#soma inicial - referencia da soma

#copia soma
li $t4, 0


main:

	move $s0, $t0
	loop:
		beq $t0, $k1, end

		#duplcação
		move $t2, $t0

		#fazendo a referencia
		subi $t2, $t2, 1
		
		#fat
		move $t3, $t2
		subi $t3, $t3, 0

		#Criando a soma
		move $s1, $s0
		#subi $s1, $s1, 1 #soma.ref


		#multiplicação
		loop3:
			beq $t3, $t5, end3
			add $s0, $s0, $s1

			#subitração do loop
			subi $t3, $t3, 1
			b loop3 
		end3:

		
		#subitração para o loop1
		subi $t0, $t0, 1
		b loop
	end: