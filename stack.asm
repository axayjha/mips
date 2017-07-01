.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseRegister    #calling function to print incremented value
		
		# printing new line
		la $a0, newLine
		li $v0, 4
		syscall
		
		#printing the restored value of $s0
		li $v0, 1
		move $a0, $s0
		syscall
	
	#signalling end of program
	li $v0, 10
	syscall
	
	increaseRegister:
		addi $sp, $sp, -4   # making space in stack by decreasing top (mips stack grows downwards)
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30  # incrementing the value
		
		#printing the incremented value
		li $v0, 1
		move $a0, $s0
		syscall
		
		# restoring the value from stack
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
		