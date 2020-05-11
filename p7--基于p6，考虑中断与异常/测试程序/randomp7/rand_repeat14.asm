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
addu $30 $17 $27
# 0x3008
multu $14 $22
# 0x300c
lui $9 0xbe07
# 0x3010
sllv $12 $31 $10
# 0x3014
srav $2 $11 $11
# 0x3018
sw $13 16($0)
# 0x301c
mult $30 $20
# 0x3020
nor $5 $4 $12
# 0x3024
multu $2 $20
# 0x3028
ori $25 $9 0xa957
# 0x302c
srav $6 $20 $14
# 0x3030
addi $3 $4 24143
# 0x3034
sw $10 96($0)
# 0x3038
multu $5 $25
# 0x303c
add $26 $12 $27
# 0x3040
or $14 $14 $2
# 0x3044
lui $12 0x7272
# 0x3048
addu $1 $13 $26
# 0x304c
lb $2 29($0)
# 0x3050
mtlo $4
# 0x3054
mthi $19
# 0x3058
xor $8 $25 $18
# 0x305c
mult $7 $26
# 0x3060
ori $9 $9 0x5b05
# 0x3064
sra $25 $20 14
# 0x3068
slti $9 $4 21209
# 0x306c
mfhi $13
# 0x3070
sw $19 100($0)
# 0x3074
lui $13 0x1585
# 0x3078
lb $24 13($0)
# 0x307c
or $1 $13 $2
# 0x3080
mfhi $4
# 0x3084
sltiu $10 $13 13961
# 0x3088
lui $23 0x837e
# 0x308c
lh $17 22($0)
# 0x3090
sllv $27 $3 $25
# 0x3094
mfhi $19
# 0x3098
addu $25 $13 $23
# 0x309c
subu $14 $2 $30
# 0x30a0
addi $25 $1 16493
# 0x30a4
sw $1 92($0)
# 0x30a8
sw $26 12($0)
# 0x30ac
lbu $19 11($0)
# 0x30b0
andi $11 $9 0xbd75
# 0x30b4
slt $12 $14 $25
# 0x30b8
sb $9 24($0)
# 0x30bc
subu $2 $17 $4
# 0x30c0
sw $2 8($0)
# 0x30c4
add $30 $10 $6
# 0x30c8
sh $23 40($0)
# 0x30cc
sra $10 $23 0
# 0x30d0
xor $14 $30 $11
# 0x30d4
lw $17 16($0)
# 0x30d8
sh $31 14($0)
# 0x30dc
lb $6 23($0)
# 0x30e0
andi $9 $12 0x1234
# 0x30e4
mfhi $30
# 0x30e8
or $14 $30 $19
# 0x30ec
srav $19 $22 $14
# 0x30f0
lw $27 28($0)
# 0x30f4
mtlo $9
# 0x30f8
lh $2 8($0)
# 0x30fc
subu $9 $3 $18
# 0x3100
sb $24 0($0)
# 0x3104
lbu $7 12($0)
# 0x3108
or $8 $2 $12
# 0x310c
lbu $21 14($0)
# 0x3110
slt $20 $27 $27
# 0x3114
sllv $3 $26 $20
# 0x3118
lh $5 42($0)
# 0x311c
lbu $14 18($0)
# 0x3120
slt $26 $22 $2
# 0x3124
slt $21 $17 $22
# 0x3128
lh $26 20($0)
# 0x312c
subu $1 $13 $12
# 0x3130
add $12 $15 $12
# 0x3134
srav $15 $6 $24
# 0x3138
sub $19 $12 $5
# 0x313c
addiu $30 $14 6895
# 0x3140
multu $8 $22
# 0x3144
lbu $18 0($0)
# 0x3148
lbu $22 5($0)
# 0x314c
srav $17 $9 $21
# 0x3150
mfhi $15
# 0x3154
lw $21 20($0)
# 0x3158
sltiu $31 $7 8565
# 0x315c
sll $26 $25 11
# 0x3160
lw $30 16($0)
# 0x3164
sll $25 $22 1
# 0x3168
lh $4 12($0)
# 0x316c
slti $10 $7 32550
# 0x3170
slti $3 $30 -3632
# 0x3174
sltiu $3 $12 936
# 0x3178
sh $10 22($0)
# 0x317c
sub $30 $15 $13
# 0x3180
sra $27 $21 1
# 0x3184
multu $30 $23
# 0x3188
lui $14 0xb218
# 0x318c
add $5 $4 $16
# 0x3190
ori $18 $16 0x88f7
# 0x3194
sh $3 20($0)
# 0x3198
lb $31 20($0)
# 0x319c
srl $24 $9 29
# 0x31a0
xori $19 $19 0xb26a
# 0x31a4
lh $22 0($0)
# 0x31a8
slt $16 $16 $17
# 0x31ac
ori $2 $20 0xccbb
# 0x31b0
srlv $4 $10 $11
# 0x31b4
lb $9 26($0)
# 0x31b8
ori $5 $12 0xa45c
# 0x31bc
add $6 $31 $6
# 0x31c0
sltu $10 $27 $17
# 0x31c4
xori $27 $9 0x836a
# 0x31c8
sw $7 44($0)
# 0x31cc
ori $23 $30 0x1850
# 0x31d0
lbu $9 15($0)
# 0x31d4
mflo $17
# 0x31d8
lui $13 0xf8d0
# 0x31dc
lb $24 19($0)
# 0x31e0
srl $20 $6 10
# 0x31e4
addiu $9 $15 17806
# 0x31e8
srlv $22 $30 $20
# 0x31ec
srl $15 $17 18
# 0x31f0
srav $13 $22 $31
# 0x31f4
mult $26 $25
# 0x31f8
xori $24 $23 0x14e8
# 0x31fc
lh $13 8($0)
# 0x3200
slt $23 $20 $4
# 0x3204
mthi $23
# 0x3208
multu $31 $1
# 0x320c
lw $11 28($0)
# 0x3210
mult $21 $24
# 0x3214
slt $5 $15 $5
# 0x3218
lbu $11 9($0)
# 0x321c
multu $18 $18
# 0x3220
ori $1 $9 0x1dcd
# 0x3224
xori $4 $2 0x849b
# 0x3228
sltu $1 $26 $25
# 0x322c
sll $12 $31 27
# 0x3230
sra $31 $30 24
# 0x3234
nor $25 $3 $12
# 0x3238
nor $6 $14 $27
# 0x323c
add $18 $30 $9
# 0x3240
sra $1 $12 31
# 0x3244
mfhi $6
# 0x3248
sw $16 56($0)
# 0x324c
andi $31 $11 0x204a
# 0x3250
xor $14 $10 $7
# 0x3254
sra $20 $17 0
# 0x3258
sb $3 20($0)
# 0x325c
xor $19 $27 $22
# 0x3260
sllv $19 $14 $10
# 0x3264
lb $31 5($0)
# 0x3268
sw $10 16($0)
# 0x326c
lui $19 0x8e72
# 0x3270
sub $5 $17 $15
# 0x3274
lui $30 0x0dbe
# 0x3278
andi $30 $14 0x2f16
# 0x327c
sra $5 $5 4
# 0x3280
add $9 $5 $9
# 0x3284
mfhi $17
# 0x3288
slti $3 $14 -4040
# 0x328c
xor $30 $21 $26
# 0x3290
addiu $3 $2 366
# 0x3294
sllv $27 $31 $3
# 0x3298
or $15 $16 $6
# 0x329c
mtlo $4
# 0x32a0
sw $18 44($0)
# 0x32a4
lw $31 16($0)
# 0x32a8
lw $7 0($0)
# 0x32ac
mflo $19
# 0x32b0
sra $16 $2 0
# 0x32b4
sh $30 48($0)
# 0x32b8
lbu $9 28($0)
# 0x32bc
sb $11 9($0)
# 0x32c0
andi $24 $3 0x1347
# 0x32c4
xori $2 $2 0x9d8a
# 0x32c8
subu $13 $19 $5
# 0x32cc
lw $12 68($0)
# 0x32d0
subu $23 $21 $7
# 0x32d4
multu $24 $17
# 0x32d8
mtlo $20
# 0x32dc
lw $2 16($0)
# 0x32e0
sll $4 $25 5
# 0x32e4
sub $23 $7 $10
# 0x32e8
slt $5 $5 $1
# 0x32ec
srav $7 $21 $21
# 0x32f0
lw $5 28($0)
# 0x32f4
srlv $8 $8 $30
# 0x32f8
and $27 $9 $1
# 0x32fc
srl $8 $18 30
# 0x3300
addiu $23 $19 20610
# 0x3304
lui $22 0xe30d
# 0x3308
and $25 $17 $14
# 0x330c
lb $7 5($0)
# 0x3310
lw $5 16($0)
# 0x3314
mtlo $10
# 0x3318
sw $21 120($0)
# 0x331c
mfhi $3
# 0x3320
subu $4 $6 $26
# 0x3324
mfhi $4
# 0x3328
nor $30 $9 $12
# 0x332c
addi $6 $9 -2967
# 0x3330
mult $13 $3
# 0x3334
subu $30 $2 $27
# 0x3338
sh $4 28($0)
# 0x333c
sllv $21 $25 $6
# 0x3340
sh $4 12($0)
# 0x3344
and $26 $7 $20
# 0x3348
mtlo $6
# 0x334c
xor $31 $10 $30
# 0x3350
mflo $16
# 0x3354
lbu $10 29($0)
# 0x3358
or $3 $4 $4
# 0x335c
sltu $5 $26 $17
# 0x3360
mthi $13
# 0x3364
lh $25 14($0)
# 0x3368
mfhi $14
# 0x336c
xori $13 $12 0x08b9
# 0x3370
ori $22 $7 0xb05a
# 0x3374
mthi $19
# 0x3378
addiu $16 $31 26628
# 0x337c
addi $18 $6 -7833
# 0x3380
ori $30 $6 0xa4e7
# 0x3384
mthi $26
# 0x3388
xori $4 $11 0x4c6c
# 0x338c
mfhi $5
# 0x3390
xori $12 $12 0xafc2
# 0x3394
addu $13 $5 $12
# 0x3398
sub $22 $15 $20
# 0x339c
mtlo $10
# 0x33a0
lh $13 22($0)
# 0x33a4
add $17 $22 $8
# 0x33a8
lui $22 0xc0de
# 0x33ac
lhu $21 12($0)
# 0x33b0
sll $31 $16 14
# 0x33b4
sll $24 $12 2
# 0x33b8
mflo $19
# 0x33bc
sh $3 26($0)
# 0x33c0
lw $24 24($0)
# 0x33c4
subu $7 $1 $8
# 0x33c8
multu $19 $7
# 0x33cc
and $14 $20 $4
# 0x33d0
multu $10 $4
# 0x33d4
lh $25 14($0)
# 0x33d8
and $21 $22 $16
# 0x33dc
sll $9 $20 31
# 0x33e0
lhu $3 16($0)
# 0x33e4
sh $11 30($0)
# 0x33e8
srlv $18 $12 $24
# 0x33ec
andi $11 $27 0x0b33
# 0x33f0
sltu $24 $9 $9
# 0x33f4
sw $13 96($0)
# 0x33f8
ori $2 $31 0x9524
# 0x33fc
srlv $18 $14 $1
# 0x3400
sltu $31 $10 $20
# 0x3404
addu $23 $27 $26
# 0x3408
nor $9 $30 $13
# 0x340c
srl $12 $20 9
# 0x3410
mthi $1
# 0x3414
nor $6 $6 $24
# 0x3418
nor $17 $12 $13
# 0x341c
sra $31 $8 31
# 0x3420
lw $27 100($0)
# 0x3424
nor $18 $1 $2
# 0x3428
mthi $7
# 0x342c
srl $12 $4 13
# 0x3430
ori $17 $13 0x6d56
# 0x3434
xori $22 $21 0x1cc2
# 0x3438
sw $16 108($0)
# 0x343c
andi $11 $19 0x361d
# 0x3440
xori $13 $3 0x7d3c
# 0x3444
sltu $12 $22 $16
# 0x3448
sltiu $17 $4 20451
# 0x344c
lb $26 30($0)
# 0x3450
srav $23 $26 $13
# 0x3454
sltu $1 $20 $10
# 0x3458
addiu $13 $10 2625
# 0x345c
sw $17 68($0)
# 0x3460
lh $23 20($0)
# 0x3464
subu $9 $12 $24
# 0x3468
sw $30 16($0)
# 0x346c
add $11 $6 $23
# 0x3470
add $16 $23 $26
# 0x3474
addu $16 $24 $1
# 0x3478
sll $19 $5 30
# 0x347c
srav $25 $26 $9
# 0x3480
addiu $17 $9 1609
# 0x3484
sub $9 $23 $6
# 0x3488
lbu $14 27($0)
# 0x348c
subu $5 $24 $23
# 0x3490
slti $18 $27 16025
# 0x3494
sh $13 4($0)
# 0x3498
mult $31 $23
# 0x349c
sra $2 $1 13
# 0x34a0
sw $14 112($0)
# 0x34a4
lh $26 26($0)
# 0x34a8
srl $12 $30 5
# 0x34ac
xor $22 $22 $12
# 0x34b0
mfhi $26
# 0x34b4
addu $4 $10 $14
# 0x34b8
sllv $30 $2 $19
# 0x34bc
ori $26 $12 0x5b79
# 0x34c0
nor $25 $17 $13
# 0x34c4
sw $16 4($0)
# 0x34c8
lh $6 0($0)
# 0x34cc
sltu $19 $26 $14
# 0x34d0
mflo $26
# 0x34d4
addu $11 $13 $24
# 0x34d8
xor $4 $15 $4
# 0x34dc
sh $24 28($0)
# 0x34e0
mflo $25
# 0x34e4
andi $27 $10 0x5f30
# 0x34e8
srlv $25 $2 $14
# 0x34ec
lh $24 22($0)
# 0x34f0
lui $20 0xacc9
# 0x34f4
and $14 $7 $26
# 0x34f8
add $7 $24 $15
# 0x34fc
lui $27 0x0821
# 0x3500
nor $11 $19 $8
# 0x3504
and $4 $6 $24
# 0x3508
lbu $4 0($0)
# 0x350c
sh $13 42($0)
# 0x3510
lbu $27 18($0)
# 0x3514
lh $5 12($0)
# 0x3518
addiu $8 $13 14072
# 0x351c
sltu $21 $12 $7
# 0x3520
srav $31 $1 $21
# 0x3524
sltiu $11 $25 10321
# 0x3528
or $11 $12 $8
# 0x352c
sra $3 $31 8
# 0x3530
sltiu $22 $12 8753
# 0x3534
multu $20 $22
# 0x3538
slti $23 $1 6414
# 0x353c
sll $13 $27 12
# 0x3540
sw $22 120($0)
# 0x3544
sllv $9 $16 $27
# 0x3548
sltu $9 $5 $26
# 0x354c
lhu $18 0($0)
# 0x3550
sub $12 $18 $6
# 0x3554
xori $20 $18 0x1826
# 0x3558
lw $31 20($0)
# 0x355c
lhu $25 14($0)
# 0x3560
subu $1 $1 $30
# 0x3564
or $24 $26 $1
# 0x3568
addu $31 $11 $19
# 0x356c
ori $30 $16 0x6add
# 0x3570
slti $12 $15 14938
# 0x3574
lh $13 6($0)
# 0x3578
subu $16 $19 $26
# 0x357c
lhu $2 12($0)
# 0x3580
mult $23 $12
# 0x3584
sltiu $15 $20 3876
# 0x3588
lbu $2 19($0)
# 0x358c
srl $18 $4 1
# 0x3590
srl $13 $9 8
# 0x3594
srl $5 $18 10
# 0x3598
lw $10 24($0)
# 0x359c
sltiu $1 $4 12944
# 0x35a0
addi $16 $3 6763
# 0x35a4
lw $4 8($0)
# 0x35a8
sllv $17 $15 $18
# 0x35ac
lw $6 12($0)
# 0x35b0
lw $10 20($0)
# 0x35b4
nor $9 $21 $19
# 0x35b8
lui $7 0xacd8
# 0x35bc
subu $20 $2 $8
# 0x35c0
lh $9 4($0)
# 0x35c4
andi $16 $1 0x6ea5
# 0x35c8
sb $9 2($0)
# 0x35cc
srl $8 $31 15
# 0x35d0
mtlo $2
# 0x35d4
lbu $31 8($0)
# 0x35d8
multu $7 $10
# 0x35dc
srl $2 $30 0
# 0x35e0
ori $21 $15 0x575d
# 0x35e4
sllv $21 $5 $25
# 0x35e8
sltu $4 $17 $8
# 0x35ec
lui $7 0xe8ea
# 0x35f0
ori $4 $12 0xda86
# 0x35f4
sltu $11 $2 $14
# 0x35f8
sll $3 $19 6
# 0x35fc
mfhi $22
# 0x3600
sb $18 15($0)
# 0x3604
and $12 $27 $3
# 0x3608
lbu $8 31($0)
# 0x360c
addiu $17 $12 31441
# 0x3610
lbu $14 16($0)
# 0x3614
xor $4 $30 $31
# 0x3618
lw $5 8($0)
# 0x361c
xori $4 $21 0x0903
# 0x3620
lh $11 2($0)
# 0x3624
lui $13 0x538b
# 0x3628
sh $25 56($0)
# 0x362c
sub $14 $18 $27
# 0x3630
multu $22 $24
# 0x3634
sw $1 20($0)
# 0x3638
add $11 $31 $15
# 0x363c
lbu $12 24($0)
# 0x3640
sltu $23 $8 $8
# 0x3644
or $7 $14 $26
# 0x3648
addi $18 $15 -7038
# 0x364c
sw $17 12($0)
# 0x3650
multu $5 $20
# 0x3654
lb $21 16($0)
# 0x3658
addi $6 $10 -28435
# 0x365c
lbu $31 10($0)
# 0x3660
sltu $5 $13 $13
# 0x3664
add $3 $15 $18
# 0x3668
srav $4 $16 $11
# 0x366c
sll $16 $10 25
# 0x3670
mflo $6
# 0x3674
sltiu $31 $30 25734
# 0x3678
multu $7 $12
# 0x367c
mult $14 $21
# 0x3680
sllv $12 $22 $13
# 0x3684
ori $22 $5 0x8060
# 0x3688
sh $2 18($0)
# 0x368c
sra $4 $20 9
# 0x3690
lh $10 4($0)
# 0x3694
lh $26 12($0)
# 0x3698
lbu $8 0($0)
# 0x369c
sllv $16 $8 $26
# 0x36a0
xori $25 $31 0x57fd
# 0x36a4
sltu $11 $24 $25
# 0x36a8
lhu $1 16($0)
# 0x36ac
slti $22 $1 32517
# 0x36b0
lw $20 12($0)
# 0x36b4
lw $6 8($0)
# 0x36b8
lw $12 24($0)
# 0x36bc
ori $27 $16 0xdb4c
# 0x36c0
multu $10 $11
# 0x36c4
ori $20 $9 0xbf85
# 0x36c8
sltiu $11 $15 5761
# 0x36cc
add $10 $13 $24
# 0x36d0
lb $26 22($0)
# 0x36d4
lw $20 20($0)
# 0x36d8
mult $17 $7
# 0x36dc
lui $10 0x392c
# 0x36e0
add $8 $30 $22
# 0x36e4
srl $2 $18 22
# 0x36e8
sh $14 22($0)
# 0x36ec
mthi $21
# 0x36f0
ori $5 $13 0xf41c
# 0x36f4
mtlo $31
# 0x36f8
lbu $27 16($0)
# 0x36fc
addu $9 $31 $13
# 0x3700
add $7 $9 $27
# 0x3704
xor $9 $8 $9
# 0x3708
srlv $17 $13 $22
# 0x370c
mthi $14
# 0x3710
slt $16 $27 $7
# 0x3714
srl $23 $7 24
# 0x3718
srlv $12 $19 $21
# 0x371c
sh $31 26($0)
# 0x3720
sh $13 46($0)
# 0x3724
lbu $14 27($0)
# 0x3728
subu $30 $21 $22
# 0x372c
slt $16 $15 $11
# 0x3730
lw $15 44($0)
# 0x3734
lui $13 0x5068
# 0x3738
mtlo $17
# 0x373c
multu $27 $22
# 0x3740
sh $18 18($0)
# 0x3744
sltiu $16 $26 2549
# 0x3748
slti $31 $15 24939
# 0x374c
and $2 $27 $1
# 0x3750
lw $8 0($0)
# 0x3754
addu $9 $22 $5
# 0x3758
andi $24 $24 0x4d1c
# 0x375c
subu $26 $18 $16
# 0x3760
lh $30 20($0)
# 0x3764
xori $10 $31 0xcc19
# 0x3768
sw $20 4($0)
# 0x376c
lh $22 6($0)
# 0x3770
addi $30 $13 3108
# 0x3774
srl $31 $6 17
# 0x3778
sw $2 12($0)
# 0x377c
mtlo $11
# 0x3780
srl $22 $3 30
# 0x3784
mfhi $19
# 0x3788
sllv $16 $10 $18
# 0x378c
nor $11 $14 $12
# 0x3790
lh $10 16($0)
# 0x3794
sw $6 100($0)
# 0x3798
mfhi $30
# 0x379c
lw $30 72($0)
# 0x37a0
sh $17 28($0)
# 0x37a4
addu $5 $13 $2
# 0x37a8
lh $22 24($0)
# 0x37ac
or $13 $25 $5
# 0x37b0
mult $3 $8
# 0x37b4
lh $31 24($0)
# 0x37b8
mtlo $1
# 0x37bc
ori $11 $31 0x7191
# 0x37c0
mfhi $19
# 0x37c4
nor $20 $27 $13
# 0x37c8
sb $13 1($0)
# 0x37cc
mult $20 $31
# 0x37d0
mtlo $8
# 0x37d4
subu $8 $4 $26
# 0x37d8
lb $20 18($0)
# 0x37dc
srav $27 $2 $21
# 0x37e0
sltiu $21 $1 3721
# 0x37e4
ori $18 $11 0x3f96
# 0x37e8
mthi $25
# 0x37ec
or $2 $12 $9
# 0x37f0
xor $10 $21 $12
# 0x37f4
xor $24 $18 $27
# 0x37f8
mfhi $16
# 0x37fc
sw $8 72($0)
# 0x3800
lhu $18 16($0)
# 0x3804
srl $24 $19 0
# 0x3808
sh $26 28($0)
# 0x380c
mult $21 $8
# 0x3810
lh $17 28($0)
# 0x3814
lh $9 34($0)
# 0x3818
mult $27 $30
# 0x381c
mult $12 $19
# 0x3820
srl $2 $1 28
# 0x3824
mflo $30
# 0x3828
sub $7 $21 $6
# 0x382c
lh $31 40($0)
# 0x3830
sb $25 26($0)
# 0x3834
mthi $4
# 0x3838
addi $5 $16 -30130
# 0x383c
mult $8 $20
# 0x3840
srl $11 $14 6
# 0x3844
sra $24 $12 18
# 0x3848
nor $13 $16 $7
# 0x384c
lh $1 26($0)
# 0x3850
lbu $3 21($0)
# 0x3854
nor $2 $2 $11
# 0x3858
lhu $14 18($0)
# 0x385c
multu $3 $17
# 0x3860
sub $19 $17 $12
# 0x3864
mthi $23
# 0x3868
and $18 $15 $11
# 0x386c
addiu $3 $3 28304
# 0x3870
mflo $27
# 0x3874
lh $11 6($0)
# 0x3878
lb $16 7($0)
# 0x387c
and $31 $11 $13
# 0x3880
sra $20 $24 30
# 0x3884
xor $6 $23 $17
# 0x3888
sh $2 52($0)
# 0x388c
srlv $10 $15 $15
# 0x3890
subu $19 $31 $21
# 0x3894
slt $14 $7 $18
# 0x3898
or $22 $9 $6
# 0x389c
slti $3 $10 -63
# 0x38a0
nor $4 $13 $23
# 0x38a4
nor $31 $17 $8
# 0x38a8
sllv $24 $31 $8
# 0x38ac
addiu $4 $31 19898
# 0x38b0
multu $27 $20
# 0x38b4
sh $5 18($0)
# 0x38b8
mfhi $4
# 0x38bc
nor $27 $21 $21
# 0x38c0
and $16 $15 $22
# 0x38c4
lb $30 26($0)
# 0x38c8
lhu $4 2($0)
# 0x38cc
lh $5 4($0)
# 0x38d0
sub $12 $7 $12
# 0x38d4
mult $3 $20
# 0x38d8
lw $23 8($0)
# 0x38dc
srav $25 $17 $21
# 0x38e0
sb $31 21($0)
# 0x38e4
lw $3 36($0)
# 0x38e8
sw $8 20($0)
# 0x38ec
sub $10 $26 $27
# 0x38f0
addi $31 $2 -13393
# 0x38f4
addiu $20 $4 3472
# 0x38f8
srlv $6 $21 $10
# 0x38fc
sb $17 12($0)
# 0x3900
mfhi $31
# 0x3904
lh $19 14($0)
# 0x3908
subu $26 $24 $5
# 0x390c
nor $12 $26 $8
# 0x3910
sh $1 18($0)
# 0x3914
mfhi $24
# 0x3918
sh $14 22($0)
# 0x391c
sw $4 4($0)
# 0x3920
addiu $26 $23 14513
# 0x3924
or $22 $5 $20
# 0x3928
mflo $22
# 0x392c
srlv $21 $8 $4
# 0x3930
mtlo $15
# 0x3934
ori $3 $1 0x1304
# 0x3938
mult $15 $4
# 0x393c
sub $5 $19 $3
# 0x3940
slti $7 $10 16317
# 0x3944
lui $20 0x0da2
# 0x3948
sltu $4 $16 $18
# 0x394c
sltu $12 $19 $20
# 0x3950
ori $12 $27 0x60a0
# 0x3954
sub $24 $3 $26
# 0x3958
lw $30 16($0)
# 0x395c
mult $9 $26
# 0x3960
mflo $6
# 0x3964
lw $19 76($0)
# 0x3968
nor $26 $21 $19
# 0x396c
sltu $14 $12 $14
# 0x3970
lh $4 22($0)
# 0x3974
addu $2 $14 $26
# 0x3978
nor $6 $2 $22
# 0x397c
lh $18 40($0)
# 0x3980
andi $14 $7 0x821f
# 0x3984
addi $20 $11 -5310
# 0x3988
addiu $14 $21 6134
# 0x398c
mflo $17
# 0x3990
sra $8 $24 17
# 0x3994
slti $14 $14 -13302
# 0x3998
sh $17 18($0)
# 0x399c
addu $22 $6 $23
# 0x39a0
or $3 $20 $10
# 0x39a4
mtlo $16
# 0x39a8
ori $31 $14 0x036e
# 0x39ac
mthi $15
# 0x39b0
srav $26 $15 $16
# 0x39b4
slti $17 $10 19324
# 0x39b8
srav $11 $31 $5
# 0x39bc
multu $1 $5
# 0x39c0
sltiu $27 $7 27873
# 0x39c4
srl $5 $14 22
# 0x39c8
sw $27 88($0)
# 0x39cc
lui $18 0x4742
# 0x39d0
multu $15 $14
# 0x39d4
lh $5 10($0)
# 0x39d8
sh $2 38($0)
# 0x39dc
mfhi $16
# 0x39e0
lbu $26 5($0)
# 0x39e4
sll $5 $1 12
# 0x39e8
sw $23 24($0)
# 0x39ec
sltu $17 $25 $9
# 0x39f0
srlv $13 $1 $31
# 0x39f4
or $11 $8 $30
# 0x39f8
mtlo $15
# 0x39fc
lh $24 0($0)
# 0x3a00
sh $30 20($0)
# 0x3a04
addiu $12 $8 14467
# 0x3a08
addi $20 $27 -18235
# 0x3a0c
lui $7 0xba89
# 0x3a10
andi $5 $17 0x0810
# 0x3a14
addiu $26 $4 5157
# 0x3a18
slt $18 $19 $2
# 0x3a1c
srlv $21 $2 $13
# 0x3a20
slti $17 $6 -7674
# 0x3a24
sltu $5 $6 $31
# 0x3a28
srav $22 $17 $4
# 0x3a2c
lui $22 0xc2ec
# 0x3a30
multu $25 $16
# 0x3a34
subu $21 $21 $11
# 0x3a38
mult $10 $19
# 0x3a3c
mflo $23
# 0x3a40
sb $16 6($0)
# 0x3a44
mult $23 $20
# 0x3a48
subu $23 $15 $22
# 0x3a4c
srav $17 $14 $8
# 0x3a50
addiu $26 $19 15487
# 0x3a54
mult $3 $3
# 0x3a58
sh $9 8($0)
# 0x3a5c
sh $5 26($0)
# 0x3a60
sra $14 $8 31
# 0x3a64
mtlo $14
# 0x3a68
sb $20 19($0)
# 0x3a6c
sra $17 $4 4
# 0x3a70
srlv $2 $17 $27
# 0x3a74
add $19 $4 $23
# 0x3a78
srav $26 $11 $8
# 0x3a7c
mflo $23
# 0x3a80
lhu $2 10($0)
# 0x3a84
sw $24 4($0)
# 0x3a88
lh $15 62($0)
# 0x3a8c
addu $5 $11 $12
# 0x3a90
lui $25 0xb4d4
# 0x3a94
sb $12 21($0)
# 0x3a98
nor $26 $25 $5
# 0x3a9c
sra $6 $18 10
# 0x3aa0
sltiu $14 $19 29012
# 0x3aa4
lw $11 20($0)
# 0x3aa8
sw $22 56($0)
# 0x3aac
sllv $22 $25 $6
# 0x3ab0
mflo $27
# 0x3ab4
mult $1 $17
# 0x3ab8
srav $10 $12 $4
# 0x3abc
lw $13 28($0)
# 0x3ac0
addi $23 $12 -25824
# 0x3ac4
sb $24 27($0)
# 0x3ac8
sltiu $17 $14 13877
# 0x3acc
ori $6 $3 0xde0a
# 0x3ad0
mfhi $31
# 0x3ad4
mtlo $18
# 0x3ad8
sh $4 4($0)
# 0x3adc
lw $4 32($0)
# 0x3ae0
mult $11 $10
# 0x3ae4
xor $27 $25 $17
# 0x3ae8
ori $4 $1 0x5d6f
# 0x3aec
sll $5 $26 27
# 0x3af0
sub $23 $30 $24
# 0x3af4
addiu $4 $15 8581
# 0x3af8
sll $25 $16 6
# 0x3afc
lhu $15 14($0)
# 0x3b00
subu $31 $16 $18
# 0x3b04
srav $8 $31 $10
# 0x3b08
sltu $27 $1 $25
# 0x3b0c
andi $7 $1 0xb45a
# 0x3b10
lbu $17 10($0)
# 0x3b14
lui $14 0xd6ed
# 0x3b18
sltu $2 $27 $23
# 0x3b1c
mthi $24
# 0x3b20
sra $22 $22 4
# 0x3b24
add $30 $27 $15
# 0x3b28
lui $2 0x8e29
# 0x3b2c
lbu $2 2($0)
# 0x3b30
subu $7 $21 $11
# 0x3b34
xori $24 $27 0xb411
# 0x3b38
sllv $14 $1 $4
# 0x3b3c
mtlo $7
# 0x3b40
add $1 $16 $22
# 0x3b44
multu $19 $18
# 0x3b48
lh $20 18($0)
# 0x3b4c
mult $16 $13
# 0x3b50
addiu $31 $13 6071
# 0x3b54
sll $16 $12 18
# 0x3b58
mfhi $21
# 0x3b5c
mult $27 $9
# 0x3b60
sb $8 27($0)
# 0x3b64
andi $3 $15 0x6fb6
# 0x3b68
lhu $25 24($0)
# 0x3b6c
sltu $18 $25 $19
# 0x3b70
mfhi $20
# 0x3b74
sw $21 24($0)
# 0x3b78
srl $7 $13 21
# 0x3b7c
lui $5 0x4871
# 0x3b80
mthi $2
# 0x3b84
slt $24 $11 $23
# 0x3b88
nor $2 $18 $5
# 0x3b8c
lh $3 2($0)
# 0x3b90
lb $7 13($0)
# 0x3b94
ori $15 $8 0x2b03
# 0x3b98
nor $4 $23 $23
# 0x3b9c
mult $7 $9
# 0x3ba0
sltiu $18 $6 12572
# 0x3ba4
lw $20 92($0)
# 0x3ba8
sb $4 20($0)
# 0x3bac
lb $10 30($0)
# 0x3bb0
xor $13 $22 $27
# 0x3bb4
sllv $25 $5 $26
# 0x3bb8
sll $10 $12 17
# 0x3bbc
lb $6 22($0)
# 0x3bc0
lw $6 56($0)
# 0x3bc4
sh $30 12($0)
# 0x3bc8
mthi $16
# 0x3bcc
mthi $27
# 0x3bd0
sra $1 $24 2
# 0x3bd4
sltu $24 $17 $21
# 0x3bd8
addi $17 $11 -9904
# 0x3bdc
addi $2 $30 28901
# 0x3be0
sb $21 30($0)
# 0x3be4
lh $30 12($0)
# 0x3be8
xori $30 $10 0x09cf
# 0x3bec
sh $24 20($0)
# 0x3bf0
mtlo $27
# 0x3bf4
sllv $6 $26 $22
# 0x3bf8
lbu $26 15($0)
# 0x3bfc
lbu $7 19($0)
# 0x3c00
addi $8 $23 3565
# 0x3c04
slt $23 $19 $9
# 0x3c08
srlv $3 $13 $4
# 0x3c0c
sltiu $20 $30 25407
# 0x3c10
nor $30 $13 $21
# 0x3c14
xor $9 $27 $22
# 0x3c18
andi $26 $7 0xe069
# 0x3c1c
lh $11 12($0)
# 0x3c20
sub $23 $22 $9
# 0x3c24
lui $21 0x6b04
# 0x3c28
mthi $5
# 0x3c2c
sra $13 $5 18
# 0x3c30
slti $25 $5 -32350
# 0x3c34
lb $6 0($0)
# 0x3c38
lhu $5 18($0)
# 0x3c3c
andi $9 $22 0xb401
# 0x3c40
lh $18 14($0)
# 0x3c44
mflo $8
# 0x3c48
lw $16 8($0)
# 0x3c4c
lb $14 15($0)
# 0x3c50
sltiu $8 $12 8690
# 0x3c54
and $11 $25 $15
# 0x3c58
sltu $1 $17 $21
# 0x3c5c
addu $18 $1 $22
# 0x3c60
slti $1 $22 -5841
# 0x3c64
sltu $2 $8 $4
# 0x3c68
subu $30 $13 $14
# 0x3c6c
srav $30 $9 $23
# 0x3c70
sh $24 20($0)
# 0x3c74
lh $15 0($0)
# 0x3c78
andi $16 $30 0xd0ac
# 0x3c7c
lh $9 26($0)
# 0x3c80
lw $24 28($0)
# 0x3c84
sb $18 31($0)
# 0x3c88
sh $7 44($0)
# 0x3c8c
sh $20 58($0)
# 0x3c90
addi $2 $8 15242
# 0x3c94
addu $10 $18 $11
# 0x3c98
sltiu $16 $30 10846
# 0x3c9c
or $24 $15 $17
# 0x3ca0
slti $10 $21 13322
# 0x3ca4
srav $20 $1 $4
# 0x3ca8
srlv $9 $11 $22
# 0x3cac
subu $23 $13 $2
# 0x3cb0
sltu $4 $6 $7
# 0x3cb4
xori $15 $18 0xcfd7
# 0x3cb8
lui $27 0x1531
# 0x3cbc
addi $5 $30 13612
# 0x3cc0
xori $11 $30 0x4a48
# 0x3cc4
srav $11 $25 $5
# 0x3cc8
lbu $10 9($0)
# 0x3ccc
mult $30 $16
# 0x3cd0
mtlo $12
# 0x3cd4
addi $12 $31 -13856
# 0x3cd8
addu $20 $20 $15
# 0x3cdc
srlv $13 $5 $17
# 0x3ce0
and $23 $9 $23
# 0x3ce4
lbu $6 20($0)
# 0x3ce8
sllv $26 $31 $22
# 0x3cec
or $13 $25 $31
# 0x3cf0
addu $4 $19 $16
# 0x3cf4
lw $4 28($0)
# 0x3cf8
addu $19 $25 $15
# 0x3cfc
lw $17 24($0)
# 0x3d00
and $5 $21 $26
# 0x3d04
ori $2 $11 0xa126
# 0x3d08
xori $31 $15 0x673b
# 0x3d0c
lw $5 120($0)
# 0x3d10
add $5 $14 $20
# 0x3d14
subu $3 $16 $22
# 0x3d18
sll $9 $3 14
# 0x3d1c
lw $2 60($0)
# 0x3d20
sb $26 16($0)
# 0x3d24
mtlo $13
# 0x3d28
sll $26 $9 14
# 0x3d2c
subu $9 $9 $13
# 0x3d30
andi $24 $12 0x2d36
# 0x3d34
sb $11 22($0)
# 0x3d38
sltiu $31 $11 210
# 0x3d3c
or $20 $13 $5
# 0x3d40
ori $18 $12 0x004e
# 0x3d44
multu $23 $6
# 0x3d48
xori $21 $7 0x7f56
# 0x3d4c
sltiu $11 $19 4429
# 0x3d50
lw $26 16($0)
# 0x3d54
lbu $10 4($0)
# 0x3d58
slt $22 $7 $22
# 0x3d5c
or $18 $7 $5
# 0x3d60
sltiu $30 $30 30702
# 0x3d64
addiu $5 $15 14889
# 0x3d68
xor $8 $1 $7
# 0x3d6c
subu $27 $12 $27
# 0x3d70
lh $14 18($0)
# 0x3d74
nor $10 $1 $4
# 0x3d78
mfhi $24
# 0x3d7c
mflo $21
# 0x3d80
lh $3 46($0)
# 0x3d84
sb $3 27($0)
# 0x3d88
nor $3 $23 $9
# 0x3d8c
lh $19 22($0)
# 0x3d90
lb $4 18($0)
# 0x3d94
sltiu $8 $16 29067
# 0x3d98
slt $21 $6 $1
# 0x3d9c
srl $31 $1 2
# 0x3da0
sh $10 38($0)
# 0x3da4
and $31 $14 $20
# 0x3da8
lh $24 36($0)
# 0x3dac
xori $12 $16 0x7cf6
# 0x3db0
slt $27 $21 $31
# 0x3db4
lb $3 15($0)
# 0x3db8
or $9 $26 $6
# 0x3dbc
slti $27 $15 12232
# 0x3dc0
lw $8 112($0)
# 0x3dc4
sb $20 7($0)
# 0x3dc8
lui $31 0x1616
# 0x3dcc
addi $22 $2 -29140
# 0x3dd0
sh $26 26($0)
# 0x3dd4
subu $21 $18 $18
# 0x3dd8
mthi $21
# 0x3ddc
mthi $8
# 0x3de0
lh $5 30($0)
# 0x3de4
andi $17 $3 0xcb4f
# 0x3de8
lb $21 27($0)
# 0x3dec
sub $2 $23 $31
# 0x3df0
or $23 $15 $17
# 0x3df4
slti $14 $2 25279
# 0x3df8
slti $24 $2 20802
# 0x3dfc
mfhi $17
# 0x3e00
mtlo $1
# 0x3e04
sub $31 $22 $14
# 0x3e08
multu $6 $19
# 0x3e0c
lb $4 6($0)
# 0x3e10
lh $14 38($0)
# 0x3e14
xor $20 $10 $2
# 0x3e18
and $15 $4 $19
# 0x3e1c
mfhi $16
# 0x3e20
xor $16 $13 $23
# 0x3e24
nor $11 $25 $10
# 0x3e28
mfhi $6
# 0x3e2c
addiu $14 $17 19365
# 0x3e30
addiu $5 $7 22831
# 0x3e34
ori $10 $5 0xb78d
# 0x3e38
xori $31 $3 0x6069
# 0x3e3c
add $3 $30 $2
# 0x3e40
sh $4 24($0)
# 0x3e44
sllv $6 $31 $25
# 0x3e48
mthi $30
# 0x3e4c
lb $19 4($0)
# 0x3e50
or $13 $2 $8
# 0x3e54
lw $2 0($0)
# 0x3e58
sra $31 $4 16
# 0x3e5c
ori $17 $2 0xd38f
# 0x3e60
mult $5 $16
# 0x3e64
mthi $3
# 0x3e68
lui $16 0x4bde
# 0x3e6c
or $22 $6 $18
# 0x3e70
sw $19 4($0)
# 0x3e74
lw $12 28($0)
# 0x3e78
mult $13 $31
# 0x3e7c
xori $8 $17 0xae97
# 0x3e80
mult $5 $5
# 0x3e84
mult $8 $27
# 0x3e88
mult $18 $23
# 0x3e8c
sra $24 $3 5
# 0x3e90
lhu $7 4($0)
# 0x3e94
slti $7 $4 -10093
# 0x3e98
slti $6 $20 -18457
# 0x3e9c
ori $1 $26 0xd959
# 0x3ea0
mult $16 $17
# 0x3ea4
lw $25 112($0)
# 0x3ea8
lui $15 0x284f
# 0x3eac
sw $23 24($0)
# 0x3eb0
sll $20 $8 14
# 0x3eb4
srlv $2 $18 $30
# 0x3eb8
srl $23 $16 3
# 0x3ebc
addu $16 $15 $11
# 0x3ec0
lb $6 30($0)
# 0x3ec4
xor $8 $20 $7
# 0x3ec8
lui $21 0xaa35
# 0x3ecc
mtlo $23
# 0x3ed0
xori $7 $18 0x6319
# 0x3ed4
sllv $2 $3 $1
# 0x3ed8
lbu $6 21($0)
# 0x3edc
sh $31 18($0)
# 0x3ee0
lh $31 32($0)
# 0x3ee4
lh $19 0($0)
# 0x3ee8
sw $4 64($0)
# 0x3eec
lh $10 6($0)
# 0x3ef0
and $1 $17 $27
# 0x3ef4
xor $22 $7 $9
# 0x3ef8
srav $24 $15 $15
# 0x3efc
ori $26 $22 0x28a3
# 0x3f00
andi $21 $6 0xa6e3
# 0x3f04
addu $25 $24 $20
# 0x3f08
sra $9 $9 0
# 0x3f0c
sw $22 4($0)
# 0x3f10
lw $19 84($0)
# 0x3f14
slt $6 $7 $21
# 0x3f18
subu $23 $13 $2
# 0x3f1c
addiu $5 $20 1100
# 0x3f20
sw $12 4($0)
# 0x3f24
lw $20 20($0)
# 0x3f28
srav $22 $21 $30
# 0x3f2c
sw $22 16($0)
# 0x3f30
addu $10 $27 $20
# 0x3f34
subu $30 $8 $7
# 0x3f38
lui $6 0x1de5
# 0x3f3c
sltiu $4 $27 8743
# 0x3f40
ori $7 $1 0xe8f9
# 0x3f44
slti $13 $4 -27192
# 0x3f48
or $17 $8 $13
# 0x3f4c
slti $23 $7 15068
# 0x3f50
sll $22 $24 3
# 0x3f54
sub $18 $31 $11
# 0x3f58
mflo $24
# 0x3f5c
srav $18 $30 $14
# 0x3f60
sw $1 44($0)
# 0x3f64
subu $1 $25 $24
# 0x3f68
sh $25 4($0)
# 0x3f6c
xori $9 $18 0xc51b
# 0x3f70
add $10 $25 $24
# 0x3f74
mfhi $21
# 0x3f78
mthi $21
# 0x3f7c
andi $12 $12 0xe17f
# 0x3f80
lw $20 24($0)
# 0x3f84
sw $24 8($0)
# 0x3f88
xori $6 $7 0x5795
# 0x3f8c
and $6 $17 $25
# 0x3f90
ori $1 $3 0xa57e
# 0x3f94
addu $15 $1 $19
# 0x3f98
lw $27 24($0)
# 0x3f9c
andi $22 $14 0x54e5
# 0x3fa0
and $3 $23 $17

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop