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
sw $15 20($0)
# 0x3008
lbu $26 18($0)
# 0x300c
srlv $1 $27 $4
# 0x3010
lb $7 12($0)
# 0x3014
srlv $10 $24 $24
# 0x3018
srl $25 $9 18
# 0x301c
andi $15 $31 0xb02c
# 0x3020
xori $25 $27 0x00d2
# 0x3024
mthi $2
# 0x3028
addu $24 $6 $18
# 0x302c
sllv $23 $22 $3
# 0x3030
and $22 $14 $26
# 0x3034
lh $30 14($0)
# 0x3038
lw $6 104($0)
# 0x303c
sh $27 14($0)
# 0x3040
addi $1 $16 -28388
# 0x3044
slti $22 $5 32404
# 0x3048
sw $30 120($0)
# 0x304c
sw $26 124($0)
# 0x3050
or $20 $19 $8
# 0x3054
xori $24 $16 0x19b3
# 0x3058
andi $19 $19 0x5e3e
# 0x305c
lb $17 7($0)
# 0x3060
lui $13 0x93a9
# 0x3064
ori $17 $12 0xc6d6
# 0x3068
srl $15 $11 6
# 0x306c
lw $2 16($0)
# 0x3070
ori $16 $17 0xe327
# 0x3074
mfhi $20
# 0x3078
sh $12 28($0)
# 0x307c
lb $1 19($0)
# 0x3080
nor $16 $31 $20
# 0x3084
srlv $31 $30 $27
# 0x3088
srl $6 $4 25
# 0x308c
subu $23 $14 $13
# 0x3090
sllv $3 $2 $23
# 0x3094
ori $26 $8 0x8d81
# 0x3098
add $13 $21 $2
# 0x309c
slti $16 $12 26897
# 0x30a0
sw $22 12($0)
# 0x30a4
addiu $1 $18 28692
# 0x30a8
sll $19 $23 19
# 0x30ac
sw $27 60($0)
# 0x30b0
lw $11 0($0)
# 0x30b4
sll $16 $3 24
# 0x30b8
mtlo $30
# 0x30bc
xori $1 $24 0x9ac6
# 0x30c0
xor $23 $31 $17
# 0x30c4
andi $4 $31 0x84d2
# 0x30c8
addiu $26 $8 1515
# 0x30cc
add $17 $10 $16
# 0x30d0
xor $11 $2 $6
# 0x30d4
sh $23 16($0)
# 0x30d8
addu $23 $31 $18
# 0x30dc
lhu $15 14($0)
# 0x30e0
slt $21 $27 $16
# 0x30e4
sw $9 4($0)
# 0x30e8
sra $4 $15 23
# 0x30ec
lb $16 26($0)
# 0x30f0
lhu $30 26($0)
# 0x30f4
lhu $7 20($0)
# 0x30f8
slt $11 $26 $22
# 0x30fc
xori $18 $2 0x6145
# 0x3100
sub $14 $30 $20
# 0x3104
sll $5 $15 28
# 0x3108
lhu $26 2($0)
# 0x310c
multu $4 $9
# 0x3110
xor $25 $22 $20
# 0x3114
srl $14 $23 8
# 0x3118
sltiu $31 $5 3739
# 0x311c
lbu $9 20($0)
# 0x3120
lb $5 21($0)
# 0x3124
lw $24 4($0)
# 0x3128
xori $12 $26 0x7366
# 0x312c
lui $15 0x3d13
# 0x3130
lbu $6 26($0)
# 0x3134
sltu $24 $14 $24
# 0x3138
and $14 $17 $8
# 0x313c
ori $5 $25 0x0c22
# 0x3140
add $10 $5 $9
# 0x3144
and $30 $13 $1
# 0x3148
lhu $6 4($0)
# 0x314c
mthi $26
# 0x3150
ori $21 $25 0x4f32
# 0x3154
addi $13 $31 18718
# 0x3158
srav $12 $9 $20
# 0x315c
subu $26 $5 $27
# 0x3160
sltiu $22 $30 32713
# 0x3164
lbu $8 28($0)
# 0x3168
mtlo $14
# 0x316c
multu $27 $23
# 0x3170
addi $18 $7 7038
# 0x3174
lw $12 12($0)
# 0x3178
srav $31 $1 $31
# 0x317c
srl $25 $5 22
# 0x3180
srlv $16 $26 $23
# 0x3184
xori $30 $16 0xe55c
# 0x3188
slt $3 $1 $1
# 0x318c
multu $14 $25
# 0x3190
and $12 $7 $7
# 0x3194
sw $4 8($0)
# 0x3198
mflo $25
# 0x319c
add $16 $30 $4
# 0x31a0
sltu $1 $4 $13
# 0x31a4
lh $12 26($0)
# 0x31a8
slt $3 $8 $15
# 0x31ac
lh $3 16($0)
# 0x31b0
and $27 $26 $16
# 0x31b4
mfhi $2
# 0x31b8
sllv $1 $10 $7
# 0x31bc
srav $8 $10 $5
# 0x31c0
addu $12 $26 $23
# 0x31c4
lhu $18 10($0)
# 0x31c8
andi $1 $10 0x46e6
# 0x31cc
lw $30 4($0)
# 0x31d0
subu $26 $17 $11
# 0x31d4
mult $11 $19
# 0x31d8
nor $18 $30 $18
# 0x31dc
sub $17 $10 $25
# 0x31e0
slt $18 $16 $11
# 0x31e4
sltu $8 $12 $23
# 0x31e8
lw $7 68($0)
# 0x31ec
srlv $19 $26 $11
# 0x31f0
srl $27 $1 15
# 0x31f4
sra $18 $11 4
# 0x31f8
or $5 $24 $23
# 0x31fc
addi $13 $20 22162
# 0x3200
sllv $18 $7 $6
# 0x3204
slti $24 $26 18225
# 0x3208
nor $23 $4 $4
# 0x320c
lw $1 12($0)
# 0x3210
ori $18 $5 0xf1cb
# 0x3214
multu $25 $15
# 0x3218
mthi $12
# 0x321c
slt $26 $6 $11
# 0x3220
sh $27 46($0)
# 0x3224
xor $24 $10 $11
# 0x3228
multu $6 $4
# 0x322c
srl $25 $13 18
# 0x3230
lh $25 6($0)
# 0x3234
lw $8 4($0)
# 0x3238
sh $13 26($0)
# 0x323c
and $3 $17 $4
# 0x3240
multu $30 $23
# 0x3244
sll $10 $30 15
# 0x3248
lui $26 0xf3e1
# 0x324c
mtlo $18
# 0x3250
addiu $19 $8 2343
# 0x3254
sllv $10 $22 $15
# 0x3258
mthi $7
# 0x325c
sb $14 19($0)
# 0x3260
subu $22 $3 $9
# 0x3264
addu $20 $5 $4
# 0x3268
sll $10 $12 8
# 0x326c
and $26 $8 $24
# 0x3270
xor $5 $11 $15
# 0x3274
sltiu $18 $19 23203
# 0x3278
sw $10 28($0)
# 0x327c
sltu $18 $22 $13
# 0x3280
addiu $23 $7 23486
# 0x3284
lw $19 28($0)
# 0x3288
srl $23 $26 1
# 0x328c
add $2 $1 $6
# 0x3290
sb $31 1($0)
# 0x3294
lui $26 0xe4d7
# 0x3298
addi $5 $27 -24671
# 0x329c
addu $27 $1 $19
# 0x32a0
mtlo $30
# 0x32a4
nor $8 $26 $14
# 0x32a8
lh $14 20($0)
# 0x32ac
and $6 $27 $2
# 0x32b0
slt $1 $18 $18
# 0x32b4
multu $25 $2
# 0x32b8
sh $22 26($0)
# 0x32bc
sw $12 120($0)
# 0x32c0
sb $12 6($0)
# 0x32c4
sll $6 $2 1
# 0x32c8
nor $26 $20 $10
# 0x32cc
slti $2 $3 -21378
# 0x32d0
mflo $30
# 0x32d4
and $9 $1 $1
# 0x32d8
sb $26 25($0)
# 0x32dc
lui $22 0x757c
# 0x32e0
srav $24 $27 $27
# 0x32e4
mult $30 $17
# 0x32e8
slt $25 $25 $6
# 0x32ec
mtlo $27
# 0x32f0
mult $14 $6
# 0x32f4
and $1 $23 $14
# 0x32f8
mult $27 $19
# 0x32fc
lui $8 0xa31f
# 0x3300
mfhi $17
# 0x3304
lh $21 26($0)
# 0x3308
slti $9 $1 7990
# 0x330c
sh $24 30($0)
# 0x3310
lui $16 0xac4f
# 0x3314
mult $25 $14
# 0x3318
mult $25 $4
# 0x331c
xor $18 $22 $8
# 0x3320
lw $23 12($0)
# 0x3324
addiu $4 $9 24834
# 0x3328
sw $20 48($0)
# 0x332c
lhu $4 16($0)
# 0x3330
sll $5 $6 29
# 0x3334
andi $5 $12 0x0363
# 0x3338
and $18 $11 $27
# 0x333c
sltu $15 $8 $7
# 0x3340
slt $22 $23 $10
# 0x3344
srav $2 $13 $4
# 0x3348
mflo $1
# 0x334c
nor $12 $18 $25
# 0x3350
slt $25 $17 $5
# 0x3354
mtlo $23
# 0x3358
mthi $21
# 0x335c
subu $13 $17 $22
# 0x3360
sltiu $3 $1 10234
# 0x3364
sh $24 58($0)
# 0x3368
lbu $14 3($0)
# 0x336c
addi $3 $13 31721
# 0x3370
lh $15 10($0)
# 0x3374
srl $6 $1 8
# 0x3378
addi $20 $5 20302
# 0x337c
sh $24 42($0)
# 0x3380
addiu $27 $17 5314
# 0x3384
lbu $24 8($0)
# 0x3388
subu $31 $11 $25
# 0x338c
sltu $11 $14 $7
# 0x3390
sw $18 8($0)
# 0x3394
sh $21 28($0)
# 0x3398
srav $21 $4 $10
# 0x339c
srlv $19 $17 $2
# 0x33a0
subu $15 $9 $19
# 0x33a4
sb $22 8($0)
# 0x33a8
sw $22 88($0)
# 0x33ac
mtlo $21
# 0x33b0
lui $17 0x4373
# 0x33b4
addi $21 $22 14424
# 0x33b8
sub $31 $16 $9
# 0x33bc
andi $26 $9 0x6c47
# 0x33c0
ori $23 $14 0x8766
# 0x33c4
lh $13 0($0)
# 0x33c8
mfhi $6
# 0x33cc
and $18 $30 $18
# 0x33d0
multu $11 $15
# 0x33d4
sltiu $1 $19 8862
# 0x33d8
sw $8 56($0)
# 0x33dc
or $10 $19 $27
# 0x33e0
srav $24 $9 $12
# 0x33e4
sub $15 $18 $6
# 0x33e8
addiu $31 $25 20159
# 0x33ec
lw $20 0($0)
# 0x33f0
slt $13 $18 $6
# 0x33f4
xori $20 $22 0xeb93
# 0x33f8
lhu $11 4($0)
# 0x33fc
sllv $2 $8 $8
# 0x3400
sh $22 30($0)
# 0x3404
slt $25 $11 $8
# 0x3408
sll $10 $24 20
# 0x340c
xori $17 $21 0xe363
# 0x3410
sw $10 0($0)
# 0x3414
or $9 $20 $22
# 0x3418
sllv $11 $20 $4
# 0x341c
sltu $5 $2 $15
# 0x3420
sb $11 18($0)
# 0x3424
sltiu $31 $13 10982
# 0x3428
srav $15 $10 $12
# 0x342c
sllv $19 $18 $10
# 0x3430
sh $22 18($0)
# 0x3434
sllv $9 $6 $26
# 0x3438
addu $2 $10 $25
# 0x343c
xor $1 $9 $10
# 0x3440
lhu $20 30($0)
# 0x3444
addiu $2 $14 3586
# 0x3448
lb $25 28($0)
# 0x344c
lui $17 0xec32
# 0x3450
lhu $12 14($0)
# 0x3454
mthi $11
# 0x3458
slti $31 $12 7784
# 0x345c
lbu $24 16($0)
# 0x3460
addi $24 $16 24945
# 0x3464
lhu $4 6($0)
# 0x3468
or $17 $9 $25
# 0x346c
sub $27 $30 $14
# 0x3470
and $14 $21 $21
# 0x3474
xori $18 $24 0x9d03
# 0x3478
lbu $9 0($0)
# 0x347c
sw $15 8($0)
# 0x3480
lw $30 88($0)
# 0x3484
addiu $12 $18 7397
# 0x3488
xor $22 $13 $18
# 0x348c
sra $6 $11 0
# 0x3490
srav $25 $30 $23
# 0x3494
sll $2 $24 23
# 0x3498
lui $10 0x6d5d
# 0x349c
sb $20 13($0)
# 0x34a0
mfhi $6
# 0x34a4
slt $2 $27 $18
# 0x34a8
srlv $14 $5 $21
# 0x34ac
addi $16 $13 -8963
# 0x34b0
mflo $1
# 0x34b4
or $25 $15 $15
# 0x34b8
lb $20 25($0)
# 0x34bc
mtlo $22
# 0x34c0
or $18 $6 $2
# 0x34c4
srav $15 $4 $24
# 0x34c8
slti $20 $11 29881
# 0x34cc
sb $14 20($0)
# 0x34d0
slt $31 $9 $7
# 0x34d4
sb $31 11($0)
# 0x34d8
lw $3 108($0)
# 0x34dc
slt $21 $16 $15
# 0x34e0
mflo $1
# 0x34e4
sltiu $20 $11 31697
# 0x34e8
sra $15 $14 9
# 0x34ec
ori $1 $13 0xed5d
# 0x34f0
sll $27 $27 1
# 0x34f4
sub $17 $8 $7
# 0x34f8
srlv $1 $5 $6
# 0x34fc
lhu $31 28($0)
# 0x3500
lw $31 24($0)
# 0x3504
sra $9 $8 31
# 0x3508
addu $13 $26 $21
# 0x350c
srav $27 $26 $20
# 0x3510
lb $19 31($0)
# 0x3514
multu $11 $17
# 0x3518
addi $21 $24 -28218
# 0x351c
mult $15 $5
# 0x3520
addu $5 $15 $21
# 0x3524
srlv $13 $17 $13
# 0x3528
mflo $12
# 0x352c
nor $27 $26 $27
# 0x3530
mtlo $27
# 0x3534
add $26 $7 $15
# 0x3538
sra $22 $17 23
# 0x353c
nor $16 $10 $6
# 0x3540
addi $21 $22 -32005
# 0x3544
sw $15 0($0)
# 0x3548
sltiu $20 $26 10318
# 0x354c
lbu $15 9($0)
# 0x3550
ori $19 $31 0xc479
# 0x3554
lb $22 10($0)
# 0x3558
lui $8 0xef67
# 0x355c
sw $22 88($0)
# 0x3560
lb $16 1($0)
# 0x3564
subu $21 $10 $3
# 0x3568
or $17 $7 $22
# 0x356c
sh $23 26($0)
# 0x3570
srl $2 $9 19
# 0x3574
add $8 $8 $19
# 0x3578
mfhi $18
# 0x357c
addiu $21 $11 21339
# 0x3580
xor $17 $31 $9
# 0x3584
lb $23 15($0)
# 0x3588
addiu $16 $24 23195
# 0x358c
mflo $14
# 0x3590
xor $12 $22 $16
# 0x3594
andi $11 $25 0xa19b
# 0x3598
srav $23 $30 $2
# 0x359c
addiu $12 $4 18394
# 0x35a0
addi $14 $18 -31287
# 0x35a4
srav $19 $21 $30
# 0x35a8
sw $31 4($0)
# 0x35ac
multu $31 $4
# 0x35b0
sh $22 10($0)
# 0x35b4
lb $25 30($0)
# 0x35b8
or $30 $7 $30
# 0x35bc
lb $1 1($0)
# 0x35c0
srlv $7 $12 $15
# 0x35c4
ori $21 $22 0x48c4
# 0x35c8
lh $13 30($0)
# 0x35cc
slti $16 $27 -8889
# 0x35d0
sra $31 $2 24
# 0x35d4
sh $6 40($0)
# 0x35d8
sh $17 0($0)
# 0x35dc
mtlo $22
# 0x35e0
srlv $26 $15 $23
# 0x35e4
nor $22 $25 $14
# 0x35e8
sh $15 4($0)
# 0x35ec
sllv $17 $14 $8
# 0x35f0
multu $14 $30
# 0x35f4
lh $17 26($0)
# 0x35f8
ori $16 $8 0x1233
# 0x35fc
and $26 $31 $20
# 0x3600
ori $13 $31 0x8a7e
# 0x3604
mthi $5
# 0x3608
lw $16 24($0)
# 0x360c
mult $1 $18
# 0x3610
addiu $15 $2 8878
# 0x3614
sra $3 $6 25
# 0x3618
sll $26 $24 29
# 0x361c
xor $11 $23 $17
# 0x3620
slti $10 $5 30100
# 0x3624
mult $7 $14
# 0x3628
mtlo $19
# 0x362c
xor $16 $16 $15
# 0x3630
addiu $31 $30 24939
# 0x3634
sw $3 28($0)
# 0x3638
mtlo $6
# 0x363c
lbu $26 0($0)
# 0x3640
srl $7 $10 31
# 0x3644
sw $7 20($0)
# 0x3648
multu $13 $7
# 0x364c
or $11 $1 $20
# 0x3650
lui $3 0xeea2
# 0x3654
nor $26 $16 $13
# 0x3658
lh $8 14($0)
# 0x365c
srlv $10 $6 $11
# 0x3660
sb $27 27($0)
# 0x3664
sltu $23 $27 $27
# 0x3668
sw $21 28($0)
# 0x366c
sllv $31 $8 $12
# 0x3670
lw $5 4($0)
# 0x3674
lui $10 0xe241
# 0x3678
slti $20 $9 29941
# 0x367c
xori $23 $6 0xec5a
# 0x3680
sra $10 $8 29
# 0x3684
slt $30 $15 $4
# 0x3688
addiu $26 $8 15915
# 0x368c
sll $10 $22 11
# 0x3690
sltiu $31 $22 17478
# 0x3694
slt $8 $14 $17
# 0x3698
andi $25 $18 0xec94
# 0x369c
sllv $5 $23 $26
# 0x36a0
sw $31 8($0)
# 0x36a4
sh $19 2($0)
# 0x36a8
mtlo $1
# 0x36ac
lh $24 12($0)
# 0x36b0
addiu $15 $15 18998
# 0x36b4
xor $6 $12 $9
# 0x36b8
and $11 $4 $23
# 0x36bc
mtlo $31
# 0x36c0
sllv $18 $6 $10
# 0x36c4
mtlo $10
# 0x36c8
multu $21 $10
# 0x36cc
slti $17 $6 23315
# 0x36d0
lb $26 17($0)
# 0x36d4
subu $31 $8 $10
# 0x36d8
xori $26 $30 0x9101
# 0x36dc
srav $27 $17 $3
# 0x36e0
addi $8 $2 13356
# 0x36e4
lh $13 6($0)
# 0x36e8
lw $24 16($0)
# 0x36ec
lui $21 0x9a51
# 0x36f0
xori $7 $8 0xaf6b
# 0x36f4
and $15 $11 $7
# 0x36f8
srav $17 $11 $22
# 0x36fc
xori $2 $7 0xaefb
# 0x3700
sb $5 16($0)
# 0x3704
ori $15 $27 0x34ee
# 0x3708
xor $22 $19 $10
# 0x370c
addiu $8 $19 14557
# 0x3710
subu $30 $10 $10
# 0x3714
mtlo $17
# 0x3718
sh $20 26($0)
# 0x371c
lh $16 14($0)
# 0x3720
xori $26 $5 0x9eb9
# 0x3724
slti $24 $31 26159
# 0x3728
sltiu $20 $1 4669
# 0x372c
srlv $26 $18 $2
# 0x3730
lh $25 28($0)
# 0x3734
addu $10 $30 $13
# 0x3738
multu $14 $27
# 0x373c
slt $16 $25 $25
# 0x3740
mflo $6
# 0x3744
srav $13 $3 $22
# 0x3748
addi $12 $30 28677
# 0x374c
multu $16 $22
# 0x3750
sb $26 23($0)
# 0x3754
sh $27 18($0)
# 0x3758
sb $15 14($0)
# 0x375c
slt $19 $31 $25
# 0x3760
lbu $12 30($0)
# 0x3764
mthi $7
# 0x3768
nor $2 $8 $26
# 0x376c
or $4 $5 $21
# 0x3770
lhu $15 24($0)
# 0x3774
ori $7 $18 0x93f7
# 0x3778
xor $5 $26 $26
# 0x377c
sra $23 $31 4
# 0x3780
addu $19 $25 $25
# 0x3784
xori $22 $18 0xb7bb
# 0x3788
sw $5 24($0)
# 0x378c
sltu $22 $9 $27
# 0x3790
sub $8 $22 $7
# 0x3794
sll $14 $17 31
# 0x3798
mfhi $23
# 0x379c
lw $25 4($0)
# 0x37a0
or $10 $12 $16
# 0x37a4
sra $7 $9 14
# 0x37a8
mult $19 $6
# 0x37ac
mfhi $27
# 0x37b0
sb $18 14($0)
# 0x37b4
slti $19 $6 -16231
# 0x37b8
ori $21 $7 0xded9
# 0x37bc
lhu $4 22($0)
# 0x37c0
add $19 $25 $16
# 0x37c4
lw $19 44($0)
# 0x37c8
xori $2 $15 0x6136
# 0x37cc
mtlo $7
# 0x37d0
lh $25 22($0)
# 0x37d4
ori $7 $14 0x3b54
# 0x37d8
sh $7 28($0)
# 0x37dc
lbu $22 18($0)
# 0x37e0
and $1 $11 $16
# 0x37e4
sltu $19 $3 $23
# 0x37e8
ori $2 $5 0xbd56
# 0x37ec
sub $8 $25 $5
# 0x37f0
sll $5 $27 11
# 0x37f4
andi $4 $11 0x6c69
# 0x37f8
sh $12 12($0)
# 0x37fc
sllv $4 $9 $15
# 0x3800
mthi $9
# 0x3804
lw $16 120($0)
# 0x3808
multu $24 $21
# 0x380c
srav $21 $7 $14
# 0x3810
lui $14 0x75cd
# 0x3814
andi $12 $30 0x9677
# 0x3818
andi $1 $18 0xed19
# 0x381c
sub $1 $27 $30
# 0x3820
slt $17 $21 $6
# 0x3824
sra $2 $1 9
# 0x3828
lb $2 27($0)
# 0x382c
sh $3 18($0)
# 0x3830
ori $15 $16 0xfae9
# 0x3834
addi $10 $23 23394
# 0x3838
sra $12 $11 13
# 0x383c
srav $27 $3 $27
# 0x3840
mthi $4
# 0x3844
mult $4 $26
# 0x3848
lw $5 72($0)
# 0x384c
lw $31 16($0)
# 0x3850
addi $7 $11 24624
# 0x3854
slti $3 $2 -21301
# 0x3858
mflo $27
# 0x385c
lh $21 30($0)
# 0x3860
srl $10 $19 27
# 0x3864
sra $22 $5 25
# 0x3868
subu $20 $19 $2
# 0x386c
srav $24 $18 $2
# 0x3870
srlv $24 $12 $24
# 0x3874
and $10 $6 $14
# 0x3878
slti $24 $30 17057
# 0x387c
sub $14 $2 $4
# 0x3880
lui $7 0xbff6
# 0x3884
or $1 $23 $9
# 0x3888
sw $30 56($0)
# 0x388c
xor $21 $8 $27
# 0x3890
mthi $22
# 0x3894
srav $13 $15 $10
# 0x3898
and $1 $6 $20
# 0x389c
sll $14 $7 13
# 0x38a0
subu $9 $5 $7
# 0x38a4
ori $25 $7 0x04d2
# 0x38a8
sh $5 2($0)
# 0x38ac
srlv $20 $27 $1
# 0x38b0
multu $12 $9
# 0x38b4
lw $7 8($0)
# 0x38b8
srlv $14 $22 $23
# 0x38bc
srlv $25 $4 $4
# 0x38c0
sll $9 $18 16
# 0x38c4
lui $27 0xb7ff
# 0x38c8
lh $15 20($0)
# 0x38cc
sllv $13 $19 $14
# 0x38d0
nor $10 $25 $27
# 0x38d4
sra $24 $12 10
# 0x38d8
sll $1 $18 27
# 0x38dc
sltu $7 $7 $26
# 0x38e0
xor $22 $27 $19
# 0x38e4
nor $31 $1 $8
# 0x38e8
and $7 $26 $6
# 0x38ec
sh $19 22($0)
# 0x38f0
sw $1 84($0)
# 0x38f4
nor $2 $19 $8
# 0x38f8
lhu $24 24($0)
# 0x38fc
mtlo $4
# 0x3900
nor $21 $11 $18
# 0x3904
addu $27 $18 $21
# 0x3908
ori $2 $13 0x5611
# 0x390c
srl $20 $5 4
# 0x3910
multu $25 $1
# 0x3914
sw $19 12($0)
# 0x3918
lw $24 4($0)
# 0x391c
addi $30 $19 11441
# 0x3920
andi $15 $10 0xbbdf
# 0x3924
sll $4 $14 15
# 0x3928
mtlo $25
# 0x392c
sh $2 16($0)
# 0x3930
addiu $19 $18 29930
# 0x3934
sra $22 $31 31
# 0x3938
lh $23 8($0)
# 0x393c
multu $1 $25
# 0x3940
mthi $27
# 0x3944
andi $8 $2 0xbaab
# 0x3948
addi $30 $13 -17476
# 0x394c
sllv $7 $30 $1
# 0x3950
ori $16 $6 0xf1fc
# 0x3954
slt $31 $7 $9
# 0x3958
addiu $30 $1 26027
# 0x395c
mtlo $12
# 0x3960
add $3 $6 $14
# 0x3964
sb $18 28($0)
# 0x3968
sub $12 $26 $15
# 0x396c
mult $25 $19
# 0x3970
or $19 $15 $17
# 0x3974
sw $1 0($0)
# 0x3978
lhu $1 12($0)
# 0x397c
lw $25 68($0)
# 0x3980
lui $18 0xc32c
# 0x3984
sb $22 10($0)
# 0x3988
sll $26 $2 1
# 0x398c
sltiu $13 $25 13218
# 0x3990
sllv $13 $7 $8
# 0x3994
andi $17 $1 0x4b33
# 0x3998
lui $17 0x639e
# 0x399c
lh $3 42($0)
# 0x39a0
sw $7 84($0)
# 0x39a4
sltiu $26 $4 1497
# 0x39a8
sw $30 96($0)
# 0x39ac
sb $6 27($0)
# 0x39b0
mult $14 $20
# 0x39b4
srlv $20 $17 $17
# 0x39b8
addu $25 $2 $21
# 0x39bc
lw $6 100($0)
# 0x39c0
mflo $10
# 0x39c4
lb $10 19($0)
# 0x39c8
sub $24 $23 $18
# 0x39cc
andi $6 $30 0xe8cf
# 0x39d0
slti $9 $5 27568
# 0x39d4
and $23 $26 $20
# 0x39d8
sltu $6 $5 $22
# 0x39dc
sub $15 $11 $15
# 0x39e0
sll $31 $13 17
# 0x39e4
sll $5 $14 29
# 0x39e8
mfhi $6
# 0x39ec
mflo $3
# 0x39f0
mflo $4
# 0x39f4
nor $9 $30 $26
# 0x39f8
sra $5 $2 27
# 0x39fc
sllv $15 $18 $30
# 0x3a00
sltu $14 $1 $12
# 0x3a04
lhu $13 22($0)
# 0x3a08
lbu $31 27($0)
# 0x3a0c
srlv $4 $15 $4
# 0x3a10
multu $19 $12
# 0x3a14
xori $4 $15 0xb373
# 0x3a18
mfhi $7
# 0x3a1c
subu $21 $18 $3
# 0x3a20
or $25 $20 $22
# 0x3a24
sw $13 116($0)
# 0x3a28
mflo $2
# 0x3a2c
sh $6 22($0)
# 0x3a30
sb $8 14($0)
# 0x3a34
addiu $18 $11 9855
# 0x3a38
sllv $20 $3 $24
# 0x3a3c
add $13 $26 $21
# 0x3a40
srl $12 $31 3
# 0x3a44
mflo $22
# 0x3a48
ori $5 $16 0xc867
# 0x3a4c
mfhi $25
# 0x3a50
or $7 $10 $2
# 0x3a54
mfhi $7
# 0x3a58
sh $27 12($0)
# 0x3a5c
lb $21 12($0)
# 0x3a60
or $22 $6 $1
# 0x3a64
lw $10 12($0)
# 0x3a68
mflo $20
# 0x3a6c
sll $21 $11 3
# 0x3a70
multu $19 $3
# 0x3a74
lw $17 28($0)
# 0x3a78
andi $12 $19 0x940d
# 0x3a7c
lbu $11 16($0)
# 0x3a80
multu $2 $18
# 0x3a84
slt $2 $23 $22
# 0x3a88
xori $31 $14 0xe46b
# 0x3a8c
lh $14 58($0)
# 0x3a90
sh $27 26($0)
# 0x3a94
lui $21 0x66c6
# 0x3a98
nor $6 $24 $1
# 0x3a9c
srlv $27 $5 $3
# 0x3aa0
sh $25 48($0)
# 0x3aa4
and $21 $16 $3
# 0x3aa8
multu $10 $31
# 0x3aac
sltiu $8 $30 4727
# 0x3ab0
xor $23 $21 $23
# 0x3ab4
slt $3 $15 $5
# 0x3ab8
mult $11 $26
# 0x3abc
lui $21 0xecc5
# 0x3ac0
lw $11 28($0)
# 0x3ac4
addi $10 $22 -31659
# 0x3ac8
sllv $26 $26 $18
# 0x3acc
ori $9 $23 0xebed
# 0x3ad0
lh $19 32($0)
# 0x3ad4
or $11 $8 $10
# 0x3ad8
lw $25 116($0)
# 0x3adc
subu $13 $16 $23
# 0x3ae0
mtlo $26
# 0x3ae4
lhu $10 16($0)
# 0x3ae8
sll $31 $25 22
# 0x3aec
mtlo $17
# 0x3af0
srlv $13 $24 $22
# 0x3af4
srav $3 $1 $17
# 0x3af8
sh $18 6($0)
# 0x3afc
mfhi $30
# 0x3b00
slt $30 $22 $16
# 0x3b04
ori $11 $11 0x24b6
# 0x3b08
sb $30 21($0)
# 0x3b0c
addiu $6 $4 28976
# 0x3b10
sltiu $15 $30 19219
# 0x3b14
mtlo $8
# 0x3b18
add $1 $25 $15
# 0x3b1c
and $27 $18 $15
# 0x3b20
andi $11 $27 0x6c99
# 0x3b24
sra $25 $26 14
# 0x3b28
sllv $1 $17 $22
# 0x3b2c
sltu $30 $26 $16
# 0x3b30
srl $15 $11 7
# 0x3b34
srav $22 $21 $4
# 0x3b38
xor $25 $6 $8
# 0x3b3c
multu $8 $14
# 0x3b40
srlv $31 $14 $30
# 0x3b44
lui $19 0x9849
# 0x3b48
mult $31 $23
# 0x3b4c
sltiu $12 $24 79
# 0x3b50
slt $31 $8 $1
# 0x3b54
lw $15 60($0)
# 0x3b58
sllv $14 $30 $1
# 0x3b5c
slti $17 $16 14892
# 0x3b60
sw $12 60($0)
# 0x3b64
lb $10 29($0)
# 0x3b68
addiu $12 $24 337
# 0x3b6c
sh $31 10($0)
# 0x3b70
lbu $11 15($0)
# 0x3b74
mtlo $25
# 0x3b78
multu $19 $11
# 0x3b7c
mtlo $20
# 0x3b80
and $16 $8 $27
# 0x3b84
andi $20 $11 0x4104
# 0x3b88
lb $4 14($0)
# 0x3b8c
slti $16 $5 27317
# 0x3b90
addiu $30 $15 11481
# 0x3b94
addi $23 $8 -1942
# 0x3b98
ori $12 $9 0xb4c4
# 0x3b9c
and $3 $7 $20
# 0x3ba0
sh $21 30($0)
# 0x3ba4
mflo $11
# 0x3ba8
lbu $7 19($0)
# 0x3bac
sh $16 6($0)
# 0x3bb0
and $15 $15 $10
# 0x3bb4
sw $19 12($0)
# 0x3bb8
sra $31 $25 0
# 0x3bbc
multu $3 $16
# 0x3bc0
sllv $5 $17 $9
# 0x3bc4
srav $27 $14 $22
# 0x3bc8
sw $17 8($0)
# 0x3bcc
sltu $6 $12 $6
# 0x3bd0
lhu $22 4($0)
# 0x3bd4
sb $6 29($0)
# 0x3bd8
sltiu $20 $26 10463
# 0x3bdc
mult $10 $25
# 0x3be0
lh $6 20($0)
# 0x3be4
lh $18 10($0)
# 0x3be8
sub $21 $9 $17
# 0x3bec
and $12 $8 $9
# 0x3bf0
sra $1 $24 14
# 0x3bf4
slti $11 $14 -5018
# 0x3bf8
mflo $17
# 0x3bfc
mfhi $2
# 0x3c00
srl $6 $15 18
# 0x3c04
lh $18 6($0)
# 0x3c08
mthi $24
# 0x3c0c
add $8 $30 $16
# 0x3c10
mfhi $27
# 0x3c14
lb $20 3($0)
# 0x3c18
and $26 $27 $22
# 0x3c1c
lh $17 22($0)
# 0x3c20
nor $31 $19 $9
# 0x3c24
addi $17 $27 8706
# 0x3c28
sra $22 $9 3
# 0x3c2c
xor $6 $18 $22
# 0x3c30
lbu $3 19($0)
# 0x3c34
nor $27 $12 $20
# 0x3c38
andi $8 $4 0x360f
# 0x3c3c
lw $22 24($0)
# 0x3c40
lw $15 28($0)
# 0x3c44
lbu $19 23($0)
# 0x3c48
sb $9 30($0)
# 0x3c4c
lb $16 21($0)
# 0x3c50
andi $12 $20 0xdc46
# 0x3c54
srav $23 $15 $5
# 0x3c58
lw $12 68($0)
# 0x3c5c
subu $26 $24 $21
# 0x3c60
lb $20 12($0)
# 0x3c64
lw $5 108($0)
# 0x3c68
nor $19 $9 $16
# 0x3c6c
addi $12 $19 26351
# 0x3c70
and $2 $5 $4
# 0x3c74
xori $23 $21 0x4a94
# 0x3c78
nor $2 $16 $27
# 0x3c7c
lui $21 0xbe58
# 0x3c80
sh $11 48($0)
# 0x3c84
xor $21 $5 $25
# 0x3c88
xor $25 $25 $10
# 0x3c8c
mflo $10
# 0x3c90
sltu $14 $3 $21
# 0x3c94
srl $8 $13 12
# 0x3c98
srl $9 $7 28
# 0x3c9c
add $22 $18 $10
# 0x3ca0
multu $9 $23
# 0x3ca4
sra $8 $18 13
# 0x3ca8
lh $8 40($0)
# 0x3cac
slti $10 $27 -2742
# 0x3cb0
sll $17 $26 1
# 0x3cb4
sllv $20 $19 $30
# 0x3cb8
and $13 $8 $11
# 0x3cbc
sltiu $15 $19 28816
# 0x3cc0
sltiu $21 $25 3343
# 0x3cc4
addi $21 $31 21807
# 0x3cc8
sw $24 8($0)
# 0x3ccc
sw $5 12($0)
# 0x3cd0
srl $6 $20 11
# 0x3cd4
srlv $9 $26 $11
# 0x3cd8
sltu $5 $14 $15
# 0x3cdc
srav $27 $27 $27
# 0x3ce0
mfhi $21
# 0x3ce4
addiu $1 $21 32711
# 0x3ce8
add $15 $23 $10
# 0x3cec
addu $8 $24 $25
# 0x3cf0
subu $11 $14 $27
# 0x3cf4
sllv $6 $24 $2
# 0x3cf8
nor $22 $15 $31
# 0x3cfc
srl $8 $10 14
# 0x3d00
slti $22 $2 -3675
# 0x3d04
sltiu $3 $14 14752
# 0x3d08
srav $10 $4 $2
# 0x3d0c
addu $20 $6 $31
# 0x3d10
lh $21 38($0)
# 0x3d14
lhu $7 22($0)
# 0x3d18
slti $1 $13 20837
# 0x3d1c
addi $30 $7 4743
# 0x3d20
addi $16 $25 -9774
# 0x3d24
sh $24 34($0)
# 0x3d28
lb $4 29($0)
# 0x3d2c
lbu $25 30($0)
# 0x3d30
sra $3 $10 4
# 0x3d34
srav $2 $4 $14
# 0x3d38
mflo $21
# 0x3d3c
lh $10 22($0)
# 0x3d40
ori $21 $16 0x5be8
# 0x3d44
add $25 $3 $18
# 0x3d48
xori $5 $3 0x5d13
# 0x3d4c
srlv $7 $20 $7
# 0x3d50
lw $19 8($0)
# 0x3d54
mult $30 $24
# 0x3d58
addi $23 $26 -12728
# 0x3d5c
sh $6 30($0)
# 0x3d60
sltu $5 $7 $5
# 0x3d64
lh $22 60($0)
# 0x3d68
andi $4 $4 0x6c8f
# 0x3d6c
sub $18 $21 $20
# 0x3d70
mult $6 $14
# 0x3d74
add $5 $12 $10
# 0x3d78
slti $8 $4 8931
# 0x3d7c
sh $8 6($0)
# 0x3d80
multu $24 $27
# 0x3d84
sh $23 8($0)
# 0x3d88
lb $15 17($0)
# 0x3d8c
sw $2 4($0)
# 0x3d90
sh $7 16($0)
# 0x3d94
srl $5 $31 19
# 0x3d98
xori $21 $24 0xd931
# 0x3d9c
sb $5 7($0)
# 0x3da0
srlv $17 $31 $12
# 0x3da4
lh $17 22($0)
# 0x3da8
lw $19 92($0)
# 0x3dac
nor $15 $9 $19
# 0x3db0
sb $12 29($0)
# 0x3db4
sra $11 $27 20
# 0x3db8
sw $4 68($0)
# 0x3dbc
add $6 $14 $18
# 0x3dc0
andi $21 $4 0xbd8f
# 0x3dc4
multu $22 $5
# 0x3dc8
lui $4 0x1baa
# 0x3dcc
lh $10 20($0)
# 0x3dd0
mfhi $3
# 0x3dd4
lw $27 0($0)
# 0x3dd8
sh $10 0($0)
# 0x3ddc
mult $18 $6
# 0x3de0
addiu $13 $1 5754
# 0x3de4
addu $19 $14 $13
# 0x3de8
srlv $15 $11 $23
# 0x3dec
lbu $27 16($0)
# 0x3df0
lw $3 0($0)
# 0x3df4
srlv $11 $8 $30
# 0x3df8
mthi $10
# 0x3dfc
srlv $14 $22 $10
# 0x3e00
sw $2 56($0)
# 0x3e04
andi $7 $19 0xa63b
# 0x3e08
sltu $18 $15 $25
# 0x3e0c
ori $16 $8 0xf37b
# 0x3e10
addu $9 $9 $17
# 0x3e14
lh $27 6($0)
# 0x3e18
addu $23 $18 $25
# 0x3e1c
multu $17 $17
# 0x3e20
slt $8 $6 $16
# 0x3e24
addi $23 $13 -2706
# 0x3e28
sh $14 50($0)
# 0x3e2c
sub $11 $26 $4
# 0x3e30
lw $19 4($0)
# 0x3e34
srav $9 $30 $12
# 0x3e38
sw $14 116($0)
# 0x3e3c
addu $22 $11 $23
# 0x3e40
lbu $12 19($0)
# 0x3e44
lhu $21 4($0)
# 0x3e48
sw $9 12($0)
# 0x3e4c
sh $10 12($0)
# 0x3e50
lbu $24 30($0)
# 0x3e54
subu $3 $30 $15
# 0x3e58
mfhi $22
# 0x3e5c
lh $6 30($0)
# 0x3e60
xor $25 $2 $14
# 0x3e64
slt $17 $14 $30
# 0x3e68
slti $9 $6 25142
# 0x3e6c
sh $26 8($0)
# 0x3e70
andi $21 $22 0x256a
# 0x3e74
sh $11 48($0)
# 0x3e78
subu $2 $3 $21
# 0x3e7c
addiu $14 $2 4458
# 0x3e80
mflo $12
# 0x3e84
slti $23 $15 15326
# 0x3e88
mthi $14
# 0x3e8c
srl $15 $9 23
# 0x3e90
and $25 $7 $8
# 0x3e94
sw $13 36($0)
# 0x3e98
mthi $30
# 0x3e9c
addi $13 $19 17383
# 0x3ea0
or $13 $3 $8
# 0x3ea4
nor $2 $8 $30
# 0x3ea8
sra $15 $7 0
# 0x3eac
andi $2 $25 0xa0cc
# 0x3eb0
slt $25 $15 $5
# 0x3eb4
sra $21 $21 2
# 0x3eb8
or $8 $21 $27
# 0x3ebc
sra $17 $20 24
# 0x3ec0
lui $25 0xcf0a
# 0x3ec4
sw $5 104($0)
# 0x3ec8
and $17 $12 $15
# 0x3ecc
add $20 $7 $24
# 0x3ed0
srav $16 $23 $14
# 0x3ed4
slt $27 $16 $21
# 0x3ed8
xor $26 $12 $14
# 0x3edc
sw $9 124($0)
# 0x3ee0
and $31 $20 $19
# 0x3ee4
sub $10 $10 $3
# 0x3ee8
sw $16 16($0)
# 0x3eec
sub $12 $21 $18
# 0x3ef0
sh $20 48($0)
# 0x3ef4
srlv $3 $16 $10
# 0x3ef8
addiu $12 $14 5975
# 0x3efc
sh $16 14($0)
# 0x3f00
nor $7 $10 $1
# 0x3f04
xori $19 $10 0xd039
# 0x3f08
lui $12 0x3ea7
# 0x3f0c
or $3 $1 $21
# 0x3f10
sltiu $2 $4 11484
# 0x3f14
multu $2 $25
# 0x3f18
srlv $21 $17 $30
# 0x3f1c
lw $21 12($0)
# 0x3f20
lh $23 2($0)
# 0x3f24
lui $9 0x45e7
# 0x3f28
mflo $18
# 0x3f2c
multu $27 $1
# 0x3f30
mthi $7
# 0x3f34
add $22 $22 $20
# 0x3f38
subu $14 $5 $6
# 0x3f3c
lb $9 31($0)
# 0x3f40
srlv $11 $27 $7
# 0x3f44
slti $25 $9 12869
# 0x3f48
sltu $12 $15 $9
# 0x3f4c
sh $19 22($0)
# 0x3f50
sllv $7 $11 $17
# 0x3f54
sltiu $15 $31 11832
# 0x3f58
and $27 $3 $2
# 0x3f5c
add $1 $10 $3
# 0x3f60
mfhi $10
# 0x3f64
sllv $26 $11 $20
# 0x3f68
mflo $9
# 0x3f6c
lh $12 2($0)
# 0x3f70
mult $23 $27
# 0x3f74
sll $8 $9 20
# 0x3f78
sh $31 4($0)
# 0x3f7c
mult $4 $31
# 0x3f80
sll $3 $23 6
# 0x3f84
mflo $7
# 0x3f88
xori $19 $30 0x7dc4
# 0x3f8c
andi $31 $17 0x2ce9
# 0x3f90
lw $31 8($0)
# 0x3f94
lw $30 4($0)
# 0x3f98
andi $21 $31 0x4402
# 0x3f9c
lb $27 21($0)
# 0x3fa0
and $9 $20 $11

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop