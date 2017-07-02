.data
	message: .asciiz "branched\n"
.text
	main:
		addi $s0, $zero, 10
		addi $s1, $zero, 15
		
		# bgt $s1, $s0, branched 
		# blt $s0, $s1, branched
		bgtz $s0, branched
	
	li $v0, 10
	syscall
	
	branched:
		la $a0, message
		li $v0, 4
		syscall