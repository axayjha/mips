.data
	message:   .asciiz "Enter the value of pi: "
	zeroFloat: .float 0.0
	
.text
	lwc1 $f4, zeroFloat
	
	# display message
	la $a0, message
	li $v0, 4
	syscall
	
	# read user input
	li $v0, 6   # stores value in $f0
	syscall
	
	# display value
	li $v0, 2
	add.s $f12, $f4, $f0
	syscall