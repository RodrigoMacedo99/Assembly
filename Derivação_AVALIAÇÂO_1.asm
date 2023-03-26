#=============================================================================
#                           NOMES DA EQUIPE

# -> Rodrigo de Jesus Macedo
# ->	Lucas Lago Silva Bastos
# ->
# ->
#=============================================================================
#                  ORIENTAÇÕES PARA ENTENDER O CÓDIGO

# Derivada resolvida no código h(x) = 3x + 5x² +6x³.

# Abaixo mostrará em que registradores estarão os respectivos valores:
#  $s0 = 3 | $s1 = x
#  $s2 = 5 | $s3 = x²
#  $s4 = 6 | $s5 = x³

#                     RESULTADO FINAL: $s4 = 36
#=============================================================================

#Criando o vetor onde serão inseridos os valores da derivada
#.data 
#	array: .space 24		
#.text

#caminho de inicialização das derivadas
#move $t0, $zero

#valores da derivada
li $s0, 3
li $s1, 1
li $s2, 5
li $s3, 2
li $s4, 6
li $s5, 3

#Constante para o loop
li $k1, 0
li $k0, 1

#VAriavél de subitração para derivar 
li $v0, 0

#Inserindo os valores da derivada no array
#sw $t0, array($s0) #Primeira posição
#	addi $t0, $t0, 4
#sw $t0, array($s1) #Segunda posição
#	addi $t0, $t0, 4
#sw $t0, array($s2) #Terceira posição
#	addi $t0, $t0, 4
#sw $t0, array($s3) #Quarta posição
#	addi $t0, $t0, 4
#sw $t0, array($s4) #Quinta Posição
#	addi $t0, $t0, 4
#sw $t0, array($s5) #Sexta posição

loop1:
	beq $s5, $k1, end1
	
	mul $s0, $s0, $s1
	slt $v0, $k1, $s1 #verificar se o "x" existe
	sub $s1, $s1, $v0

	mul $s2, $s2, $s3
	slt $v0, $k1, $s3 #verificar se o "x" existe
	sub $s3, $s3, $v0
	
	mul $s4, $s4, $s5
	slt $v0, $k1, $s5 #verificar se o "x" existe
	sub $s5, $s5, $v0
		
	b loop1
end1:
