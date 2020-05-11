ori $t0,5
ori $t1,6
ori $t2,6

beq $t0,$t1,if1
ori $t3,7

if1:
addu $t4,$t1,$t3

beq $t1,$t2,if2
ori $t5,8

if2:
addu $t6,$t1,$t5