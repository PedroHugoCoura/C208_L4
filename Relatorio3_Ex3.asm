.data
n1: .byte 54
n2: .byte 45

.text
lb $t0, n1
lb $t1, n2
add $t3, $t0, $t1