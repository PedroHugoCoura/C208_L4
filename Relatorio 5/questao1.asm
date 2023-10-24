.data
a: .word 1
b: .word 2
c: .word 3
	
.text
la $s1, a
la $s2, b
la $s3, c
		
#a:
sub $t1, $s2, $s3
sw $t1, 10($s1)

#b:
add $t2, $s1, $s3
sw $t2, 245($s2)

#c:
sub $t3, $s2, $s1
sw $t3, 0($s3)