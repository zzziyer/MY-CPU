ori $t1,$0,5
ori $t2,$0,8
lui $t3,123
lui $t4,0xffff
ori $t4,$t4,0xffff
lui $t5,0xffff
ori $t5,$t5,0xfff8


addu $s0,$t2,$t1
addu $s1,$t4,$t2
addu $s2,$t4,$t5

subu $s3,$t2,$t1
subu $s4,$t1,$t2
subu $s5,$t2,$t4
subu $s6,$t4,$t5

