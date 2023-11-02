.data
n: .word
frase1: .asciiz "Entre com o valor de N: "
frase2: .ascii "A diferença é de: "

.text
li $v0, 4
la $a0, frase1
syscall

li $v0, 5
syscall

sw $v0, n
lw $t0, n
addi $t0, $t0, 1
li $t1, 1
li $t2, 0
li $t3, 0

retorna:
add $t2, $t2, $t1
mul $t4, $t1, $t1
add $t3, $t3, $t4
addi $t1, $t1, 1
beq $t1, $t0, exit

j retorna

exit:
mul $t2, $t2, $t2
sub $t5, $t2, $t3
li $v0, 4
la $a0, frase2
syscall

li $v0, 1
add $a0, $t5, $0
syscall
