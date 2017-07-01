.data
	num1:		 .double   56.453
	zerodouble: 	 .double   0.0

.text
	ldc1   $f2, num1
	ldc1   $f0, zerodouble
	
	li     $v0, 3
	add.d  $f12, $f2, $f0  # directly loading into $f12 would do too
	
	syscall
