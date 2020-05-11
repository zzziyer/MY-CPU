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
xor $6 $23 $1
# 0x3008
lb $16 21($0)
# 0x300c
mtlo $30
# 0x3010
lw $23 28($0)
# 0x3014
slt $25 $16 $23
# 0x3018
slt $15 $3 $20
# 0x301c
lbu $11 11($0)
# 0x3020
sltiu $7 $21 2458
# 0x3024
subu $22 $12 $16
# 0x3028
multu $2 $8
# 0x302c
addi $6 $27 -25711
# 0x3030
lb $10 12($0)
# 0x3034
lh $3 12($0)
# 0x3038
and $18 $11 $21
# 0x303c
srlv $6 $31 $8
# 0x3040
sltiu $19 $20 2453
# 0x3044
sll $25 $10 0
# 0x3048
slt $4 $1 $15
# 0x304c
srav $10 $30 $7
# 0x3050
sltu $5 $5 $31
# 0x3054
lw $25 8($0)
# 0x3058
addiu $14 $8 23829
# 0x305c
lw $13 112($0)
# 0x3060
mflo $11
# 0x3064
mtlo $9
# 0x3068
andi $7 $24 0x3d08
# 0x306c
addiu $6 $16 3976
# 0x3070
sw $8 24($0)
# 0x3074
sw $9 112($0)
# 0x3078
sh $25 14($0)
# 0x307c
or $5 $19 $30
# 0x3080
lb $14 11($0)
# 0x3084
mfhi $7
# 0x3088
mult $27 $9
# 0x308c
multu $7 $16
# 0x3090
mfhi $15
# 0x3094
slt $13 $8 $16
# 0x3098
lui $18 0x9d73
# 0x309c
slti $26 $27 -4742
# 0x30a0
addiu $27 $3 17479
# 0x30a4
lb $24 17($0)
# 0x30a8
lh $20 12($0)
# 0x30ac
lb $20 29($0)
# 0x30b0
sh $25 10($0)
# 0x30b4
slt $23 $31 $6
# 0x30b8
xor $13 $4 $24
# 0x30bc
xor $15 $9 $17
# 0x30c0
subu $13 $22 $16
# 0x30c4
addu $9 $12 $2
# 0x30c8
sw $2 96($0)
# 0x30cc
sll $20 $8 4
# 0x30d0
mtlo $7
# 0x30d4
add $14 $6 $4
# 0x30d8
mfhi $25
# 0x30dc
lhu $11 14($0)
# 0x30e0
srl $18 $20 24
# 0x30e4
subu $18 $21 $16
# 0x30e8
andi $15 $21 0x10b0
# 0x30ec
multu $18 $14
# 0x30f0
lw $9 24($0)
# 0x30f4
mult $17 $1
# 0x30f8
addi $9 $5 6130
# 0x30fc
sll $6 $14 20
# 0x3100
add $26 $21 $18
# 0x3104
lui $26 0x1735
# 0x3108
addi $6 $14 3246
# 0x310c
lh $26 0($0)
# 0x3110
srl $24 $14 24
# 0x3114
sub $17 $12 $12
# 0x3118
andi $2 $18 0xeac3
# 0x311c
ori $5 $9 0xb1ba
# 0x3120
sltiu $13 $27 32326
# 0x3124
addu $20 $18 $5
# 0x3128
multu $4 $12
# 0x312c
ori $25 $23 0x5487
# 0x3130
sw $16 28($0)
# 0x3134
addi $23 $16 31550
# 0x3138
srl $18 $31 25
# 0x313c
sltu $18 $27 $5
# 0x3140
and $14 $7 $13
# 0x3144
sll $26 $12 15
# 0x3148
xori $8 $26 0xd1bc
# 0x314c
mthi $9
# 0x3150
mfhi $21
# 0x3154
slt $13 $3 $20
# 0x3158
slti $24 $3 -11936
# 0x315c
srl $17 $20 4
# 0x3160
lw $14 92($0)
# 0x3164
srl $6 $7 22
# 0x3168
mthi $10
# 0x316c
sw $17 16($0)
# 0x3170
or $9 $26 $12
# 0x3174
addu $20 $12 $17
# 0x3178
srav $3 $9 $18
# 0x317c
sllv $19 $9 $7
# 0x3180
lw $17 96($0)
# 0x3184
andi $30 $8 0x990f
# 0x3188
slt $14 $6 $26
# 0x318c
nor $17 $15 $11
# 0x3190
lui $7 0x7ef3
# 0x3194
ori $15 $22 0x351c
# 0x3198
sh $3 12($0)
# 0x319c
sllv $5 $17 $15
# 0x31a0
mflo $18
# 0x31a4
sllv $14 $20 $9
# 0x31a8
lui $14 0x6b46
# 0x31ac
lw $17 104($0)
# 0x31b0
sub $10 $17 $8
# 0x31b4
add $13 $22 $1
# 0x31b8
or $26 $27 $4
# 0x31bc
sltu $16 $25 $5
# 0x31c0
add $25 $24 $23
# 0x31c4
slt $13 $18 $31
# 0x31c8
add $9 $11 $1
# 0x31cc
sb $5 8($0)
# 0x31d0
mfhi $6
# 0x31d4
xor $23 $18 $11
# 0x31d8
srlv $30 $18 $27
# 0x31dc
mflo $14
# 0x31e0
andi $6 $20 0x96e4
# 0x31e4
lw $11 20($0)
# 0x31e8
lw $27 12($0)
# 0x31ec
and $20 $6 $21
# 0x31f0
lb $3 15($0)
# 0x31f4
or $18 $4 $8
# 0x31f8
sh $6 30($0)
# 0x31fc
sra $31 $1 14
# 0x3200
nor $13 $8 $25
# 0x3204
addiu $21 $3 25557
# 0x3208
lh $17 2($0)
# 0x320c
sw $17 8($0)
# 0x3210
nor $26 $8 $26
# 0x3214
lh $4 40($0)
# 0x3218
slti $8 $31 8347
# 0x321c
srav $12 $16 $27
# 0x3220
multu $21 $19
# 0x3224
lw $26 28($0)
# 0x3228
xori $13 $26 0xdc68
# 0x322c
lw $5 8($0)
# 0x3230
mult $8 $16
# 0x3234
andi $23 $1 0xde6e
# 0x3238
lb $18 1($0)
# 0x323c
sw $14 24($0)
# 0x3240
srav $30 $13 $6
# 0x3244
srav $18 $27 $1
# 0x3248
lbu $25 7($0)
# 0x324c
lhu $3 26($0)
# 0x3250
lh $14 44($0)
# 0x3254
lw $27 8($0)
# 0x3258
mult $14 $2
# 0x325c
sltiu $22 $2 6626
# 0x3260
srlv $5 $10 $23
# 0x3264
slti $14 $8 9134
# 0x3268
srav $8 $6 $31
# 0x326c
slt $24 $1 $11
# 0x3270
add $22 $25 $26
# 0x3274
nor $12 $27 $5
# 0x3278
sra $27 $9 29
# 0x327c
mtlo $6
# 0x3280
andi $31 $6 0x930c
# 0x3284
add $21 $6 $2
# 0x3288
sw $15 48($0)
# 0x328c
slt $9 $18 $26
# 0x3290
and $19 $24 $20
# 0x3294
srl $11 $27 30
# 0x3298
addi $13 $12 22440
# 0x329c
lh $12 6($0)
# 0x32a0
sllv $11 $6 $25
# 0x32a4
lb $21 24($0)
# 0x32a8
sw $21 8($0)
# 0x32ac
lbu $20 9($0)
# 0x32b0
lh $7 4($0)
# 0x32b4
add $7 $12 $30
# 0x32b8
ori $23 $31 0x9768
# 0x32bc
sllv $24 $4 $13
# 0x32c0
slti $9 $22 9351
# 0x32c4
sltu $5 $4 $17
# 0x32c8
lui $12 0xdd83
# 0x32cc
slti $6 $18 18982
# 0x32d0
ori $19 $23 0x9326
# 0x32d4
mflo $10
# 0x32d8
lh $10 14($0)
# 0x32dc
lhu $22 24($0)
# 0x32e0
sw $17 8($0)
# 0x32e4
sltiu $27 $31 776
# 0x32e8
slti $27 $17 -16626
# 0x32ec
xor $23 $22 $25
# 0x32f0
mflo $25
# 0x32f4
lw $20 12($0)
# 0x32f8
addu $27 $30 $12
# 0x32fc
nor $27 $22 $7
# 0x3300
srav $15 $17 $6
# 0x3304
or $10 $6 $26
# 0x3308
sb $20 29($0)
# 0x330c
xor $21 $3 $10
# 0x3310
xori $10 $17 0xeb95
# 0x3314
srlv $30 $19 $18
# 0x3318
or $19 $3 $25
# 0x331c
sh $16 10($0)
# 0x3320
sra $15 $22 3
# 0x3324
srl $4 $5 19
# 0x3328
ori $25 $20 0x3274
# 0x332c
and $13 $20 $30
# 0x3330
multu $21 $24
# 0x3334
srl $2 $13 13
# 0x3338
xori $23 $1 0x8e0b
# 0x333c
sw $2 32($0)
# 0x3340
slti $25 $6 -27378
# 0x3344
sw $16 68($0)
# 0x3348
sra $5 $8 28
# 0x334c
add $1 $5 $25
# 0x3350
addi $16 $26 6713
# 0x3354
xor $23 $23 $30
# 0x3358
lhu $5 12($0)
# 0x335c
mtlo $30
# 0x3360
xor $26 $2 $31
# 0x3364
mfhi $19
# 0x3368
sh $21 26($0)
# 0x336c
mult $7 $27
# 0x3370
sllv $24 $20 $18
# 0x3374
or $30 $9 $22
# 0x3378
slti $30 $7 -10918
# 0x337c
mult $11 $15
# 0x3380
sltiu $30 $2 8107
# 0x3384
addu $5 $13 $4
# 0x3388
subu $19 $25 $12
# 0x338c
sw $30 8($0)
# 0x3390
mfhi $26
# 0x3394
lbu $16 31($0)
# 0x3398
xor $27 $22 $26
# 0x339c
addiu $16 $22 31985
# 0x33a0
sh $22 16($0)
# 0x33a4
srav $18 $23 $14
# 0x33a8
sw $18 80($0)
# 0x33ac
sll $26 $16 24
# 0x33b0
mthi $13
# 0x33b4
sltiu $17 $1 18961
# 0x33b8
sll $22 $20 18
# 0x33bc
addu $19 $22 $5
# 0x33c0
sw $12 104($0)
# 0x33c4
sw $30 28($0)
# 0x33c8
lb $27 12($0)
# 0x33cc
srlv $17 $3 $19
# 0x33d0
srl $15 $27 25
# 0x33d4
multu $5 $14
# 0x33d8
or $3 $13 $4
# 0x33dc
lw $16 56($0)
# 0x33e0
mflo $7
# 0x33e4
andi $20 $26 0x795f
# 0x33e8
mtlo $12
# 0x33ec
mfhi $3
# 0x33f0
addiu $5 $10 5354
# 0x33f4
sh $4 0($0)
# 0x33f8
srl $21 $17 5
# 0x33fc
subu $19 $9 $30
# 0x3400
xori $4 $14 0xd9e8
# 0x3404
mflo $11
# 0x3408
addu $22 $20 $14
# 0x340c
sb $2 11($0)
# 0x3410
ori $16 $31 0x40dd
# 0x3414
lw $23 16($0)
# 0x3418
or $21 $13 $7
# 0x341c
andi $15 $31 0xde86
# 0x3420
or $15 $26 $18
# 0x3424
srav $25 $20 $27
# 0x3428
slti $23 $30 -31919
# 0x342c
addi $31 $9 22317
# 0x3430
lbu $6 4($0)
# 0x3434
sh $12 4($0)
# 0x3438
srlv $11 $25 $18
# 0x343c
sw $9 16($0)
# 0x3440
slt $30 $21 $2
# 0x3444
sub $15 $11 $5
# 0x3448
lh $20 4($0)
# 0x344c
xori $4 $30 0x0675
# 0x3450
mult $18 $16
# 0x3454
sub $21 $16 $3
# 0x3458
xori $23 $4 0xdb2c
# 0x345c
slt $26 $9 $10
# 0x3460
lw $14 24($0)
# 0x3464
addi $13 $11 -27170
# 0x3468
nor $3 $30 $5
# 0x346c
sub $17 $26 $11
# 0x3470
ori $15 $20 0xa32b
# 0x3474
add $16 $2 $30
# 0x3478
mflo $20
# 0x347c
mthi $14
# 0x3480
sllv $20 $5 $31
# 0x3484
lhu $14 26($0)
# 0x3488
lh $10 14($0)
# 0x348c
lw $23 28($0)
# 0x3490
add $2 $24 $20
# 0x3494
nor $12 $6 $8
# 0x3498
sb $25 22($0)
# 0x349c
addiu $19 $16 10927
# 0x34a0
subu $7 $24 $8
# 0x34a4
sltiu $11 $25 3329
# 0x34a8
sw $14 20($0)
# 0x34ac
ori $21 $6 0x75c3
# 0x34b0
lhu $5 20($0)
# 0x34b4
mfhi $5
# 0x34b8
sw $11 24($0)
# 0x34bc
slti $14 $18 -23152
# 0x34c0
multu $26 $8
# 0x34c4
and $20 $19 $11
# 0x34c8
mfhi $25
# 0x34cc
srav $7 $14 $26
# 0x34d0
mflo $9
# 0x34d4
addu $1 $16 $22
# 0x34d8
srl $3 $31 9
# 0x34dc
lb $24 12($0)
# 0x34e0
srav $8 $20 $30
# 0x34e4
mult $17 $8
# 0x34e8
multu $21 $17
# 0x34ec
or $11 $23 $21
# 0x34f0
add $5 $23 $21
# 0x34f4
andi $26 $14 0x8e16
# 0x34f8
mtlo $27
# 0x34fc
and $17 $10 $17
# 0x3500
sllv $12 $24 $13
# 0x3504
sltu $8 $3 $23
# 0x3508
andi $4 $25 0x26ec
# 0x350c
slt $16 $1 $5
# 0x3510
add $15 $18 $17
# 0x3514
lui $22 0x19a7
# 0x3518
sb $11 27($0)
# 0x351c
sh $9 2($0)
# 0x3520
sltiu $12 $26 4933
# 0x3524
srl $1 $16 26
# 0x3528
addi $11 $8 -26170
# 0x352c
xor $25 $15 $24
# 0x3530
mult $2 $11
# 0x3534
sra $7 $30 27
# 0x3538
sw $9 116($0)
# 0x353c
sb $19 7($0)
# 0x3540
mult $21 $18
# 0x3544
sw $1 0($0)
# 0x3548
slt $5 $23 $10
# 0x354c
srav $11 $27 $22
# 0x3550
andi $27 $15 0x9ae3
# 0x3554
sw $16 60($0)
# 0x3558
lbu $15 7($0)
# 0x355c
sltu $11 $18 $19
# 0x3560
mtlo $14
# 0x3564
srav $14 $18 $20
# 0x3568
nor $21 $24 $26
# 0x356c
addi $25 $8 -16466
# 0x3570
lw $17 28($0)
# 0x3574
lui $12 0x8623
# 0x3578
lw $10 28($0)
# 0x357c
sll $12 $7 30
# 0x3580
slt $25 $26 $16
# 0x3584
ori $4 $15 0x237d
# 0x3588
sb $24 12($0)
# 0x358c
addu $5 $11 $4
# 0x3590
andi $17 $7 0x6262
# 0x3594
xor $24 $6 $9
# 0x3598
andi $9 $2 0xe82e
# 0x359c
and $4 $1 $26
# 0x35a0
mflo $2
# 0x35a4
sb $4 6($0)
# 0x35a8
addi $18 $8 14224
# 0x35ac
slt $19 $19 $2
# 0x35b0
ori $10 $8 0x93e3
# 0x35b4
xor $13 $30 $25
# 0x35b8
sw $3 24($0)
# 0x35bc
mfhi $14
# 0x35c0
lw $12 16($0)
# 0x35c4
nor $30 $11 $14
# 0x35c8
lw $22 24($0)
# 0x35cc
xor $6 $19 $20
# 0x35d0
mult $8 $9
# 0x35d4
sb $3 28($0)
# 0x35d8
mthi $11
# 0x35dc
srav $8 $26 $26
# 0x35e0
sh $2 14($0)
# 0x35e4
lui $12 0xd80d
# 0x35e8
sw $31 24($0)
# 0x35ec
sltu $7 $18 $15
# 0x35f0
lui $14 0xa784
# 0x35f4
slt $19 $5 $20
# 0x35f8
mult $16 $3
# 0x35fc
mthi $3
# 0x3600
sltu $5 $5 $7
# 0x3604
add $8 $7 $13
# 0x3608
add $30 $16 $31
# 0x360c
mflo $14
# 0x3610
and $16 $10 $27
# 0x3614
sllv $19 $9 $7
# 0x3618
xor $27 $23 $15
# 0x361c
addi $10 $3 6861
# 0x3620
ori $5 $19 0x88d6
# 0x3624
slti $8 $22 -10114
# 0x3628
addu $5 $26 $11
# 0x362c
subu $27 $26 $23
# 0x3630
add $20 $26 $4
# 0x3634
mfhi $6
# 0x3638
sra $10 $22 8
# 0x363c
sw $11 8($0)
# 0x3640
sw $13 0($0)
# 0x3644
lw $4 24($0)
# 0x3648
lw $2 0($0)
# 0x364c
sltu $7 $9 $25
# 0x3650
and $13 $7 $23
# 0x3654
sll $18 $31 9
# 0x3658
mflo $10
# 0x365c
mflo $4
# 0x3660
or $27 $19 $24
# 0x3664
slti $31 $10 16309
# 0x3668
sll $19 $5 6
# 0x366c
sra $2 $23 12
# 0x3670
mflo $18
# 0x3674
lh $12 0($0)
# 0x3678
sltiu $19 $16 22211
# 0x367c
addu $21 $25 $21
# 0x3680
xori $22 $18 0xacc4
# 0x3684
addiu $22 $15 22489
# 0x3688
slt $7 $1 $15
# 0x368c
lb $16 19($0)
# 0x3690
srav $31 $5 $20
# 0x3694
or $23 $9 $31
# 0x3698
ori $21 $15 0x6e56
# 0x369c
slt $3 $31 $18
# 0x36a0
sra $14 $25 28
# 0x36a4
andi $6 $1 0x8638
# 0x36a8
lw $1 100($0)
# 0x36ac
ori $16 $3 0xb86e
# 0x36b0
nor $30 $14 $15
# 0x36b4
lb $27 9($0)
# 0x36b8
mfhi $14
# 0x36bc
srl $9 $30 29
# 0x36c0
lw $2 4($0)
# 0x36c4
lw $19 12($0)
# 0x36c8
lb $14 11($0)
# 0x36cc
sh $14 26($0)
# 0x36d0
lw $6 104($0)
# 0x36d4
subu $30 $3 $3
# 0x36d8
sub $17 $23 $13
# 0x36dc
sub $27 $10 $7
# 0x36e0
subu $3 $27 $3
# 0x36e4
add $15 $27 $20
# 0x36e8
mult $7 $5
# 0x36ec
sra $6 $26 19
# 0x36f0
sll $17 $14 22
# 0x36f4
slti $7 $14 12395
# 0x36f8
and $19 $27 $31
# 0x36fc
andi $16 $22 0x31f0
# 0x3700
lw $26 4($0)
# 0x3704
slt $6 $21 $12
# 0x3708
sb $5 26($0)
# 0x370c
ori $8 $16 0x6a2a
# 0x3710
mfhi $20
# 0x3714
srav $3 $18 $7
# 0x3718
lbu $27 9($0)
# 0x371c
mthi $7
# 0x3720
lui $12 0xbcbc
# 0x3724
srl $24 $11 26
# 0x3728
sh $3 30($0)
# 0x372c
mult $3 $6
# 0x3730
addu $23 $18 $11
# 0x3734
xor $19 $13 $1
# 0x3738
nor $27 $11 $16
# 0x373c
nor $7 $6 $11
# 0x3740
sb $26 7($0)
# 0x3744
and $26 $31 $25
# 0x3748
addi $5 $5 -5869
# 0x374c
add $31 $14 $1
# 0x3750
mult $30 $3
# 0x3754
srlv $26 $24 $10
# 0x3758
mflo $7
# 0x375c
add $26 $22 $5
# 0x3760
lbu $15 20($0)
# 0x3764
sub $12 $23 $24
# 0x3768
addu $9 $1 $22
# 0x376c
mtlo $13
# 0x3770
mtlo $26
# 0x3774
add $3 $5 $18
# 0x3778
nor $27 $15 $4
# 0x377c
srl $7 $11 3
# 0x3780
sh $6 8($0)
# 0x3784
sh $12 28($0)
# 0x3788
sllv $7 $1 $2
# 0x378c
sb $16 11($0)
# 0x3790
xor $6 $10 $26
# 0x3794
sllv $1 $4 $22
# 0x3798
lb $4 25($0)
# 0x379c
addu $19 $31 $19
# 0x37a0
mult $18 $18
# 0x37a4
and $13 $19 $4
# 0x37a8
lh $6 12($0)
# 0x37ac
sw $4 8($0)
# 0x37b0
slti $31 $16 -9462
# 0x37b4
multu $21 $16
# 0x37b8
sb $10 7($0)
# 0x37bc
lw $22 4($0)
# 0x37c0
add $1 $3 $4
# 0x37c4
andi $22 $14 0x844d
# 0x37c8
sll $23 $2 1
# 0x37cc
ori $20 $9 0x9cae
# 0x37d0
xor $22 $1 $1
# 0x37d4
srlv $11 $31 $7
# 0x37d8
multu $5 $19
# 0x37dc
addiu $1 $14 31762
# 0x37e0
andi $6 $7 0x45fb
# 0x37e4
lh $13 34($0)
# 0x37e8
sb $30 1($0)
# 0x37ec
lw $2 96($0)
# 0x37f0
addi $9 $31 16925
# 0x37f4
lui $19 0x5e25
# 0x37f8
lh $1 14($0)
# 0x37fc
sltu $6 $6 $8
# 0x3800
lui $1 0x285a
# 0x3804
sltiu $1 $17 15610
# 0x3808
mflo $15
# 0x380c
srl $25 $13 12
# 0x3810
xori $18 $3 0xc958
# 0x3814
srav $12 $5 $20
# 0x3818
lhu $9 10($0)
# 0x381c
lh $8 20($0)
# 0x3820
lbu $2 17($0)
# 0x3824
and $7 $26 $17
# 0x3828
mthi $13
# 0x382c
add $31 $8 $5
# 0x3830
lb $14 1($0)
# 0x3834
or $18 $3 $9
# 0x3838
lw $10 0($0)
# 0x383c
lhu $4 14($0)
# 0x3840
sh $8 12($0)
# 0x3844
addiu $18 $14 12109
# 0x3848
add $11 $10 $2
# 0x384c
sra $25 $22 25
# 0x3850
sltu $18 $1 $2
# 0x3854
lw $13 8($0)
# 0x3858
xori $26 $10 0xcf44
# 0x385c
sw $11 108($0)
# 0x3860
addiu $6 $1 23974
# 0x3864
multu $21 $8
# 0x3868
addu $20 $15 $7
# 0x386c
srl $27 $16 17
# 0x3870
sltu $24 $4 $22
# 0x3874
xori $24 $12 0xcdef
# 0x3878
andi $24 $22 0x6e65
# 0x387c
lw $1 20($0)
# 0x3880
xor $22 $24 $19
# 0x3884
subu $17 $11 $3
# 0x3888
lw $14 60($0)
# 0x388c
sra $5 $15 20
# 0x3890
sltu $27 $7 $8
# 0x3894
slti $14 $13 20027
# 0x3898
mflo $3
# 0x389c
slt $23 $23 $5
# 0x38a0
sllv $6 $23 $17
# 0x38a4
lbu $3 14($0)
# 0x38a8
sra $30 $15 15
# 0x38ac
lhu $19 12($0)
# 0x38b0
andi $11 $18 0xa12e
# 0x38b4
addi $10 $23 9547
# 0x38b8
mfhi $19
# 0x38bc
sra $15 $20 16
# 0x38c0
multu $11 $17
# 0x38c4
lui $19 0xf44e
# 0x38c8
sltiu $8 $22 884
# 0x38cc
addi $3 $7 5532
# 0x38d0
lh $7 18($0)
# 0x38d4
lw $7 104($0)
# 0x38d8
lh $9 18($0)
# 0x38dc
addu $3 $17 $13
# 0x38e0
sltu $26 $1 $10
# 0x38e4
lw $12 116($0)
# 0x38e8
addiu $4 $24 4107
# 0x38ec
xori $9 $23 0x4eaf
# 0x38f0
sra $1 $11 27
# 0x38f4
xori $18 $4 0xe466
# 0x38f8
srav $25 $2 $16
# 0x38fc
nor $14 $23 $23
# 0x3900
addiu $2 $9 20914
# 0x3904
mflo $14
# 0x3908
mtlo $26
# 0x390c
lh $21 58($0)
# 0x3910
sll $15 $31 4
# 0x3914
xori $15 $5 0x2259
# 0x3918
nor $16 $2 $30
# 0x391c
sb $26 8($0)
# 0x3920
mflo $13
# 0x3924
lw $15 16($0)
# 0x3928
lbu $21 19($0)
# 0x392c
add $24 $24 $15
# 0x3930
lb $12 14($0)
# 0x3934
sw $17 64($0)
# 0x3938
mult $7 $15
# 0x393c
lh $1 12($0)
# 0x3940
lw $25 0($0)
# 0x3944
mflo $6
# 0x3948
mflo $24
# 0x394c
lb $17 2($0)
# 0x3950
addiu $15 $2 21933
# 0x3954
mthi $14
# 0x3958
nor $22 $15 $9
# 0x395c
andi $13 $23 0xe496
# 0x3960
sltu $1 $12 $31
# 0x3964
lh $30 20($0)
# 0x3968
mflo $9
# 0x396c
sh $9 2($0)
# 0x3970
lw $19 16($0)
# 0x3974
or $27 $9 $15
# 0x3978
sltiu $12 $27 21754
# 0x397c
srlv $5 $21 $25
# 0x3980
srlv $5 $15 $16
# 0x3984
sw $16 28($0)
# 0x3988
lui $26 0xe25e
# 0x398c
slti $8 $9 -3485
# 0x3990
sub $9 $31 $12
# 0x3994
sw $23 100($0)
# 0x3998
sltu $30 $8 $2
# 0x399c
or $30 $23 $31
# 0x39a0
srav $12 $24 $12
# 0x39a4
or $25 $12 $21
# 0x39a8
srav $16 $12 $12
# 0x39ac
sra $16 $30 15
# 0x39b0
sh $16 62($0)
# 0x39b4
nor $23 $15 $9
# 0x39b8
or $8 $17 $7
# 0x39bc
or $2 $3 $19
# 0x39c0
lw $8 28($0)
# 0x39c4
mflo $14
# 0x39c8
addu $20 $22 $21
# 0x39cc
lw $8 24($0)
# 0x39d0
addi $13 $23 -11148
# 0x39d4
lbu $22 20($0)
# 0x39d8
lw $22 56($0)
# 0x39dc
subu $23 $1 $13
# 0x39e0
lh $9 26($0)
# 0x39e4
sra $4 $3 17
# 0x39e8
sw $16 8($0)
# 0x39ec
srav $30 $18 $19
# 0x39f0
or $26 $15 $18
# 0x39f4
lb $9 3($0)
# 0x39f8
nor $20 $5 $31
# 0x39fc
sra $23 $21 9
# 0x3a00
lw $8 24($0)
# 0x3a04
sra $8 $26 5
# 0x3a08
lbu $15 14($0)
# 0x3a0c
multu $3 $19
# 0x3a10
mfhi $4
# 0x3a14
lw $7 0($0)
# 0x3a18
multu $24 $5
# 0x3a1c
sh $11 48($0)
# 0x3a20
sw $31 12($0)
# 0x3a24
addu $21 $14 $18
# 0x3a28
srlv $9 $14 $8
# 0x3a2c
sw $5 20($0)
# 0x3a30
lui $16 0xc0f1
# 0x3a34
sw $18 24($0)
# 0x3a38
and $26 $25 $13
# 0x3a3c
xor $21 $14 $7
# 0x3a40
addu $16 $13 $12
# 0x3a44
lh $1 24($0)
# 0x3a48
add $31 $10 $11
# 0x3a4c
lw $20 8($0)
# 0x3a50
mfhi $20
# 0x3a54
sltiu $15 $30 27018
# 0x3a58
mfhi $10
# 0x3a5c
slti $14 $12 19402
# 0x3a60
sll $24 $4 2
# 0x3a64
sh $24 6($0)
# 0x3a68
slt $25 $12 $2
# 0x3a6c
mtlo $10
# 0x3a70
sltu $25 $6 $30
# 0x3a74
xor $2 $9 $6
# 0x3a78
mult $10 $3
# 0x3a7c
sll $13 $27 20
# 0x3a80
ori $14 $24 0x188f
# 0x3a84
slti $24 $17 -22658
# 0x3a88
sub $12 $22 $31
# 0x3a8c
sh $19 30($0)
# 0x3a90
slt $2 $27 $3
# 0x3a94
add $13 $12 $14
# 0x3a98
srlv $5 $16 $5
# 0x3a9c
andi $4 $16 0x74a6
# 0x3aa0
or $15 $30 $18
# 0x3aa4
sh $11 56($0)
# 0x3aa8
lh $16 56($0)
# 0x3aac
addi $4 $15 16942
# 0x3ab0
mtlo $31
# 0x3ab4
lb $13 24($0)
# 0x3ab8
lui $10 0x74bb
# 0x3abc
lw $15 40($0)
# 0x3ac0
addiu $21 $11 3267
# 0x3ac4
addu $10 $6 $18
# 0x3ac8
xor $21 $6 $30
# 0x3acc
mtlo $21
# 0x3ad0
multu $30 $13
# 0x3ad4
xor $7 $25 $22
# 0x3ad8
multu $12 $14
# 0x3adc
sllv $11 $9 $27
# 0x3ae0
and $1 $2 $18
# 0x3ae4
sb $6 2($0)
# 0x3ae8
lbu $9 17($0)
# 0x3aec
mthi $8
# 0x3af0
sh $19 56($0)
# 0x3af4
addi $13 $15 18335
# 0x3af8
srav $31 $10 $23
# 0x3afc
lw $22 88($0)
# 0x3b00
srl $3 $13 16
# 0x3b04
or $31 $15 $17
# 0x3b08
or $21 $23 $8
# 0x3b0c
andi $23 $10 0xc200
# 0x3b10
xori $10 $4 0x20d2
# 0x3b14
mtlo $17
# 0x3b18
srl $6 $30 13
# 0x3b1c
add $30 $1 $19
# 0x3b20
lui $11 0x8a80
# 0x3b24
xor $27 $16 $11
# 0x3b28
addiu $7 $30 26850
# 0x3b2c
sub $3 $18 $4
# 0x3b30
mfhi $1
# 0x3b34
lw $15 16($0)
# 0x3b38
add $14 $6 $1
# 0x3b3c
addiu $26 $23 27306
# 0x3b40
or $6 $17 $23
# 0x3b44
add $23 $2 $21
# 0x3b48
sh $12 60($0)
# 0x3b4c
lhu $15 24($0)
# 0x3b50
mfhi $30
# 0x3b54
sllv $6 $16 $25
# 0x3b58
sh $10 30($0)
# 0x3b5c
or $3 $31 $30
# 0x3b60
mflo $22
# 0x3b64
andi $19 $14 0xd293
# 0x3b68
xor $21 $10 $3
# 0x3b6c
nor $22 $9 $15
# 0x3b70
lui $23 0x5f07
# 0x3b74
sub $5 $27 $31
# 0x3b78
lui $4 0xd5cc
# 0x3b7c
srlv $7 $24 $26
# 0x3b80
lh $17 44($0)
# 0x3b84
mult $3 $12
# 0x3b88
mthi $31
# 0x3b8c
multu $18 $14
# 0x3b90
multu $4 $1
# 0x3b94
sb $13 15($0)
# 0x3b98
and $21 $11 $7
# 0x3b9c
multu $19 $27
# 0x3ba0
xori $23 $22 0xc119
# 0x3ba4
or $23 $18 $30
# 0x3ba8
subu $25 $14 $16
# 0x3bac
slt $19 $26 $3
# 0x3bb0
sw $25 116($0)
# 0x3bb4
lh $7 36($0)
# 0x3bb8
lh $16 22($0)
# 0x3bbc
andi $5 $21 0xf347
# 0x3bc0
lbu $17 16($0)
# 0x3bc4
srl $10 $20 18
# 0x3bc8
mflo $6
# 0x3bcc
srav $9 $5 $31
# 0x3bd0
ori $1 $19 0x22c4
# 0x3bd4
lb $9 6($0)
# 0x3bd8
srlv $27 $27 $1
# 0x3bdc
sb $23 14($0)
# 0x3be0
or $13 $25 $18
# 0x3be4
sltu $15 $19 $15
# 0x3be8
mtlo $30
# 0x3bec
sltiu $14 $30 14360
# 0x3bf0
srlv $5 $2 $8
# 0x3bf4
slt $27 $22 $9
# 0x3bf8
sb $24 7($0)
# 0x3bfc
sll $5 $27 24
# 0x3c00
sll $9 $14 2
# 0x3c04
sb $11 11($0)
# 0x3c08
sltiu $6 $8 18451
# 0x3c0c
xori $21 $6 0x25ac
# 0x3c10
addi $6 $12 -498
# 0x3c14
or $14 $10 $18
# 0x3c18
lui $30 0xd564
# 0x3c1c
sra $5 $5 11
# 0x3c20
lui $21 0x7232
# 0x3c24
sb $14 20($0)
# 0x3c28
sltu $9 $22 $9
# 0x3c2c
lw $8 16($0)
# 0x3c30
andi $4 $16 0x22ec
# 0x3c34
srl $12 $1 25
# 0x3c38
nor $11 $14 $7
# 0x3c3c
or $5 $30 $17
# 0x3c40
xori $24 $17 0x397e
# 0x3c44
sw $25 24($0)
# 0x3c48
lh $15 8($0)
# 0x3c4c
srl $17 $23 18
# 0x3c50
sh $25 28($0)
# 0x3c54
xor $10 $20 $4
# 0x3c58
mflo $18
# 0x3c5c
mfhi $22
# 0x3c60
addi $4 $8 -13596
# 0x3c64
sub $25 $8 $11
# 0x3c68
lh $13 10($0)
# 0x3c6c
or $13 $25 $30
# 0x3c70
nor $24 $4 $8
# 0x3c74
sll $1 $3 24
# 0x3c78
subu $21 $25 $7
# 0x3c7c
xori $23 $31 0x1212
# 0x3c80
sw $11 16($0)
# 0x3c84
multu $26 $14
# 0x3c88
sll $18 $15 18
# 0x3c8c
andi $19 $26 0x130d
# 0x3c90
xor $9 $19 $10
# 0x3c94
lh $5 18($0)
# 0x3c98
sltiu $25 $16 22220
# 0x3c9c
xori $31 $21 0x071a
# 0x3ca0
addi $22 $22 16175
# 0x3ca4
mthi $25
# 0x3ca8
srlv $21 $25 $18
# 0x3cac
addi $12 $18 30130
# 0x3cb0
lw $18 104($0)
# 0x3cb4
xor $9 $13 $17
# 0x3cb8
add $1 $11 $5
# 0x3cbc
mflo $3
# 0x3cc0
nor $8 $12 $16
# 0x3cc4
ori $10 $20 0x5469
# 0x3cc8
lbu $15 3($0)
# 0x3ccc
mthi $2
# 0x3cd0
addi $2 $23 -26636
# 0x3cd4
addiu $31 $12 19262
# 0x3cd8
mflo $18
# 0x3cdc
lhu $22 2($0)
# 0x3ce0
sub $10 $31 $26
# 0x3ce4
srav $21 $14 $9
# 0x3ce8
add $15 $11 $12
# 0x3cec
mult $10 $19
# 0x3cf0
or $9 $11 $11
# 0x3cf4
sll $2 $25 2
# 0x3cf8
slt $15 $25 $14
# 0x3cfc
slt $24 $25 $14
# 0x3d00
lh $7 14($0)
# 0x3d04
sltu $8 $5 $15
# 0x3d08
or $21 $27 $20
# 0x3d0c
sltiu $1 $18 7830
# 0x3d10
sw $7 88($0)
# 0x3d14
addiu $18 $25 6421
# 0x3d18
multu $20 $25
# 0x3d1c
sub $18 $31 $21
# 0x3d20
mfhi $4
# 0x3d24
multu $27 $11
# 0x3d28
slt $6 $21 $27
# 0x3d2c
sra $15 $14 2
# 0x3d30
subu $20 $2 $17
# 0x3d34
subu $8 $6 $15
# 0x3d38
slti $11 $1 15993
# 0x3d3c
srav $17 $17 $13
# 0x3d40
srlv $31 $24 $27
# 0x3d44
lui $23 0xdc52
# 0x3d48
srav $6 $24 $10
# 0x3d4c
slti $10 $25 26170
# 0x3d50
nor $14 $20 $22
# 0x3d54
sw $3 28($0)
# 0x3d58
lw $27 68($0)
# 0x3d5c
multu $4 $5
# 0x3d60
mflo $6
# 0x3d64
mtlo $5
# 0x3d68
slti $31 $17 25085
# 0x3d6c
slt $21 $22 $26
# 0x3d70
lw $2 120($0)
# 0x3d74
mthi $21
# 0x3d78
slti $24 $10 25225
# 0x3d7c
nor $6 $5 $10
# 0x3d80
sw $18 16($0)
# 0x3d84
lw $3 8($0)
# 0x3d88
sw $9 68($0)
# 0x3d8c
mtlo $5
# 0x3d90
xor $16 $12 $22
# 0x3d94
add $9 $20 $8
# 0x3d98
lw $17 72($0)
# 0x3d9c
addu $25 $17 $17
# 0x3da0
subu $23 $23 $9
# 0x3da4
lw $10 16($0)
# 0x3da8
xori $15 $4 0x581e
# 0x3dac
lh $18 8($0)
# 0x3db0
lw $13 28($0)
# 0x3db4
lw $12 16($0)
# 0x3db8
lbu $30 18($0)
# 0x3dbc
srav $16 $30 $7
# 0x3dc0
sll $27 $7 4
# 0x3dc4
lb $5 1($0)
# 0x3dc8
srav $1 $23 $3
# 0x3dcc
lh $8 48($0)
# 0x3dd0
subu $22 $6 $12
# 0x3dd4
sb $22 0($0)
# 0x3dd8
or $10 $18 $25
# 0x3ddc
addu $22 $31 $8
# 0x3de0
addiu $9 $7 7230
# 0x3de4
sll $9 $26 10
# 0x3de8
slti $10 $17 85
# 0x3dec
sw $8 32($0)
# 0x3df0
xor $14 $27 $25
# 0x3df4
mult $23 $25
# 0x3df8
addu $9 $6 $30
# 0x3dfc
ori $24 $3 0xd70c
# 0x3e00
mthi $1
# 0x3e04
nor $24 $25 $24
# 0x3e08
sh $7 24($0)
# 0x3e0c
mflo $17
# 0x3e10
lbu $5 14($0)
# 0x3e14
addu $15 $20 $19
# 0x3e18
mthi $13
# 0x3e1c
sra $14 $10 1
# 0x3e20
sw $18 16($0)
# 0x3e24
xor $5 $12 $14
# 0x3e28
srl $27 $2 17
# 0x3e2c
slti $4 $11 4011
# 0x3e30
sltiu $14 $10 4573
# 0x3e34
srlv $5 $15 $30
# 0x3e38
multu $9 $7
# 0x3e3c
slt $31 $7 $31
# 0x3e40
sb $27 20($0)
# 0x3e44
addiu $26 $26 16737
# 0x3e48
srl $8 $11 22
# 0x3e4c
lh $24 36($0)
# 0x3e50
lh $7 46($0)
# 0x3e54
sh $31 32($0)
# 0x3e58
xori $27 $9 0x85b4
# 0x3e5c
sw $24 8($0)
# 0x3e60
addi $8 $24 27379
# 0x3e64
sh $4 60($0)
# 0x3e68
slti $8 $1 1919
# 0x3e6c
addi $25 $16 29194
# 0x3e70
mthi $24
# 0x3e74
slti $9 $11 -25171
# 0x3e78
lw $30 20($0)
# 0x3e7c
lb $6 30($0)
# 0x3e80
add $20 $4 $23
# 0x3e84
mflo $10
# 0x3e88
sltiu $25 $26 25368
# 0x3e8c
sll $26 $8 8
# 0x3e90
slt $4 $2 $30
# 0x3e94
slti $22 $5 -2012
# 0x3e98
lw $12 124($0)
# 0x3e9c
lh $14 10($0)
# 0x3ea0
slt $6 $2 $27
# 0x3ea4
and $23 $20 $6
# 0x3ea8
mthi $22
# 0x3eac
subu $31 $12 $16
# 0x3eb0
sll $15 $20 10
# 0x3eb4
addiu $17 $24 3007
# 0x3eb8
lbu $9 25($0)
# 0x3ebc
sb $21 14($0)
# 0x3ec0
sra $1 $3 23
# 0x3ec4
addu $6 $19 $17
# 0x3ec8
slt $8 $23 $15
# 0x3ecc
lw $1 16($0)
# 0x3ed0
sub $30 $20 $19
# 0x3ed4
lh $7 56($0)
# 0x3ed8
sllv $13 $22 $13
# 0x3edc
xori $11 $14 0xc9e4
# 0x3ee0
xor $11 $18 $13
# 0x3ee4
lw $14 12($0)
# 0x3ee8
mult $21 $19
# 0x3eec
lw $5 0($0)
# 0x3ef0
lh $7 52($0)
# 0x3ef4
or $24 $31 $21
# 0x3ef8
lh $25 24($0)
# 0x3efc
mfhi $1
# 0x3f00
addu $8 $8 $20
# 0x3f04
sw $16 24($0)
# 0x3f08
sllv $19 $20 $3
# 0x3f0c
mflo $19
# 0x3f10
srlv $14 $21 $24
# 0x3f14
sub $11 $5 $15
# 0x3f18
srl $12 $9 5
# 0x3f1c
srav $12 $30 $30
# 0x3f20
lh $6 12($0)
# 0x3f24
lbu $4 31($0)
# 0x3f28
sra $30 $5 21
# 0x3f2c
sltu $3 $14 $14
# 0x3f30
xori $31 $17 0xec06
# 0x3f34
lhu $27 20($0)
# 0x3f38
nor $22 $1 $24
# 0x3f3c
mthi $10
# 0x3f40
addiu $3 $24 25538
# 0x3f44
addiu $18 $17 7727
# 0x3f48
add $7 $13 $15
# 0x3f4c
addi $1 $19 19267
# 0x3f50
lhu $24 28($0)
# 0x3f54
multu $16 $15
# 0x3f58
sltiu $15 $5 13442
# 0x3f5c
mtlo $25
# 0x3f60
mfhi $27
# 0x3f64
srav $22 $13 $31
# 0x3f68
addiu $3 $23 4664
# 0x3f6c
sllv $16 $9 $27
# 0x3f70
sh $5 18($0)
# 0x3f74
xori $13 $4 0xfc95
# 0x3f78
slt $3 $21 $2
# 0x3f7c
ori $26 $24 0x1946
# 0x3f80
sllv $3 $25 $14
# 0x3f84
sltiu $24 $16 29838
# 0x3f88
mtlo $23
# 0x3f8c
lw $27 12($0)
# 0x3f90
ori $11 $16 0xf6aa
# 0x3f94
mtlo $27
# 0x3f98
addi $26 $26 -24594
# 0x3f9c
lw $30 28($0)
# 0x3fa0
sltu $7 $10 $26

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop