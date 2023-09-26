.text
li $t0, 0x10
li $t1, 0x25
li $t2, 0x43
li $t3, 0x89

# Deslocamento a direita de 8 bits
srl $t4,$t0,3
srl $t5,$t1,3 
srl $t6,$t2,3 
srl $t7,$t3,3 

# Deslocamento a esquerda de 4 bits
sll $s0,$t0,2 
sll $s1,$t1,2
sll $s2,$t2,2
sll $s3,$t3,2