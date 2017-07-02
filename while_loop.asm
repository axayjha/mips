# MIPS assembly
#
# While loop demo
#	stores 1 in register s0 and loops till s0<=10
#	and prints the value in s0
#
# Akshay Anand

.data
	space:     .asciiz ", "
	once_done: .asciiz "\nloop terminated\n"
.text
	main:
		addi $s0, $zero, 1	# i=1
		while:
			bgt $s0, 10, exit	# exits loop if s0 gets greater than 10
			
			jal printNumber		# prints the number and comma
							
			addi $s0, $s0, 1 	# i++							
			j while			# iterates back
		
		exit:  				# exists once loop counter exceeds test value
			la $a0, once_done
			li $v0, 4
			syscall
		# ends main
		li $v0, 10
		syscall
		
	printNumber:				# procedure to print the number and comma 
		addi $a0, $s0, 0
		li   $v0, 1
		syscall
		
		la $a0, space
		li $v0, 4
		syscall
		
		jr $ra		
		
		
	