.data
.text
	addi $s0, $zero, 40
	addi $s1, $zero, 100
	
	mult $s0, $s1
	mflo $a0
	
	
	li $v0, 1
	syscall