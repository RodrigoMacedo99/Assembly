#loop 1 o $t0 será o valoor da super fatorial 
li $t0, 5
li $k0, 1

#loop 2
li $t1, 0
li $k1, 1

#calculo 1
li $t2, 0
li $t3, 0

#Resultado parcial
li $s1, 0

#resultado final
li $s0, 0


li $t4, 0
main:

	loop: 
		beq $t0, $k0 , end
		addi $t1, $t0, 0
		subi $t1, $t1, 1
		while:
			beq $t1, $k1, end2
			addi $t4, $t1, 0
			loop3:
				beq $t4, $k1, end3
				add $s1, $t1, $s1
				subi $t4, $t4, 1
			b loop3
			
			end3:
			subi $t1, $t1, 1
		b while
		
		end2:
		add $s0, $s0, $s1
		sub $s1, $s1, $s1
		subi $t0, $t0, 1
		b loop
	end:	