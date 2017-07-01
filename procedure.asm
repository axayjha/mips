.data
	message: .asciiz "This is a string.\n"
	num1: .word 30
.text
	main:
		jal displayMessage  # calling the procedure -> prints the string
		 
		lw $t0, num1($zero)
		
		# prints the number
		li $v0, 1
		add $a0, $zero, $t0		
		syscall		
	
	# tells the system program is done	
	li $v0, 10
	syscall		
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra
	
	