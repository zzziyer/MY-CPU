ori $t0,$0,3
ori $t1,$0,5

jal func



func:
addu $t2,$t1,$t0
jr $ra