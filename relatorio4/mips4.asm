.text

 #s0 = a
 #s1 = b
 #s2 = c
 # 4) 
 blt $s0, $s1, else
 add $s1, $s0, $s2
 sub $s2, $s1, $s1
 j exit
 
 else: 
  add $s2, $s0, $s1
  sub $s0, $s1, $s2
 
 exit: