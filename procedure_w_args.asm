.data
.text
	main:
		li $a1, 5
		li $a2, 6
		jal addNumbers   # returns the value in $v1
		
		# print the value in $v1
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
	
	
	li $v0, 10
	syscall
	
	addNumbers:
		add $v1, $a1, $a2			
		jr $ra
	
	#addNumbers:  ## do this to directly print the result
	#	add $a0, $a1, $a2
	#	li $v0, 1
	#	syscall
	#	
	#	jr $ra