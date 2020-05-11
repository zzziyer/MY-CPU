ori $t2,$0,8
lui $t3,123
lui $t4,0xffff
ori $t4,$t4,0xffff
lui $t5,0xffff
ori $t5,$t5,0xfff8

sw $t2,0($0)
sw $t3,4($0)
sw $t5,12($0)

lw $s0,8($0)
lw $s1,4($0)
lw $s2,0($0)


