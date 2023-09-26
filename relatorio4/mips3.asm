.text
 #s0 = a
 #s1 = b
 #s2 = c

# 3) 
 bgt $s0, $s1, else
 sub $s1, $s0, $s2
 add $s2, $s1, $s0
 j exit
 
 else: 
  sub $s2, $s0, $s1
  add $s0, $s1, $s2
 
 exit: