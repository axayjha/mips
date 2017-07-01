.data
	pi: .float 3.14
		
.text
	lwc1 $f12, pi
	li $v0, 2
	syscall 