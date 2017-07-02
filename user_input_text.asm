.data
	prompt:     .asciiz "Enter your name: "
	message:    .asciiz "Hello, "
	user_input: .space  20

.text
	main:
		# prompting for input
		la $a0, prompt
		li $v0, 4
		syscall
		
		# getting user input
		li $v0, 8
		la $a0, user_input
		li $a1, 20
		syscall
		
		# printing message
		la $a0, message
		li $v0, 4
		syscall		
		
		# printing text
		la $a0, user_input
		li $v0, 4
		syscall
		
	
	# end of main		
	li $v0, 10
	syscall						