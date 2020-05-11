.ktext 0x4180
_entry:
	ori	$k0, $0, 0x1000
	# sw	$sp, -4($k0)
	mfc0	$k1, $12
	sw	$k1, -8($k0)
	
	addiu	$k0, $k0, -256
	move	$sp, $k0
	
	j	_save_context
	nop
	
_main_handler:
	mfc0	$k0, $14
	addu	$k0, $k0, 4
	mtc0	$k0, $14
	j	_restore_context
	nop
	
_restore:
	eret
	
_save_context:
	sw  	$1, 4($sp)
	sw  	$2, 8($sp)    
	sw  	$3, 12($sp)    
	sw  	$4, 16($sp)    
	sw  	$5, 20($sp)    
	sw  	$6, 24($sp)    
	sw  	$7, 28($sp)    
	sw  	$8, 32($sp)    
	sw  	$9, 36($sp)    
	sw  	$10, 40($sp)    
	sw  	$11, 44($sp)    
	sw  	$12, 48($sp)    
	sw  	$13, 52($sp)    
	sw  	$14, 56($sp)    
	sw  	$15, 60($sp)    
	sw  	$16, 64($sp)    
	sw  	$17, 68($sp)    
	sw  	$18, 72($sp)    
	sw  	$19, 76($sp)    
	sw  	$20, 80($sp)    
	sw  	$21, 84($sp)    
	sw  	$22, 88($sp)    
	sw  	$23, 92($sp)    
	sw  	$24, 96($sp)    
	sw  	$25, 100($sp)    
	sw  	$26, 104($sp)    
	sw  	$27, 108($sp)    
	# sw  	$28, 112($sp)    
	# sw  	$29, 116($sp)    
	sw  	$30, 120($sp)    
	sw  	$31, 124($sp)
	mfhi 	$k0
	sw 	$k0, 128($sp)
	mflo 	$k0
	sw 	$k0, 132($sp)
	j	_main_handler
	nop
	


_restore_context:
	lw 	$1, 4($sp)
	lw  	$2, 8($sp)    
	lw  	$3, 12($sp)    
	lw  	$4, 16($sp)    
	lw  	$5, 20($sp)    
	lw  	$6, 24($sp)    
	lw  	$7, 28($sp)    
	lw  	$8, 32($sp)    
	lw  	$9, 36($sp)    
	lw  	$10, 40($sp)    
	lw  	$11, 44($sp)    
	lw  	$12, 48($sp)    
	lw  	$13, 52($sp)    
	lw  	$14, 56($sp)    
	lw  	$15, 60($sp)    
	lw  	$16, 64($sp)    
	lw  	$17, 68($sp)    
	lw  	$18, 72($sp)    
	lw  	$19, 76($sp)    
	lw  	$20, 80($sp)    
	lw  	$21, 84($sp)    
	lw  	$22, 88($sp)    
	lw  	$23, 92($sp)    
	lw  	$24, 96($sp)    
	lw  	$25, 100($sp)    
	lw  	$26, 104($sp)    
	lw  	$27, 108($sp)    
	# lw  	$28, 112($sp)    
	# lw  	$29, 116($sp)    
	lw  	$30, 120($sp)    
	lw  	$31, 124($sp)    
	lw 	$k0, 128($sp)
	mthi 	$k0
	lw 	$k0, 132($sp)
	mtlo 	$k0
    	j 	_restore	
	nop

.text



# 0x3000
mtc0 $0 $12

# 0x3004
nor $23 $9 $5
# 0x3008
and $11 $10 $1
# 0x300c
ori $22 $31 0x3d66
# 0x3010
sh $25 22($0)
# 0x3014
lh $16 32($0)
# 0x3018
addiu $18 $21 23929
# 0x301c
lw $2 32($0)
# 0x3020
andi $16 $4 0x1327
# 0x3024
lhu $10 30($0)
# 0x3028
andi $22 $5 0x7542
# 0x302c
xori $23 $20 0xa531
# 0x3030
lw $12 24($0)
# 0x3034
and $7 $25 $1
# 0x3038
lb $30 24($0)
# 0x303c
subu $20 $2 $25
# 0x3040
sw $3 28($0)
# 0x3044
xori $5 $25 0xcc45
# 0x3048
xor $7 $9 $25
# 0x304c
srav $15 $9 $24
# 0x3050
sh $9 16($0)
# 0x3054
sllv $1 $11 $17
# 0x3058
subu $31 $15 $10
# 0x305c
sw $23 60($0)
# 0x3060
mult $18 $14
# 0x3064
ori $15 $7 0xbe49
# 0x3068
or $1 $9 $27
# 0x306c
mfhi $15
# 0x3070
subu $6 $16 $16
# 0x3074
sh $8 28($0)
# 0x3078
addu $11 $5 $9
# 0x307c
xor $18 $12 $6
# 0x3080
sltiu $30 $22 9029
# 0x3084
srlv $3 $1 $24
# 0x3088
lb $31 0($0)
# 0x308c
mthi $24
# 0x3090
sltu $13 $7 $19
# 0x3094
srl $10 $21 17
# 0x3098
sub $22 $27 $18
# 0x309c
mult $21 $19
# 0x30a0
srav $6 $14 $25
# 0x30a4
subu $20 $13 $17
# 0x30a8
lh $18 50($0)
# 0x30ac
subu $22 $15 $25
# 0x30b0
add $31 $25 $20
# 0x30b4
sllv $27 $22 $27
# 0x30b8
slt $2 $17 $20
# 0x30bc
sh $22 12($0)
# 0x30c0
xori $11 $18 0x8288
# 0x30c4
and $21 $12 $25
# 0x30c8
mflo $22
# 0x30cc
andi $19 $13 0x7eea
# 0x30d0
addi $7 $8 31357
# 0x30d4
sh $19 6($0)
# 0x30d8
addi $20 $10 12247
# 0x30dc
mtlo $15
# 0x30e0
sltiu $17 $14 17135
# 0x30e4
addi $4 $31 -13742
# 0x30e8
mfhi $10
# 0x30ec
subu $31 $13 $15
# 0x30f0
lui $30 0x415e
# 0x30f4
lbu $23 23($0)
# 0x30f8
sw $18 28($0)
# 0x30fc
sllv $10 $10 $6
# 0x3100
mthi $10
# 0x3104
mtlo $13
# 0x3108
slt $7 $25 $21
# 0x310c
sw $13 4($0)
# 0x3110
sltu $26 $3 $10
# 0x3114
sll $3 $2 16
# 0x3118
sw $5 12($0)
# 0x311c
srlv $2 $15 $26
# 0x3120
and $5 $19 $21
# 0x3124
lh $25 58($0)
# 0x3128
lb $20 15($0)
# 0x312c
lbu $15 23($0)
# 0x3130
lui $10 0x1c8e
# 0x3134
addiu $27 $25 1176
# 0x3138
sw $9 16($0)
# 0x313c
ori $8 $9 0xb9b7
# 0x3140
lw $22 108($0)
# 0x3144
sw $3 96($0)
# 0x3148
sb $15 9($0)
# 0x314c
ori $8 $2 0xba55
# 0x3150
lw $26 4($0)
# 0x3154
sub $20 $27 $30
# 0x3158
subu $9 $15 $4
# 0x315c
lh $7 62($0)
# 0x3160
mtlo $12
# 0x3164
sh $5 6($0)
# 0x3168
nor $31 $25 $22
# 0x316c
lb $1 18($0)
# 0x3170
lh $13 26($0)
# 0x3174
srlv $6 $22 $2
# 0x3178
addu $3 $8 $16
# 0x317c
sllv $4 $21 $18
# 0x3180
addu $27 $12 $1
# 0x3184
sb $4 12($0)
# 0x3188
add $17 $10 $23
# 0x318c
sw $19 4($0)
# 0x3190
lw $3 32($0)
# 0x3194
xori $2 $9 0x7d06
# 0x3198
nor $27 $10 $19
# 0x319c
lbu $3 0($0)
# 0x31a0
srav $5 $2 $20
# 0x31a4
mflo $13
# 0x31a8
srlv $1 $21 $10
# 0x31ac
sra $19 $17 22
# 0x31b0
xori $14 $30 0x1648
# 0x31b4
subu $23 $25 $18
# 0x31b8
sb $25 25($0)
# 0x31bc
sltu $23 $14 $18
# 0x31c0
lh $20 26($0)
# 0x31c4
lbu $10 12($0)
# 0x31c8
sra $14 $2 10
# 0x31cc
slti $14 $24 2236
# 0x31d0
sub $21 $25 $1
# 0x31d4
lbu $6 26($0)
# 0x31d8
xori $1 $1 0x0cdd
# 0x31dc
mfhi $27
# 0x31e0
mthi $7
# 0x31e4
mtlo $18
# 0x31e8
addiu $30 $30 594
# 0x31ec
ori $23 $2 0x032c
# 0x31f0
addiu $31 $22 28294
# 0x31f4
lw $21 4($0)
# 0x31f8
sra $7 $12 31
# 0x31fc
addu $3 $24 $25
# 0x3200
mfhi $20
# 0x3204
or $20 $1 $2
# 0x3208
xor $10 $23 $5
# 0x320c
xori $9 $15 0x1e42
# 0x3210
sltu $26 $10 $3
# 0x3214
andi $20 $25 0x5b1b
# 0x3218
sh $30 14($0)
# 0x321c
sra $21 $18 23
# 0x3220
sh $10 54($0)
# 0x3224
add $8 $4 $11
# 0x3228
srl $5 $7 2
# 0x322c
sll $12 $5 16
# 0x3230
sltu $27 $10 $22
# 0x3234
sub $27 $2 $30
# 0x3238
addu $31 $27 $5
# 0x323c
sh $2 14($0)
# 0x3240
mflo $1
# 0x3244
lh $16 10($0)
# 0x3248
lw $24 60($0)
# 0x324c
sra $1 $22 4
# 0x3250
lb $12 22($0)
# 0x3254
slti $17 $19 -22986
# 0x3258
sub $20 $4 $21
# 0x325c
addi $23 $22 31860
# 0x3260
mult $27 $6
# 0x3264
sw $15 4($0)
# 0x3268
sllv $26 $26 $2
# 0x326c
sltiu $26 $6 18902
# 0x3270
sltiu $27 $8 27964
# 0x3274
sltiu $3 $14 16418
# 0x3278
lh $10 8($0)
# 0x327c
multu $18 $21
# 0x3280
lb $17 1($0)
# 0x3284
mflo $4
# 0x3288
mtlo $7
# 0x328c
slt $10 $14 $14
# 0x3290
sw $26 16($0)
# 0x3294
srlv $20 $16 $16
# 0x3298
lbu $10 19($0)
# 0x329c
lhu $14 10($0)
# 0x32a0
addu $14 $20 $4
# 0x32a4
lhu $3 6($0)
# 0x32a8
slti $5 $24 2189
# 0x32ac
nor $20 $25 $30
# 0x32b0
andi $16 $21 0x8fdc
# 0x32b4
sll $7 $22 31
# 0x32b8
add $7 $25 $23
# 0x32bc
sltu $16 $7 $24
# 0x32c0
andi $25 $25 0x7196
# 0x32c4
or $4 $13 $18
# 0x32c8
slti $11 $24 14315
# 0x32cc
addiu $1 $7 16358
# 0x32d0
lb $15 31($0)
# 0x32d4
nor $2 $26 $15
# 0x32d8
and $14 $22 $20
# 0x32dc
sllv $30 $11 $13
# 0x32e0
mtlo $19
# 0x32e4
sltiu $13 $4 16412
# 0x32e8
addu $19 $18 $31
# 0x32ec
multu $14 $3
# 0x32f0
subu $27 $4 $8
# 0x32f4
sb $3 15($0)
# 0x32f8
or $23 $14 $19
# 0x32fc
lw $21 80($0)
# 0x3300
sw $17 16($0)
# 0x3304
sh $22 28($0)
# 0x3308
lh $5 38($0)
# 0x330c
mthi $19
# 0x3310
srl $16 $18 14
# 0x3314
addi $21 $26 -3162
# 0x3318
add $13 $25 $22
# 0x331c
xor $6 $17 $31
# 0x3320
subu $14 $14 $6
# 0x3324
sll $13 $10 22
# 0x3328
addi $13 $10 16850
# 0x332c
add $26 $22 $26
# 0x3330
lb $27 19($0)
# 0x3334
srl $9 $15 9
# 0x3338
lb $2 26($0)
# 0x333c
xori $25 $18 0xa8a8
# 0x3340
xor $22 $2 $13
# 0x3344
sub $18 $10 $2
# 0x3348
sltiu $14 $13 31909
# 0x334c
sub $16 $7 $21
# 0x3350
sb $12 11($0)
# 0x3354
addu $13 $23 $24
# 0x3358
slti $18 $20 29466
# 0x335c
mthi $15
# 0x3360
srl $26 $24 5
# 0x3364
sltiu $21 $10 30808
# 0x3368
sltiu $18 $23 7247
# 0x336c
lh $18 20($0)
# 0x3370
lbu $19 2($0)
# 0x3374
sw $2 36($0)
# 0x3378
lhu $23 10($0)
# 0x337c
lui $4 0xb3cd
# 0x3380
slti $16 $22 721
# 0x3384
sltu $21 $5 $7
# 0x3388
addu $23 $5 $12
# 0x338c
sw $20 32($0)
# 0x3390
sra $14 $19 7
# 0x3394
lui $8 0xdee8
# 0x3398
multu $9 $2
# 0x339c
lh $13 36($0)
# 0x33a0
mflo $8
# 0x33a4
lw $24 4($0)
# 0x33a8
sb $10 28($0)
# 0x33ac
srl $2 $30 11
# 0x33b0
sltu $23 $25 $11
# 0x33b4
lhu $9 2($0)
# 0x33b8
xori $2 $1 0xdf3c
# 0x33bc
lh $9 58($0)
# 0x33c0
slti $24 $15 24928
# 0x33c4
or $3 $27 $23
# 0x33c8
mfhi $5
# 0x33cc
sllv $6 $16 $25
# 0x33d0
sh $7 0($0)
# 0x33d4
sub $6 $18 $2
# 0x33d8
mfhi $24
# 0x33dc
sltiu $12 $6 6892
# 0x33e0
addu $2 $20 $14
# 0x33e4
mfhi $16
# 0x33e8
sll $30 $26 15
# 0x33ec
srav $3 $31 $23
# 0x33f0
lhu $3 10($0)
# 0x33f4
and $19 $22 $23
# 0x33f8
addu $4 $24 $21
# 0x33fc
sllv $6 $18 $20
# 0x3400
sh $10 8($0)
# 0x3404
subu $17 $15 $4
# 0x3408
lw $23 84($0)
# 0x340c
lbu $23 22($0)
# 0x3410
sll $25 $13 24
# 0x3414
lb $31 0($0)
# 0x3418
lw $18 52($0)
# 0x341c
lw $20 56($0)
# 0x3420
and $10 $26 $4
# 0x3424
sh $30 20($0)
# 0x3428
lbu $3 4($0)
# 0x342c
srav $23 $22 $4
# 0x3430
srlv $16 $13 $16
# 0x3434
lui $22 0xf64c
# 0x3438
srav $23 $15 $8
# 0x343c
sllv $15 $22 $8
# 0x3440
and $12 $14 $31
# 0x3444
sll $30 $31 20
# 0x3448
srl $3 $21 8
# 0x344c
sw $12 16($0)
# 0x3450
mtlo $16
# 0x3454
sw $16 0($0)
# 0x3458
lui $3 0xe053
# 0x345c
sra $30 $16 5
# 0x3460
sll $31 $16 28
# 0x3464
slt $6 $22 $26
# 0x3468
srav $6 $27 $3
# 0x346c
lw $13 16($0)
# 0x3470
sltiu $3 $21 11673
# 0x3474
lbu $23 27($0)
# 0x3478
sra $16 $9 12
# 0x347c
mthi $19
# 0x3480
lhu $4 16($0)
# 0x3484
addiu $1 $2 28672
# 0x3488
sb $26 25($0)
# 0x348c
and $16 $31 $18
# 0x3490
addi $13 $22 -4110
# 0x3494
lb $31 17($0)
# 0x3498
xori $20 $24 0x53df
# 0x349c
lw $13 4($0)
# 0x34a0
mthi $14
# 0x34a4
nor $21 $15 $5
# 0x34a8
xor $15 $18 $1
# 0x34ac
nor $24 $4 $11
# 0x34b0
lhu $7 4($0)
# 0x34b4
mfhi $4
# 0x34b8
sltu $24 $22 $4
# 0x34bc
lhu $11 22($0)
# 0x34c0
sh $8 46($0)
# 0x34c4
add $22 $15 $1
# 0x34c8
addu $20 $11 $30
# 0x34cc
slt $14 $2 $14
# 0x34d0
lh $18 8($0)
# 0x34d4
ori $25 $24 0x15d7
# 0x34d8
slti $14 $7 -31342
# 0x34dc
or $12 $8 $25
# 0x34e0
slti $31 $26 -18089
# 0x34e4
mthi $23
# 0x34e8
andi $30 $31 0x95b1
# 0x34ec
multu $3 $31
# 0x34f0
multu $8 $27
# 0x34f4
lb $5 4($0)
# 0x34f8
nor $26 $3 $7
# 0x34fc
andi $10 $31 0x62d9
# 0x3500
sltiu $2 $27 29073
# 0x3504
lh $30 26($0)
# 0x3508
mfhi $17
# 0x350c
mfhi $21
# 0x3510
lh $14 32($0)
# 0x3514
addi $5 $24 9359
# 0x3518
add $2 $30 $1
# 0x351c
mthi $22
# 0x3520
addu $21 $2 $16
# 0x3524
lh $9 4($0)
# 0x3528
lh $15 24($0)
# 0x352c
add $13 $8 $22
# 0x3530
sh $12 8($0)
# 0x3534
sw $25 112($0)
# 0x3538
andi $4 $18 0xa908
# 0x353c
srl $30 $24 25
# 0x3540
sw $24 16($0)
# 0x3544
and $30 $20 $1
# 0x3548
sllv $17 $17 $14
# 0x354c
sra $16 $10 6
# 0x3550
mthi $15
# 0x3554
and $1 $31 $8
# 0x3558
addu $8 $2 $8
# 0x355c
sb $8 3($0)
# 0x3560
andi $7 $9 0x14a1
# 0x3564
addu $23 $17 $30
# 0x3568
add $24 $20 $9
# 0x356c
sub $27 $13 $3
# 0x3570
srl $21 $27 17
# 0x3574
addiu $17 $23 14699
# 0x3578
nor $26 $25 $4
# 0x357c
mult $2 $24
# 0x3580
andi $14 $30 0x3d41
# 0x3584
lh $14 12($0)
# 0x3588
xor $23 $17 $13
# 0x358c
sra $14 $9 12
# 0x3590
nor $3 $15 $16
# 0x3594
nor $14 $31 $7
# 0x3598
addiu $2 $13 891
# 0x359c
sub $17 $1 $26
# 0x35a0
multu $7 $6
# 0x35a4
or $2 $5 $27
# 0x35a8
lb $7 13($0)
# 0x35ac
mult $5 $24
# 0x35b0
lb $31 20($0)
# 0x35b4
mfhi $7
# 0x35b8
and $23 $4 $14
# 0x35bc
lh $7 60($0)
# 0x35c0
slti $26 $10 1133
# 0x35c4
sh $12 28($0)
# 0x35c8
sltu $2 $20 $26
# 0x35cc
and $12 $30 $22
# 0x35d0
lh $17 26($0)
# 0x35d4
lh $22 20($0)
# 0x35d8
lbu $4 20($0)
# 0x35dc
ori $16 $3 0x703b
# 0x35e0
lhu $7 16($0)
# 0x35e4
slti $22 $31 24863
# 0x35e8
sltiu $8 $7 28670
# 0x35ec
subu $15 $19 $17
# 0x35f0
sub $26 $16 $31
# 0x35f4
lui $26 0xfd50
# 0x35f8
sll $15 $21 19
# 0x35fc
slti $9 $2 9503
# 0x3600
sra $25 $4 24
# 0x3604
mult $20 $8
# 0x3608
srl $19 $18 4
# 0x360c
sltiu $15 $9 18320
# 0x3610
addu $14 $5 $25
# 0x3614
add $11 $4 $3
# 0x3618
lw $24 0($0)
# 0x361c
sllv $23 $13 $6
# 0x3620
multu $26 $11
# 0x3624
addu $25 $25 $5
# 0x3628
mtlo $5
# 0x362c
sra $5 $19 12
# 0x3630
sb $4 15($0)
# 0x3634
sw $2 64($0)
# 0x3638
xori $30 $3 0x1fe0
# 0x363c
slti $18 $17 7614
# 0x3640
mflo $3
# 0x3644
mflo $13
# 0x3648
xori $7 $30 0x6643
# 0x364c
mflo $26
# 0x3650
sltiu $25 $11 29509
# 0x3654
and $18 $1 $13
# 0x3658
addi $30 $27 -32462
# 0x365c
sllv $9 $5 $10
# 0x3660
lw $21 28($0)
# 0x3664
lh $10 24($0)
# 0x3668
mflo $15
# 0x366c
sh $15 22($0)
# 0x3670
xori $2 $9 0x26f7
# 0x3674
sh $20 62($0)
# 0x3678
lui $13 0xedb6
# 0x367c
addu $21 $26 $22
# 0x3680
or $23 $3 $9
# 0x3684
srav $19 $23 $12
# 0x3688
and $7 $18 $10
# 0x368c
lbu $4 18($0)
# 0x3690
mflo $13
# 0x3694
sll $15 $5 11
# 0x3698
add $12 $27 $5
# 0x369c
and $25 $13 $14
# 0x36a0
xor $15 $13 $1
# 0x36a4
sh $8 38($0)
# 0x36a8
mthi $23
# 0x36ac
lb $12 30($0)
# 0x36b0
sllv $16 $20 $16
# 0x36b4
sll $13 $9 19
# 0x36b8
addu $2 $8 $8
# 0x36bc
mult $10 $27
# 0x36c0
sh $8 6($0)
# 0x36c4
lb $7 6($0)
# 0x36c8
ori $30 $23 0xdb00
# 0x36cc
subu $27 $23 $10
# 0x36d0
sw $21 28($0)
# 0x36d4
slti $7 $8 -3217
# 0x36d8
addiu $23 $30 17090
# 0x36dc
sh $30 2($0)
# 0x36e0
srl $16 $19 8
# 0x36e4
subu $15 $25 $1
# 0x36e8
mfhi $6
# 0x36ec
srlv $19 $19 $13
# 0x36f0
mtlo $17
# 0x36f4
slt $20 $16 $31
# 0x36f8
sltiu $3 $23 8742
# 0x36fc
mult $31 $14
# 0x3700
sb $4 9($0)
# 0x3704
lhu $22 6($0)
# 0x3708
mflo $20
# 0x370c
addi $19 $11 -14240
# 0x3710
or $20 $14 $2
# 0x3714
srlv $21 $22 $23
# 0x3718
lw $12 20($0)
# 0x371c
sb $19 13($0)
# 0x3720
addi $3 $8 -16604
# 0x3724
lh $12 26($0)
# 0x3728
srav $31 $18 $20
# 0x372c
add $31 $31 $2
# 0x3730
lw $25 84($0)
# 0x3734
nor $18 $2 $23
# 0x3738
lb $27 29($0)
# 0x373c
mult $14 $15
# 0x3740
or $6 $9 $23
# 0x3744
srlv $19 $11 $8
# 0x3748
sub $3 $23 $10
# 0x374c
lh $27 12($0)
# 0x3750
sw $7 20($0)
# 0x3754
sw $7 8($0)
# 0x3758
sll $15 $19 16
# 0x375c
nor $26 $26 $20
# 0x3760
xor $1 $20 $10
# 0x3764
mthi $27
# 0x3768
srav $12 $2 $12
# 0x376c
addiu $26 $17 565
# 0x3770
slti $10 $5 -11627
# 0x3774
sh $11 20($0)
# 0x3778
nor $2 $20 $5
# 0x377c
sw $12 0($0)
# 0x3780
slt $31 $31 $18
# 0x3784
lh $1 26($0)
# 0x3788
xor $6 $4 $25
# 0x378c
lbu $15 10($0)
# 0x3790
sw $26 16($0)
# 0x3794
addi $21 $15 15671
# 0x3798
addu $21 $3 $8
# 0x379c
srl $3 $8 8
# 0x37a0
addu $3 $9 $8
# 0x37a4
sltiu $13 $6 31993
# 0x37a8
lb $26 17($0)
# 0x37ac
sh $26 4($0)
# 0x37b0
sra $5 $12 24
# 0x37b4
slt $2 $8 $1
# 0x37b8
mthi $20
# 0x37bc
sltu $12 $11 $30
# 0x37c0
subu $2 $17 $13
# 0x37c4
sb $21 10($0)
# 0x37c8
and $31 $31 $5
# 0x37cc
addi $20 $26 -20567
# 0x37d0
slti $4 $23 25784
# 0x37d4
lh $27 12($0)
# 0x37d8
or $17 $27 $9
# 0x37dc
mfhi $30
# 0x37e0
andi $7 $5 0x452f
# 0x37e4
addiu $17 $3 32043
# 0x37e8
and $31 $1 $8
# 0x37ec
slti $10 $1 -11496
# 0x37f0
sllv $15 $24 $4
# 0x37f4
slti $1 $9 12431
# 0x37f8
lw $21 20($0)
# 0x37fc
lh $11 60($0)
# 0x3800
or $17 $14 $25
# 0x3804
sltu $16 $11 $22
# 0x3808
andi $24 $8 0xb965
# 0x380c
sub $27 $16 $16
# 0x3810
andi $30 $19 0x2c4f
# 0x3814
addu $6 $17 $23
# 0x3818
addi $23 $4 23386
# 0x381c
slti $26 $14 17400
# 0x3820
addiu $19 $18 4304
# 0x3824
slti $13 $21 -7039
# 0x3828
nor $18 $14 $8
# 0x382c
ori $10 $18 0x12ec
# 0x3830
srl $10 $5 12
# 0x3834
subu $16 $22 $2
# 0x3838
andi $1 $11 0x9b08
# 0x383c
sw $12 0($0)
# 0x3840
sltiu $2 $23 32263
# 0x3844
and $22 $18 $22
# 0x3848
lw $19 76($0)
# 0x384c
andi $11 $17 0x7b21
# 0x3850
sw $22 44($0)
# 0x3854
sh $16 34($0)
# 0x3858
sllv $25 $16 $10
# 0x385c
sw $12 0($0)
# 0x3860
slt $31 $22 $27
# 0x3864
xor $23 $1 $13
# 0x3868
lw $12 32($0)
# 0x386c
mthi $11
# 0x3870
add $27 $19 $11
# 0x3874
ori $7 $21 0xd533
# 0x3878
srl $11 $16 22
# 0x387c
mult $26 $31
# 0x3880
lbu $2 24($0)
# 0x3884
mtlo $6
# 0x3888
nor $31 $30 $6
# 0x388c
lh $14 24($0)
# 0x3890
and $8 $15 $17
# 0x3894
mult $26 $18
# 0x3898
sh $11 10($0)
# 0x389c
mtlo $27
# 0x38a0
add $16 $1 $21
# 0x38a4
sltiu $24 $13 14470
# 0x38a8
nor $9 $20 $19
# 0x38ac
lhu $11 6($0)
# 0x38b0
sh $1 14($0)
# 0x38b4
lui $1 0xefeb
# 0x38b8
srl $22 $17 12
# 0x38bc
subu $24 $17 $26
# 0x38c0
xor $15 $1 $22
# 0x38c4
sub $21 $18 $22
# 0x38c8
mfhi $24
# 0x38cc
slt $5 $15 $8
# 0x38d0
mflo $30
# 0x38d4
sw $22 4($0)
# 0x38d8
lhu $5 14($0)
# 0x38dc
lw $22 4($0)
# 0x38e0
slti $12 $26 -22916
# 0x38e4
sh $3 28($0)
# 0x38e8
xori $10 $24 0x45a7
# 0x38ec
and $19 $5 $13
# 0x38f0
lhu $31 30($0)
# 0x38f4
lh $4 32($0)
# 0x38f8
sll $11 $10 22
# 0x38fc
and $1 $26 $30
# 0x3900
mtlo $30
# 0x3904
or $11 $5 $23
# 0x3908
lw $6 8($0)
# 0x390c
nor $24 $7 $13
# 0x3910
lh $14 48($0)
# 0x3914
sw $9 16($0)
# 0x3918
sra $27 $24 8
# 0x391c
sra $16 $15 20
# 0x3920
or $8 $20 $25
# 0x3924
lw $21 4($0)
# 0x3928
srl $5 $14 6
# 0x392c
lui $1 0x768f
# 0x3930
ori $9 $2 0xfc4f
# 0x3934
lhu $12 20($0)
# 0x3938
lui $12 0x0520
# 0x393c
sltu $24 $12 $27
# 0x3940
lh $22 20($0)
# 0x3944
sh $30 40($0)
# 0x3948
slt $20 $10 $16
# 0x394c
sb $18 30($0)
# 0x3950
sh $22 10($0)
# 0x3954
xori $7 $16 0x5667
# 0x3958
mult $16 $9
# 0x395c
srav $6 $11 $11
# 0x3960
ori $31 $15 0xbd80
# 0x3964
mfhi $22
# 0x3968
mflo $26
# 0x396c
sll $12 $16 19
# 0x3970
subu $2 $15 $27
# 0x3974
sh $2 30($0)
# 0x3978
sw $24 92($0)
# 0x397c
lb $3 15($0)
# 0x3980
sll $16 $14 4
# 0x3984
mfhi $19
# 0x3988
lbu $22 3($0)
# 0x398c
xor $9 $14 $2
# 0x3990
srl $4 $1 1
# 0x3994
lui $23 0xb797
# 0x3998
addu $20 $17 $20
# 0x399c
sltiu $27 $4 11313
# 0x39a0
xor $3 $11 $25
# 0x39a4
or $22 $5 $26
# 0x39a8
lb $23 13($0)
# 0x39ac
slti $18 $18 4824
# 0x39b0
sra $17 $26 15
# 0x39b4
and $9 $12 $26
# 0x39b8
xori $10 $15 0xe265
# 0x39bc
sll $19 $11 25
# 0x39c0
lui $26 0x2e7b
# 0x39c4
and $13 $8 $13
# 0x39c8
sll $7 $24 31
# 0x39cc
lhu $4 12($0)
# 0x39d0
sw $12 24($0)
# 0x39d4
sllv $25 $8 $20
# 0x39d8
add $17 $10 $16
# 0x39dc
lui $26 0x811e
# 0x39e0
sw $16 120($0)
# 0x39e4
mfhi $13
# 0x39e8
mtlo $3
# 0x39ec
addi $1 $8 -1818
# 0x39f0
lb $8 23($0)
# 0x39f4
slti $19 $18 839
# 0x39f8
mflo $2
# 0x39fc
multu $6 $7
# 0x3a00
mult $24 $30
# 0x3a04
mfhi $24
# 0x3a08
addu $25 $14 $8
# 0x3a0c
mthi $14
# 0x3a10
sltu $20 $27 $24
# 0x3a14
lw $12 44($0)
# 0x3a18
subu $23 $27 $23
# 0x3a1c
sw $25 92($0)
# 0x3a20
xor $4 $27 $1
# 0x3a24
slt $22 $15 $18
# 0x3a28
lw $27 56($0)
# 0x3a2c
sh $3 28($0)
# 0x3a30
lh $5 6($0)
# 0x3a34
xor $23 $18 $25
# 0x3a38
addi $22 $12 16273
# 0x3a3c
xori $19 $24 0x982a
# 0x3a40
sltiu $8 $10 14710
# 0x3a44
xori $18 $30 0x185e
# 0x3a48
mthi $12
# 0x3a4c
xor $16 $5 $30
# 0x3a50
lh $21 16($0)
# 0x3a54
xor $11 $18 $6
# 0x3a58
or $1 $10 $18
# 0x3a5c
lhu $2 12($0)
# 0x3a60
sw $10 24($0)
# 0x3a64
mfhi $26
# 0x3a68
or $22 $18 $11
# 0x3a6c
mult $20 $25
# 0x3a70
sw $26 16($0)
# 0x3a74
lh $20 18($0)
# 0x3a78
sw $6 124($0)
# 0x3a7c
lhu $11 12($0)
# 0x3a80
nor $26 $13 $25
# 0x3a84
mfhi $25
# 0x3a88
mtlo $24
# 0x3a8c
lb $26 19($0)
# 0x3a90
sltu $4 $18 $14
# 0x3a94
mfhi $2
# 0x3a98
sllv $2 $1 $23
# 0x3a9c
lw $3 0($0)
# 0x3aa0
xori $13 $27 0xa875
# 0x3aa4
sub $14 $31 $21
# 0x3aa8
slti $2 $6 -23828
# 0x3aac
xor $20 $24 $17
# 0x3ab0
mflo $8
# 0x3ab4
slti $30 $11 18968
# 0x3ab8
sltiu $30 $21 3615
# 0x3abc
sllv $12 $18 $12
# 0x3ac0
xor $10 $24 $7
# 0x3ac4
lw $20 16($0)
# 0x3ac8
nor $23 $8 $24
# 0x3acc
addiu $17 $8 1342
# 0x3ad0
srl $17 $18 24
# 0x3ad4
srlv $12 $18 $3
# 0x3ad8
and $16 $4 $23
# 0x3adc
sllv $16 $15 $2
# 0x3ae0
and $1 $13 $21
# 0x3ae4
lh $5 30($0)
# 0x3ae8
sw $12 64($0)
# 0x3aec
lui $8 0xc476
# 0x3af0
xori $3 $11 0xaf44
# 0x3af4
multu $23 $22
# 0x3af8
slti $5 $17 -31329
# 0x3afc
sll $15 $14 7
# 0x3b00
xor $6 $27 $3
# 0x3b04
multu $4 $26
# 0x3b08
mtlo $17
# 0x3b0c
lui $6 0x33be
# 0x3b10
sub $20 $1 $4
# 0x3b14
sra $15 $19 24
# 0x3b18
lb $9 7($0)
# 0x3b1c
sub $20 $20 $22
# 0x3b20
sll $4 $31 4
# 0x3b24
or $12 $20 $26
# 0x3b28
xori $10 $11 0x9069
# 0x3b2c
lb $12 31($0)
# 0x3b30
add $9 $14 $31
# 0x3b34
lw $2 28($0)
# 0x3b38
lui $1 0xf3d7
# 0x3b3c
srlv $25 $25 $3
# 0x3b40
sw $9 0($0)
# 0x3b44
slti $23 $3 18641
# 0x3b48
or $13 $26 $3
# 0x3b4c
sub $3 $20 $7
# 0x3b50
srlv $8 $20 $15
# 0x3b54
ori $30 $6 0x5f4b
# 0x3b58
addu $31 $9 $25
# 0x3b5c
addiu $19 $6 26986
# 0x3b60
sb $22 5($0)
# 0x3b64
multu $1 $6
# 0x3b68
lw $22 16($0)
# 0x3b6c
lb $9 11($0)
# 0x3b70
or $4 $27 $6
# 0x3b74
mfhi $16
# 0x3b78
sllv $2 $6 $21
# 0x3b7c
subu $9 $26 $21
# 0x3b80
subu $20 $24 $5
# 0x3b84
nor $8 $26 $18
# 0x3b88
mflo $15
# 0x3b8c
add $12 $24 $19
# 0x3b90
mfhi $20
# 0x3b94
xor $5 $7 $25
# 0x3b98
lh $13 2($0)
# 0x3b9c
slt $1 $5 $11
# 0x3ba0
sll $14 $16 13
# 0x3ba4
mult $9 $16
# 0x3ba8
add $4 $5 $10
# 0x3bac
sra $9 $18 9
# 0x3bb0
lb $27 11($0)
# 0x3bb4
add $15 $17 $20
# 0x3bb8
lbu $9 2($0)
# 0x3bbc
subu $13 $10 $9
# 0x3bc0
lhu $23 4($0)
# 0x3bc4
add $19 $26 $11
# 0x3bc8
sub $7 $22 $10
# 0x3bcc
srlv $6 $9 $22
# 0x3bd0
or $18 $23 $21
# 0x3bd4
addi $8 $20 -11792
# 0x3bd8
srlv $25 $13 $21
# 0x3bdc
addiu $2 $30 10390
# 0x3be0
addiu $18 $1 743
# 0x3be4
addu $26 $24 $4
# 0x3be8
mfhi $24
# 0x3bec
sub $19 $15 $23
# 0x3bf0
slt $20 $16 $22
# 0x3bf4
mflo $30
# 0x3bf8
lui $4 0xc1d3
# 0x3bfc
sltu $18 $4 $12
# 0x3c00
addi $9 $19 -1615
# 0x3c04
lh $22 14($0)
# 0x3c08
lui $20 0x8102
# 0x3c0c
mult $4 $31
# 0x3c10
addu $5 $3 $17
# 0x3c14
sw $3 124($0)
# 0x3c18
subu $6 $27 $27
# 0x3c1c
mflo $16
# 0x3c20
mthi $8
# 0x3c24
srav $19 $8 $31
# 0x3c28
slt $19 $12 $2
# 0x3c2c
sra $20 $4 14
# 0x3c30
lw $13 4($0)
# 0x3c34
slt $11 $11 $12
# 0x3c38
sllv $12 $23 $23
# 0x3c3c
addiu $1 $24 13673
# 0x3c40
sll $11 $25 11
# 0x3c44
or $23 $22 $5
# 0x3c48
sw $7 64($0)
# 0x3c4c
lui $1 0x028d
# 0x3c50
sh $1 4($0)
# 0x3c54
mtlo $14
# 0x3c58
sra $11 $20 28
# 0x3c5c
xori $14 $19 0x7370
# 0x3c60
lui $25 0x26a8
# 0x3c64
slt $16 $21 $17
# 0x3c68
sw $7 8($0)
# 0x3c6c
mtlo $20
# 0x3c70
lui $13 0xac8c
# 0x3c74
sltu $3 $18 $15
# 0x3c78
mflo $3
# 0x3c7c
mthi $15
# 0x3c80
slt $18 $21 $26
# 0x3c84
lbu $27 8($0)
# 0x3c88
lb $9 9($0)
# 0x3c8c
lhu $11 12($0)
# 0x3c90
subu $1 $14 $10
# 0x3c94
srl $24 $19 26
# 0x3c98
srav $20 $18 $18
# 0x3c9c
mthi $10
# 0x3ca0
srl $7 $10 12
# 0x3ca4
mthi $30
# 0x3ca8
mult $2 $15
# 0x3cac
sb $3 12($0)
# 0x3cb0
lw $23 24($0)
# 0x3cb4
addiu $5 $13 2491
# 0x3cb8
add $19 $18 $22
# 0x3cbc
xor $12 $18 $2
# 0x3cc0
and $27 $7 $23
# 0x3cc4
srav $31 $17 $17
# 0x3cc8
mflo $8
# 0x3ccc
sllv $3 $7 $12
# 0x3cd0
slt $12 $23 $15
# 0x3cd4
sb $1 14($0)
# 0x3cd8
sub $7 $4 $15
# 0x3cdc
nor $1 $8 $11
# 0x3ce0
lh $24 24($0)
# 0x3ce4
xor $12 $11 $17
# 0x3ce8
andi $23 $31 0x775c
# 0x3cec
lbu $10 10($0)
# 0x3cf0
mfhi $16
# 0x3cf4
sh $7 2($0)
# 0x3cf8
srl $23 $13 3
# 0x3cfc
lw $24 88($0)
# 0x3d00
mtlo $8
# 0x3d04
add $2 $9 $4
# 0x3d08
srlv $9 $23 $19
# 0x3d0c
multu $26 $7
# 0x3d10
add $8 $19 $25
# 0x3d14
sll $4 $3 17
# 0x3d18
mtlo $7
# 0x3d1c
mult $25 $4
# 0x3d20
lw $12 20($0)
# 0x3d24
lui $23 0x448f
# 0x3d28
xor $4 $24 $16
# 0x3d2c
sra $18 $4 22
# 0x3d30
mflo $12
# 0x3d34
mult $19 $1
# 0x3d38
sw $23 16($0)
# 0x3d3c
lui $25 0xa224
# 0x3d40
sra $31 $13 21
# 0x3d44
sw $30 88($0)
# 0x3d48
subu $21 $19 $2
# 0x3d4c
nor $13 $11 $8
# 0x3d50
slti $10 $1 -1127
# 0x3d54
srlv $21 $31 $11
# 0x3d58
sra $4 $6 18
# 0x3d5c
nor $19 $22 $11
# 0x3d60
mflo $14
# 0x3d64
lw $1 92($0)
# 0x3d68
sra $27 $13 20
# 0x3d6c
srav $19 $22 $22
# 0x3d70
mult $6 $7
# 0x3d74
lhu $15 0($0)
# 0x3d78
slt $26 $6 $24
# 0x3d7c
subu $4 $22 $10
# 0x3d80
mult $6 $17
# 0x3d84
mthi $8
# 0x3d88
sub $21 $12 $19
# 0x3d8c
mthi $8
# 0x3d90
multu $5 $5
# 0x3d94
multu $8 $18
# 0x3d98
sh $7 22($0)
# 0x3d9c
xor $31 $23 $13
# 0x3da0
andi $6 $19 0x08aa
# 0x3da4
mflo $17
# 0x3da8
srav $1 $4 $9
# 0x3dac
sh $3 4($0)
# 0x3db0
mfhi $1
# 0x3db4
sh $14 48($0)
# 0x3db8
lbu $11 23($0)
# 0x3dbc
subu $24 $10 $27
# 0x3dc0
sw $15 28($0)
# 0x3dc4
lw $10 12($0)
# 0x3dc8
mfhi $24
# 0x3dcc
lh $9 14($0)
# 0x3dd0
addu $17 $5 $23
# 0x3dd4
sw $3 20($0)
# 0x3dd8
lw $26 12($0)
# 0x3ddc
sll $31 $7 18
# 0x3de0
sllv $12 $18 $14
# 0x3de4
addi $8 $26 -9363
# 0x3de8
lb $14 4($0)
# 0x3dec
sltu $22 $1 $20
# 0x3df0
lw $12 112($0)
# 0x3df4
slt $8 $6 $26
# 0x3df8
or $23 $2 $6
# 0x3dfc
mthi $24
# 0x3e00
sltiu $17 $13 21101
# 0x3e04
addiu $10 $11 18476
# 0x3e08
sb $21 17($0)
# 0x3e0c
lh $18 8($0)
# 0x3e10
mthi $12
# 0x3e14
nor $5 $21 $7
# 0x3e18
sh $8 10($0)
# 0x3e1c
lh $26 24($0)
# 0x3e20
mthi $14
# 0x3e24
addu $7 $11 $11
# 0x3e28
subu $22 $17 $3
# 0x3e2c
slti $10 $6 -21058
# 0x3e30
lh $30 20($0)
# 0x3e34
lui $31 0x8b1b
# 0x3e38
sllv $27 $11 $6
# 0x3e3c
sub $19 $31 $7
# 0x3e40
sw $15 20($0)
# 0x3e44
add $13 $20 $10
# 0x3e48
sll $14 $25 27
# 0x3e4c
multu $12 $4
# 0x3e50
addiu $17 $7 30545
# 0x3e54
sll $9 $30 9
# 0x3e58
lh $21 56($0)
# 0x3e5c
lb $15 2($0)
# 0x3e60
lbu $11 24($0)
# 0x3e64
srav $18 $16 $20
# 0x3e68
lb $3 18($0)
# 0x3e6c
lw $13 56($0)
# 0x3e70
mult $14 $13
# 0x3e74
sltu $21 $13 $31
# 0x3e78
sb $6 22($0)
# 0x3e7c
addi $16 $31 28577
# 0x3e80
mult $31 $13
# 0x3e84
multu $16 $27
# 0x3e88
sh $12 0($0)
# 0x3e8c
subu $15 $16 $15
# 0x3e90
nor $30 $20 $17
# 0x3e94
sltiu $7 $23 17122
# 0x3e98
nor $3 $25 $21
# 0x3e9c
lbu $22 30($0)
# 0x3ea0
multu $18 $23
# 0x3ea4
lb $5 8($0)
# 0x3ea8
mthi $19
# 0x3eac
sll $15 $9 6
# 0x3eb0
lhu $24 12($0)
# 0x3eb4
sub $18 $31 $21
# 0x3eb8
sra $9 $1 20
# 0x3ebc
slti $13 $20 5559
# 0x3ec0
slt $13 $14 $27
# 0x3ec4
or $14 $18 $24
# 0x3ec8
addiu $6 $2 26103
# 0x3ecc
lbu $17 3($0)
# 0x3ed0
lh $8 28($0)
# 0x3ed4
sw $22 4($0)
# 0x3ed8
mthi $6
# 0x3edc
or $1 $4 $27
# 0x3ee0
mfhi $15
# 0x3ee4
lw $15 20($0)
# 0x3ee8
mult $1 $3
# 0x3eec
sltiu $1 $30 31724
# 0x3ef0
mfhi $14
# 0x3ef4
add $18 $26 $31
# 0x3ef8
add $6 $18 $25
# 0x3efc
lh $31 54($0)
# 0x3f00
sh $13 22($0)
# 0x3f04
add $25 $20 $20
# 0x3f08
lui $24 0x4ad3
# 0x3f0c
sb $13 30($0)
# 0x3f10
addi $3 $26 -26593
# 0x3f14
sll $1 $17 5
# 0x3f18
sh $25 28($0)
# 0x3f1c
lhu $14 0($0)
# 0x3f20
sra $17 $1 0
# 0x3f24
addiu $12 $2 20413
# 0x3f28
lh $21 16($0)
# 0x3f2c
subu $14 $8 $26
# 0x3f30
and $9 $4 $26
# 0x3f34
mfhi $19
# 0x3f38
slti $16 $8 6643
# 0x3f3c
mthi $26
# 0x3f40
sw $7 8($0)
# 0x3f44
lb $25 23($0)
# 0x3f48
lhu $27 0($0)
# 0x3f4c
mflo $26
# 0x3f50
ori $26 $10 0xdda4
# 0x3f54
addiu $1 $20 6276
# 0x3f58
sb $31 24($0)
# 0x3f5c
sh $31 0($0)
# 0x3f60
mfhi $27
# 0x3f64
xor $15 $26 $14
# 0x3f68
lw $31 68($0)
# 0x3f6c
multu $22 $14
# 0x3f70
sw $27 24($0)
# 0x3f74
srav $12 $2 $20
# 0x3f78
sh $19 48($0)
# 0x3f7c
sw $1 20($0)
# 0x3f80
addiu $27 $22 11487
# 0x3f84
or $11 $11 $22
# 0x3f88
lui $18 0xaedd
# 0x3f8c
or $1 $13 $23
# 0x3f90
sw $6 48($0)
# 0x3f94
and $11 $11 $30
# 0x3f98
lh $14 56($0)
# 0x3f9c
sb $4 3($0)
# 0x3fa0
lbu $4 3($0)

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop