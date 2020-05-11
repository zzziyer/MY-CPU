.macro reset()
	lui $10 0
	nop
	nop
	nop
	nop
	nop
.end_macro

.macro test_rs_reg(%i)
	addu $11 %i $2
.end_macro

.macro test_rt_reg(%i)
	addu $11 $2 %i
.end_macro

.macro test_rs()
	test_rs_reg($10)
.end_macro

.macro test_rt()
	test_rt_reg($10)
.end_macro

.macro test_rs_ra()
	test_rs_reg($ra)
.end_macro

.macro test_rt_ra()
	test_rt_reg($ra)
.end_macro

ori $1 $0 1
ori $2 $0 2
sw $2 0($0)

reset()


# R-M-RS
subu $10 $1 $2
test_rs()

reset()

# R-M-RT
subu $10 $1 $2
test_rt()

reset()

# R-W-RS
subu $10 $1 $2
nop
test_rs()

reset()

# R-W-RT
subu $10 $1 $2
nop
test_rt()

reset()

# I-M-RS
ori $10 $2 0
test_rs()

reset()

# I-M-RT
ori $10 $2 0
test_rt()

reset()

# I-W-RS
ori $10 $2 0
nop
test_rs()

reset()

# I-W-RT
ori $10 $2 0
nop
test_rt()

reset()

# L-M-RS
lw $10 0($0)
test_rs()

reset()

# L-M-RT
lw $10 0($0)
test_rt()

reset()

# L-W-RS
lw $10 0($0)
nop
test_rs()

reset()

# L-W-RT
lw $10 0($0)
nop
test_rt()

reset()

# JAL-M-RS
jal label1
test_rs_ra()
label1:

reset()

# JAL-M-RT
jal label2
test_rt_ra()
label2:

reset()

# JAL-W-RS
jal label3
nop
label3:
test_rs_ra()

reset()

# JAL-W-RT
jal label4
nop
label4:
test_rt_ra()

reset()

jal label5
nop 

jal label6
nop

jal label7
nop 
test_rs()

jal label8
nop
test_rt()

j end

label5:
reset()

#JALR-M-RS
jalr $10 $31
test_rs()

label6:
reset()

#JALR-M-RT
jalr $10 $31
test_rt()

label7:
reset()

#JALR-W-RS
jalr $10 $31
nop

label8:
reset()

#JALR-W-RT
jalr $10 $31
nop

end:

