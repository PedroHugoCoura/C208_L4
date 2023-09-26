.text

  li $t0,10
  li $t2,0

  while: bgt $t0,0, loop # se sim entra na label loop
  j exit # se não entra em exit
  
  loop:
   addi $t2,$t2,5
   subi $t0,$t0,2
   j while
   
  exit:
