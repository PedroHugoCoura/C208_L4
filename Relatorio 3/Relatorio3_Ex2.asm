.data 
prompt: .asciiz "Qual é a sua idade ? "
mensagem: .asciiz "Idade daqui a 30 anos:"
idade: .word 0 
.text
li $v0, 4
la $a0, prompt # Pergunta a idade
syscall

li $v0, 5 # Entra com a idade
syscall

addi $t1, $v0, 30 # Soma a idade daqui a 30 anos

sw $t1, idade # Armazena valor da idade

li $v0, 4
la $a0, mensagem # Mostra mensagem
syscall

li $v0, 1
lw $a0, idade # Imprime a idade
syscall


   

