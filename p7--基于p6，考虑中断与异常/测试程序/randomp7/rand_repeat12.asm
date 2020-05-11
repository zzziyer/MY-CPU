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
or $11 $12 $4
# 0x3008
srl $17 $25 24
# 0x300c
xor $5 $27 $24
# 0x3010
xori $7 $24 0x5a3a
# 0x3014
mfhi $5
# 0x3018
ori $3 $24 0xa6ba
# 0x301c
ori $20 $9 0x4beb
# 0x3020
mfhi $2
# 0x3024
add $7 $12 $3
# 0x3028
sllv $30 $25 $25
# 0x302c
mflo $8
# 0x3030
ori $7 $22 0x24bd
# 0x3034
srav $21 $21 $21
# 0x3038
lw $1 76($0)
# 0x303c
lb $24 14($0)
# 0x3040
mtlo $13
# 0x3044
lw $13 28($0)
# 0x3048
sw $3 4($0)
# 0x304c
slti $7 $14 -24767
# 0x3050
sltiu $8 $6 15643
# 0x3054
sh $10 2($0)
# 0x3058
sll $11 $31 1
# 0x305c
lb $23 21($0)
# 0x3060
addiu $13 $3 8325
# 0x3064
mfhi $1
# 0x3068
lw $8 12($0)
# 0x306c
and $2 $7 $16
# 0x3070
sw $1 16($0)
# 0x3074
lh $16 46($0)
# 0x3078
lhu $22 22($0)
# 0x307c
sh $13 2($0)
# 0x3080
mtlo $12
# 0x3084
sll $4 $31 29
# 0x3088
sra $13 $16 17
# 0x308c
andi $14 $13 0x1b5b
# 0x3090
sh $16 58($0)
# 0x3094
sltu $24 $23 $22
# 0x3098
sll $9 $19 16
# 0x309c
mflo $20
# 0x30a0
sw $3 0($0)
# 0x30a4
sw $25 28($0)
# 0x30a8
multu $18 $11
# 0x30ac
xor $24 $27 $17
# 0x30b0
sllv $19 $20 $14
# 0x30b4
lh $4 22($0)
# 0x30b8
lw $26 24($0)
# 0x30bc
mflo $12
# 0x30c0
lbu $6 23($0)
# 0x30c4
xor $30 $4 $12
# 0x30c8
addu $26 $22 $5
# 0x30cc
mtlo $4
# 0x30d0
mflo $3
# 0x30d4
sh $3 14($0)
# 0x30d8
sw $22 0($0)
# 0x30dc
sll $1 $24 7
# 0x30e0
sb $16 28($0)
# 0x30e4
sw $4 36($0)
# 0x30e8
and $18 $17 $3
# 0x30ec
sw $3 16($0)
# 0x30f0
mfhi $14
# 0x30f4
slti $31 $13 20483
# 0x30f8
lui $19 0x0c5b
# 0x30fc
mthi $23
# 0x3100
addiu $13 $15 15319
# 0x3104
ori $4 $9 0xa34b
# 0x3108
slti $11 $22 23807
# 0x310c
srlv $12 $3 $31
# 0x3110
or $7 $31 $12
# 0x3114
sltu $10 $31 $3
# 0x3118
mfhi $21
# 0x311c
srav $3 $21 $7
# 0x3120
subu $1 $6 $23
# 0x3124
multu $19 $3
# 0x3128
xori $10 $16 0x448e
# 0x312c
mult $10 $2
# 0x3130
addi $9 $1 5161
# 0x3134
srl $31 $13 23
# 0x3138
lw $24 24($0)
# 0x313c
lh $27 24($0)
# 0x3140
lb $18 29($0)
# 0x3144
lhu $18 24($0)
# 0x3148
add $12 $24 $10
# 0x314c
mflo $27
# 0x3150
addiu $4 $17 5348
# 0x3154
andi $13 $15 0xd637
# 0x3158
multu $24 $30
# 0x315c
mfhi $10
# 0x3160
sltiu $6 $9 20831
# 0x3164
sllv $26 $20 $22
# 0x3168
sh $14 40($0)
# 0x316c
slt $19 $1 $20
# 0x3170
sltiu $21 $16 14386
# 0x3174
andi $19 $19 0x6c53
# 0x3178
and $11 $4 $6
# 0x317c
srlv $19 $4 $22
# 0x3180
srav $25 $25 $9
# 0x3184
sra $17 $25 20
# 0x3188
sb $19 4($0)
# 0x318c
lhu $5 10($0)
# 0x3190
ori $16 $21 0x4ea6
# 0x3194
or $13 $19 $30
# 0x3198
sll $7 $1 30
# 0x319c
srlv $18 $14 $7
# 0x31a0
nor $16 $7 $14
# 0x31a4
addi $26 $19 -9826
# 0x31a8
lbu $30 25($0)
# 0x31ac
sltu $13 $17 $9
# 0x31b0
lh $5 30($0)
# 0x31b4
addu $12 $17 $26
# 0x31b8
sh $21 12($0)
# 0x31bc
or $18 $9 $27
# 0x31c0
sll $30 $30 22
# 0x31c4
lhu $23 22($0)
# 0x31c8
sltu $20 $23 $20
# 0x31cc
xori $14 $3 0xb557
# 0x31d0
andi $6 $14 0x12f6
# 0x31d4
subu $26 $2 $23
# 0x31d8
slt $4 $5 $23
# 0x31dc
lw $22 36($0)
# 0x31e0
slti $5 $5 8246
# 0x31e4
nor $3 $9 $17
# 0x31e8
lh $24 0($0)
# 0x31ec
subu $26 $31 $26
# 0x31f0
sb $17 4($0)
# 0x31f4
or $8 $7 $4
# 0x31f8
sb $18 16($0)
# 0x31fc
sll $9 $8 9
# 0x3200
lui $18 0x0c38
# 0x3204
lhu $25 12($0)
# 0x3208
subu $16 $7 $7
# 0x320c
sh $8 6($0)
# 0x3210
sw $17 52($0)
# 0x3214
andi $31 $19 0xfecc
# 0x3218
multu $30 $30
# 0x321c
sh $19 22($0)
# 0x3220
mtlo $13
# 0x3224
sra $3 $8 5
# 0x3228
lb $11 4($0)
# 0x322c
srav $19 $4 $25
# 0x3230
lbu $26 15($0)
# 0x3234
sra $25 $9 3
# 0x3238
lbu $3 17($0)
# 0x323c
and $1 $9 $19
# 0x3240
srl $24 $22 5
# 0x3244
sw $31 32($0)
# 0x3248
srlv $7 $16 $8
# 0x324c
mtlo $30
# 0x3250
mtlo $18
# 0x3254
lh $1 22($0)
# 0x3258
mflo $14
# 0x325c
add $20 $20 $6
# 0x3260
addiu $27 $27 25993
# 0x3264
nor $5 $23 $11
# 0x3268
lhu $30 4($0)
# 0x326c
subu $22 $1 $18
# 0x3270
andi $16 $5 0x2a6a
# 0x3274
lui $27 0x00bb
# 0x3278
lbu $8 0($0)
# 0x327c
and $27 $7 $18
# 0x3280
add $3 $27 $23
# 0x3284
subu $25 $15 $19
# 0x3288
slti $25 $2 4202
# 0x328c
lui $6 0xb6ce
# 0x3290
ori $4 $11 0x00d2
# 0x3294
srl $6 $4 20
# 0x3298
add $9 $17 $26
# 0x329c
sltu $14 $13 $14
# 0x32a0
sltiu $1 $10 18317
# 0x32a4
ori $23 $19 0xac17
# 0x32a8
slti $12 $26 -29674
# 0x32ac
lhu $17 22($0)
# 0x32b0
and $17 $3 $18
# 0x32b4
sltiu $1 $11 28682
# 0x32b8
or $6 $26 $24
# 0x32bc
addi $20 $10 11470
# 0x32c0
sh $18 50($0)
# 0x32c4
nor $12 $7 $25
# 0x32c8
lw $15 24($0)
# 0x32cc
addu $1 $24 $6
# 0x32d0
sll $13 $2 16
# 0x32d4
xor $11 $17 $8
# 0x32d8
or $18 $11 $14
# 0x32dc
or $8 $1 $9
# 0x32e0
sw $27 4($0)
# 0x32e4
sra $13 $20 5
# 0x32e8
mflo $22
# 0x32ec
sllv $9 $11 $22
# 0x32f0
sh $14 30($0)
# 0x32f4
lh $18 30($0)
# 0x32f8
sh $6 36($0)
# 0x32fc
lw $11 64($0)
# 0x3300
mtlo $17
# 0x3304
slti $18 $12 19665
# 0x3308
nor $24 $17 $5
# 0x330c
sll $10 $17 29
# 0x3310
or $8 $18 $13
# 0x3314
multu $26 $17
# 0x3318
mflo $27
# 0x331c
and $8 $12 $1
# 0x3320
addiu $24 $7 25832
# 0x3324
lhu $14 12($0)
# 0x3328
ori $13 $9 0x6d2b
# 0x332c
slti $5 $4 -12246
# 0x3330
sra $21 $27 13
# 0x3334
lbu $9 6($0)
# 0x3338
addi $11 $15 -9087
# 0x333c
andi $18 $26 0x91a7
# 0x3340
srl $12 $2 4
# 0x3344
lui $20 0x2a3a
# 0x3348
lui $5 0x90d1
# 0x334c
xori $8 $31 0x7059
# 0x3350
or $23 $10 $7
# 0x3354
mtlo $15
# 0x3358
subu $23 $11 $9
# 0x335c
xori $30 $9 0x0247
# 0x3360
lw $27 80($0)
# 0x3364
sh $1 16($0)
# 0x3368
srl $19 $1 23
# 0x336c
sw $19 20($0)
# 0x3370
lh $24 14($0)
# 0x3374
sub $14 $27 $15
# 0x3378
mthi $25
# 0x337c
mult $30 $15
# 0x3380
sw $25 20($0)
# 0x3384
lui $26 0x70bf
# 0x3388
mthi $20
# 0x338c
srl $14 $3 29
# 0x3390
srl $7 $19 4
# 0x3394
sb $11 3($0)
# 0x3398
nor $5 $26 $27
# 0x339c
lui $26 0x8e56
# 0x33a0
sub $31 $9 $27
# 0x33a4
lw $31 44($0)
# 0x33a8
mfhi $31
# 0x33ac
mthi $26
# 0x33b0
sllv $17 $20 $7
# 0x33b4
srl $17 $23 17
# 0x33b8
lui $12 0x3b02
# 0x33bc
slti $14 $11 -24111
# 0x33c0
slti $26 $24 31248
# 0x33c4
sltiu $4 $20 23226
# 0x33c8
lbu $6 31($0)
# 0x33cc
sh $10 2($0)
# 0x33d0
sw $31 64($0)
# 0x33d4
lhu $24 2($0)
# 0x33d8
lw $24 8($0)
# 0x33dc
sh $12 14($0)
# 0x33e0
sltiu $25 $30 29680
# 0x33e4
sra $1 $20 18
# 0x33e8
lhu $21 4($0)
# 0x33ec
addiu $8 $1 18418
# 0x33f0
mflo $21
# 0x33f4
lh $7 50($0)
# 0x33f8
lw $1 80($0)
# 0x33fc
sw $27 20($0)
# 0x3400
lhu $14 24($0)
# 0x3404
sra $3 $1 27
# 0x3408
mfhi $25
# 0x340c
sra $1 $10 6
# 0x3410
slti $21 $16 -23651
# 0x3414
xori $27 $5 0xc547
# 0x3418
sltu $8 $8 $8
# 0x341c
xor $18 $13 $19
# 0x3420
srav $9 $10 $14
# 0x3424
sh $17 4($0)
# 0x3428
slt $15 $17 $18
# 0x342c
subu $23 $22 $26
# 0x3430
andi $8 $2 0x6c7a
# 0x3434
srav $30 $23 $11
# 0x3438
mult $14 $24
# 0x343c
xor $3 $23 $16
# 0x3440
lui $23 0x32fb
# 0x3444
or $25 $21 $7
# 0x3448
slt $7 $2 $8
# 0x344c
sb $25 30($0)
# 0x3450
sllv $14 $5 $2
# 0x3454
sh $4 52($0)
# 0x3458
sb $18 15($0)
# 0x345c
sw $16 20($0)
# 0x3460
lhu $6 4($0)
# 0x3464
slti $18 $1 14372
# 0x3468
multu $10 $26
# 0x346c
addiu $7 $17 19884
# 0x3470
and $21 $27 $14
# 0x3474
xori $8 $7 0xb6b5
# 0x3478
addiu $20 $24 13458
# 0x347c
sw $27 112($0)
# 0x3480
srlv $17 $30 $22
# 0x3484
xor $5 $2 $30
# 0x3488
srlv $6 $18 $23
# 0x348c
ori $20 $31 0x1122
# 0x3490
xori $19 $2 0x48d8
# 0x3494
mflo $24
# 0x3498
lw $23 36($0)
# 0x349c
mult $7 $13
# 0x34a0
lb $18 7($0)
# 0x34a4
sw $12 4($0)
# 0x34a8
mthi $23
# 0x34ac
sra $8 $23 29
# 0x34b0
srav $21 $24 $1
# 0x34b4
lh $21 18($0)
# 0x34b8
sltu $25 $11 $17
# 0x34bc
sw $14 8($0)
# 0x34c0
xori $26 $8 0xa3b4
# 0x34c4
lw $13 0($0)
# 0x34c8
lbu $11 17($0)
# 0x34cc
mtlo $6
# 0x34d0
sltu $23 $11 $5
# 0x34d4
sh $23 2($0)
# 0x34d8
sw $15 112($0)
# 0x34dc
xor $24 $10 $27
# 0x34e0
nor $21 $3 $7
# 0x34e4
or $4 $25 $14
# 0x34e8
srav $21 $19 $31
# 0x34ec
slt $20 $4 $3
# 0x34f0
or $26 $27 $15
# 0x34f4
multu $31 $7
# 0x34f8
mult $2 $18
# 0x34fc
mtlo $15
# 0x3500
slt $23 $12 $21
# 0x3504
mthi $1
# 0x3508
slti $8 $5 -22108
# 0x350c
lb $8 2($0)
# 0x3510
addi $1 $16 29623
# 0x3514
lui $23 0x9472
# 0x3518
slti $19 $30 23731
# 0x351c
srav $24 $19 $23
# 0x3520
addu $11 $20 $20
# 0x3524
lh $31 26($0)
# 0x3528
srlv $22 $19 $30
# 0x352c
slti $13 $21 20529
# 0x3530
add $18 $1 $26
# 0x3534
mflo $14
# 0x3538
add $4 $23 $26
# 0x353c
xor $24 $25 $21
# 0x3540
nor $8 $23 $13
# 0x3544
mtlo $1
# 0x3548
addi $18 $26 -30123
# 0x354c
sw $10 124($0)
# 0x3550
lb $23 5($0)
# 0x3554
sltiu $31 $6 31557
# 0x3558
lw $3 80($0)
# 0x355c
sw $24 40($0)
# 0x3560
slt $13 $16 $26
# 0x3564
slti $9 $21 20683
# 0x3568
xor $26 $20 $20
# 0x356c
lw $21 96($0)
# 0x3570
subu $20 $11 $1
# 0x3574
sh $16 36($0)
# 0x3578
addi $9 $6 -3523
# 0x357c
lw $8 104($0)
# 0x3580
lui $6 0x4cbd
# 0x3584
srav $5 $22 $14
# 0x3588
mfhi $14
# 0x358c
sra $25 $5 3
# 0x3590
xori $11 $15 0x97e0
# 0x3594
srav $15 $10 $17
# 0x3598
lw $1 60($0)
# 0x359c
sltiu $9 $23 4760
# 0x35a0
sw $10 76($0)
# 0x35a4
sub $20 $14 $1
# 0x35a8
sllv $21 $3 $16
# 0x35ac
subu $13 $26 $8
# 0x35b0
xor $16 $25 $11
# 0x35b4
sllv $8 $30 $10
# 0x35b8
subu $24 $22 $21
# 0x35bc
sh $31 56($0)
# 0x35c0
sw $17 28($0)
# 0x35c4
addi $14 $2 -5902
# 0x35c8
sltu $14 $24 $18
# 0x35cc
sra $21 $16 5
# 0x35d0
sltu $18 $2 $27
# 0x35d4
sb $6 17($0)
# 0x35d8
lbu $9 25($0)
# 0x35dc
slti $17 $3 25818
# 0x35e0
subu $20 $20 $20
# 0x35e4
sll $2 $2 22
# 0x35e8
lh $31 16($0)
# 0x35ec
ori $15 $26 0xd55f
# 0x35f0
xor $30 $16 $3
# 0x35f4
slt $10 $26 $21
# 0x35f8
lbu $14 2($0)
# 0x35fc
sw $10 52($0)
# 0x3600
mfhi $23
# 0x3604
xor $25 $17 $31
# 0x3608
lw $10 32($0)
# 0x360c
mthi $8
# 0x3610
multu $25 $24
# 0x3614
lh $20 12($0)
# 0x3618
sltiu $25 $3 22727
# 0x361c
sll $10 $31 2
# 0x3620
lbu $19 21($0)
# 0x3624
lh $17 28($0)
# 0x3628
sltu $14 $11 $16
# 0x362c
lhu $9 4($0)
# 0x3630
add $2 $16 $25
# 0x3634
sw $8 68($0)
# 0x3638
lw $11 64($0)
# 0x363c
lb $7 16($0)
# 0x3640
mfhi $11
# 0x3644
sub $7 $10 $27
# 0x3648
sh $3 12($0)
# 0x364c
addi $3 $4 -22582
# 0x3650
addu $11 $30 $1
# 0x3654
and $20 $27 $4
# 0x3658
ori $18 $17 0x41b0
# 0x365c
sw $4 20($0)
# 0x3660
addu $5 $17 $25
# 0x3664
mthi $16
# 0x3668
andi $12 $17 0x9875
# 0x366c
ori $25 $4 0x3188
# 0x3670
addiu $6 $17 16993
# 0x3674
sltiu $19 $25 14586
# 0x3678
multu $17 $15
# 0x367c
sltiu $10 $24 22595
# 0x3680
lui $10 0xe453
# 0x3684
addi $16 $23 -24607
# 0x3688
sub $14 $7 $21
# 0x368c
lhu $23 4($0)
# 0x3690
or $18 $1 $14
# 0x3694
sltu $16 $22 $6
# 0x3698
sh $11 8($0)
# 0x369c
sub $17 $20 $8
# 0x36a0
lh $5 38($0)
# 0x36a4
and $21 $25 $27
# 0x36a8
ori $3 $14 0x1b73
# 0x36ac
xori $27 $7 0xf18d
# 0x36b0
srav $20 $13 $6
# 0x36b4
lb $13 27($0)
# 0x36b8
or $18 $2 $16
# 0x36bc
add $25 $14 $4
# 0x36c0
sra $25 $6 17
# 0x36c4
mflo $8
# 0x36c8
lbu $11 16($0)
# 0x36cc
ori $21 $14 0xe74d
# 0x36d0
sllv $21 $26 $6
# 0x36d4
xori $7 $8 0x5602
# 0x36d8
mflo $3
# 0x36dc
addu $22 $21 $11
# 0x36e0
sh $23 48($0)
# 0x36e4
and $23 $16 $2
# 0x36e8
subu $3 $13 $24
# 0x36ec
xori $18 $15 0xcc61
# 0x36f0
lw $30 24($0)
# 0x36f4
lw $13 12($0)
# 0x36f8
addu $26 $21 $26
# 0x36fc
sllv $4 $7 $9
# 0x3700
lb $14 27($0)
# 0x3704
addu $20 $8 $15
# 0x3708
sw $11 0($0)
# 0x370c
sub $18 $11 $5
# 0x3710
sb $7 19($0)
# 0x3714
xori $2 $4 0x3537
# 0x3718
sltu $21 $3 $7
# 0x371c
addu $20 $26 $8
# 0x3720
subu $3 $31 $18
# 0x3724
ori $20 $14 0x490d
# 0x3728
sh $26 16($0)
# 0x372c
slt $11 $19 $21
# 0x3730
mfhi $20
# 0x3734
and $11 $6 $10
# 0x3738
lw $7 52($0)
# 0x373c
lw $9 16($0)
# 0x3740
addiu $27 $11 14427
# 0x3744
xor $10 $7 $15
# 0x3748
lui $30 0x2cf3
# 0x374c
srlv $4 $8 $21
# 0x3750
lw $15 0($0)
# 0x3754
add $17 $3 $10
# 0x3758
lw $3 24($0)
# 0x375c
subu $5 $1 $12
# 0x3760
lbu $5 4($0)
# 0x3764
mtlo $31
# 0x3768
lh $16 24($0)
# 0x376c
add $14 $15 $5
# 0x3770
andi $22 $11 0xad96
# 0x3774
mfhi $30
# 0x3778
srlv $15 $23 $8
# 0x377c
or $6 $24 $23
# 0x3780
subu $19 $22 $30
# 0x3784
mtlo $19
# 0x3788
lui $2 0x74fa
# 0x378c
nor $25 $19 $21
# 0x3790
mflo $1
# 0x3794
lui $26 0x8def
# 0x3798
srlv $10 $19 $13
# 0x379c
sw $15 0($0)
# 0x37a0
srav $9 $27 $9
# 0x37a4
sw $12 4($0)
# 0x37a8
xori $11 $23 0x7cba
# 0x37ac
xor $17 $22 $17
# 0x37b0
mfhi $7
# 0x37b4
sh $26 8($0)
# 0x37b8
or $25 $20 $14
# 0x37bc
mtlo $22
# 0x37c0
lw $24 8($0)
# 0x37c4
lw $14 8($0)
# 0x37c8
sra $23 $10 29
# 0x37cc
lui $5 0xb5bd
# 0x37d0
slti $19 $2 16907
# 0x37d4
addu $15 $10 $11
# 0x37d8
sll $18 $20 20
# 0x37dc
sltu $7 $25 $20
# 0x37e0
lw $7 16($0)
# 0x37e4
add $7 $14 $4
# 0x37e8
add $5 $20 $11
# 0x37ec
mtlo $21
# 0x37f0
sub $27 $12 $4
# 0x37f4
addu $7 $13 $21
# 0x37f8
lui $9 0x8f69
# 0x37fc
lb $16 2($0)
# 0x3800
lui $7 0xaddb
# 0x3804
lh $7 56($0)
# 0x3808
srl $8 $16 7
# 0x380c
ori $31 $14 0x9d22
# 0x3810
ori $13 $10 0x0a09
# 0x3814
sltu $27 $8 $11
# 0x3818
nor $5 $31 $20
# 0x381c
sh $7 22($0)
# 0x3820
lb $7 13($0)
# 0x3824
sb $4 27($0)
# 0x3828
lb $22 26($0)
# 0x382c
sltiu $5 $19 32215
# 0x3830
srav $25 $5 $1
# 0x3834
sb $14 27($0)
# 0x3838
lw $4 12($0)
# 0x383c
addiu $20 $24 1490
# 0x3840
sh $22 18($0)
# 0x3844
and $23 $6 $6
# 0x3848
xor $13 $11 $14
# 0x384c
mflo $24
# 0x3850
addi $20 $12 -29784
# 0x3854
lh $16 36($0)
# 0x3858
lhu $4 20($0)
# 0x385c
sra $9 $10 2
# 0x3860
slt $18 $22 $26
# 0x3864
sltiu $2 $1 31866
# 0x3868
sltiu $8 $30 28905
# 0x386c
and $25 $24 $23
# 0x3870
sh $31 30($0)
# 0x3874
lui $8 0x259b
# 0x3878
sll $16 $9 5
# 0x387c
srl $15 $17 1
# 0x3880
mthi $20
# 0x3884
andi $24 $4 0x1bc1
# 0x3888
add $24 $14 $4
# 0x388c
lbu $12 16($0)
# 0x3890
sub $18 $6 $10
# 0x3894
subu $30 $8 $3
# 0x3898
xor $26 $1 $11
# 0x389c
andi $22 $27 0xf75f
# 0x38a0
lh $20 12($0)
# 0x38a4
srav $21 $1 $22
# 0x38a8
sb $31 5($0)
# 0x38ac
srlv $23 $12 $18
# 0x38b0
srl $22 $1 11
# 0x38b4
sh $24 30($0)
# 0x38b8
nor $8 $31 $12
# 0x38bc
lw $18 0($0)
# 0x38c0
addu $20 $1 $3
# 0x38c4
sllv $25 $1 $22
# 0x38c8
sw $30 4($0)
# 0x38cc
lbu $31 14($0)
# 0x38d0
slt $11 $17 $26
# 0x38d4
mtlo $2
# 0x38d8
sw $12 48($0)
# 0x38dc
lb $20 30($0)
# 0x38e0
andi $6 $17 0x9672
# 0x38e4
sub $18 $23 $21
# 0x38e8
slt $2 $18 $17
# 0x38ec
addi $9 $18 9594
# 0x38f0
addi $26 $22 -111
# 0x38f4
lw $11 116($0)
# 0x38f8
lui $5 0x38bd
# 0x38fc
or $17 $15 $17
# 0x3900
sh $11 42($0)
# 0x3904
sh $2 12($0)
# 0x3908
mtlo $10
# 0x390c
lb $1 26($0)
# 0x3910
sw $16 24($0)
# 0x3914
sra $19 $21 18
# 0x3918
srlv $21 $5 $19
# 0x391c
sll $27 $6 21
# 0x3920
addiu $10 $19 23259
# 0x3924
sub $14 $25 $30
# 0x3928
sltiu $1 $14 12010
# 0x392c
or $2 $4 $31
# 0x3930
sw $3 120($0)
# 0x3934
sh $11 26($0)
# 0x3938
lh $13 20($0)
# 0x393c
sub $22 $8 $12
# 0x3940
nor $5 $24 $9
# 0x3944
sub $6 $12 $26
# 0x3948
lhu $17 16($0)
# 0x394c
mtlo $30
# 0x3950
addiu $25 $8 30955
# 0x3954
mfhi $26
# 0x3958
addiu $3 $25 25201
# 0x395c
addi $22 $10 23867
# 0x3960
slti $9 $9 -6783
# 0x3964
lhu $11 4($0)
# 0x3968
sll $31 $12 7
# 0x396c
lw $5 0($0)
# 0x3970
sh $12 22($0)
# 0x3974
lw $2 0($0)
# 0x3978
mtlo $24
# 0x397c
andi $13 $8 0x4bda
# 0x3980
mfhi $27
# 0x3984
slti $23 $31 26238
# 0x3988
andi $20 $3 0x6d4a
# 0x398c
sh $5 22($0)
# 0x3990
sw $10 0($0)
# 0x3994
and $24 $30 $8
# 0x3998
xori $27 $4 0xde47
# 0x399c
srav $16 $15 $14
# 0x39a0
sllv $23 $7 $11
# 0x39a4
mtlo $4
# 0x39a8
lw $10 44($0)
# 0x39ac
lw $7 32($0)
# 0x39b0
mthi $20
# 0x39b4
sb $11 13($0)
# 0x39b8
addiu $22 $5 4095
# 0x39bc
and $27 $7 $14
# 0x39c0
addi $1 $31 15545
# 0x39c4
sltu $25 $8 $11
# 0x39c8
sw $27 112($0)
# 0x39cc
lbu $8 19($0)
# 0x39d0
sh $4 56($0)
# 0x39d4
lb $27 19($0)
# 0x39d8
sra $23 $7 5
# 0x39dc
sll $19 $10 14
# 0x39e0
lw $30 12($0)
# 0x39e4
xor $23 $13 $6
# 0x39e8
mthi $15
# 0x39ec
addi $25 $25 32291
# 0x39f0
lh $3 40($0)
# 0x39f4
srlv $16 $13 $23
# 0x39f8
add $31 $10 $11
# 0x39fc
lw $22 28($0)
# 0x3a00
sra $11 $17 28
# 0x3a04
lbu $6 28($0)
# 0x3a08
sll $25 $30 8
# 0x3a0c
srav $14 $18 $30
# 0x3a10
sllv $18 $27 $17
# 0x3a14
subu $30 $19 $7
# 0x3a18
lw $23 4($0)
# 0x3a1c
addiu $17 $25 25247
# 0x3a20
lw $5 24($0)
# 0x3a24
sub $17 $2 $23
# 0x3a28
sllv $10 $5 $10
# 0x3a2c
sw $3 4($0)
# 0x3a30
sltu $11 $10 $27
# 0x3a34
sh $7 10($0)
# 0x3a38
addu $25 $3 $3
# 0x3a3c
lui $17 0x60c0
# 0x3a40
mtlo $24
# 0x3a44
mult $2 $17
# 0x3a48
srl $4 $11 10
# 0x3a4c
and $25 $20 $1
# 0x3a50
xor $8 $25 $26
# 0x3a54
mult $27 $30
# 0x3a58
sltiu $20 $12 11245
# 0x3a5c
or $20 $4 $5
# 0x3a60
nor $20 $17 $2
# 0x3a64
lh $7 4($0)
# 0x3a68
mtlo $13
# 0x3a6c
sub $5 $3 $10
# 0x3a70
mfhi $13
# 0x3a74
or $14 $18 $3
# 0x3a78
sltu $1 $17 $24
# 0x3a7c
mthi $22
# 0x3a80
sltu $23 $27 $26
# 0x3a84
mthi $1
# 0x3a88
xori $6 $18 0x13d5
# 0x3a8c
sh $9 30($0)
# 0x3a90
mflo $11
# 0x3a94
srlv $23 $14 $19
# 0x3a98
multu $21 $11
# 0x3a9c
sw $11 4($0)
# 0x3aa0
mflo $12
# 0x3aa4
sub $7 $2 $1
# 0x3aa8
mflo $21
# 0x3aac
lh $2 2($0)
# 0x3ab0
sw $1 100($0)
# 0x3ab4
mflo $25
# 0x3ab8
ori $22 $1 0x336f
# 0x3abc
sb $8 11($0)
# 0x3ac0
sll $5 $3 15
# 0x3ac4
mtlo $16
# 0x3ac8
lw $6 88($0)
# 0x3acc
mult $1 $17
# 0x3ad0
xori $30 $27 0x0d58
# 0x3ad4
sra $20 $31 0
# 0x3ad8
lw $3 4($0)
# 0x3adc
lhu $27 26($0)
# 0x3ae0
mult $17 $6
# 0x3ae4
xori $24 $14 0x5098
# 0x3ae8
sllv $21 $26 $24
# 0x3aec
lhu $22 24($0)
# 0x3af0
sub $12 $21 $30
# 0x3af4
sltiu $12 $12 20372
# 0x3af8
sllv $17 $25 $9
# 0x3afc
sw $26 4($0)
# 0x3b00
sh $4 6($0)
# 0x3b04
sw $25 88($0)
# 0x3b08
lh $17 54($0)
# 0x3b0c
lbu $26 8($0)
# 0x3b10
sll $1 $7 18
# 0x3b14
mult $31 $31
# 0x3b18
mthi $11
# 0x3b1c
srav $4 $15 $20
# 0x3b20
slti $5 $12 14826
# 0x3b24
sw $10 100($0)
# 0x3b28
mult $22 $18
# 0x3b2c
addiu $14 $7 5136
# 0x3b30
sb $23 9($0)
# 0x3b34
ori $4 $2 0x5de3
# 0x3b38
nor $16 $23 $19
# 0x3b3c
xori $25 $2 0x824d
# 0x3b40
sll $3 $17 10
# 0x3b44
lbu $23 0($0)
# 0x3b48
addi $10 $31 -19293
# 0x3b4c
sltu $23 $11 $23
# 0x3b50
addi $31 $18 23510
# 0x3b54
lb $16 21($0)
# 0x3b58
add $12 $30 $18
# 0x3b5c
sltiu $1 $21 23166
# 0x3b60
sw $17 64($0)
# 0x3b64
lhu $31 2($0)
# 0x3b68
xor $6 $25 $30
# 0x3b6c
mfhi $31
# 0x3b70
or $15 $24 $20
# 0x3b74
sb $7 15($0)
# 0x3b78
multu $13 $3
# 0x3b7c
addu $18 $25 $19
# 0x3b80
xor $19 $18 $13
# 0x3b84
xor $18 $19 $27
# 0x3b88
mult $26 $23
# 0x3b8c
lui $25 0xaba2
# 0x3b90
lw $3 40($0)
# 0x3b94
addi $10 $25 -29283
# 0x3b98
addiu $27 $27 13797
# 0x3b9c
lw $18 16($0)
# 0x3ba0
sltiu $17 $15 12064
# 0x3ba4
sh $6 22($0)
# 0x3ba8
sra $20 $24 2
# 0x3bac
mflo $7
# 0x3bb0
sub $4 $7 $12
# 0x3bb4
lw $23 24($0)
# 0x3bb8
srl $30 $14 31
# 0x3bbc
slti $13 $3 6432
# 0x3bc0
sh $30 20($0)
# 0x3bc4
srav $25 $18 $3
# 0x3bc8
nor $15 $15 $2
# 0x3bcc
lh $18 30($0)
# 0x3bd0
lw $5 24($0)
# 0x3bd4
sub $2 $2 $2
# 0x3bd8
sw $10 68($0)
# 0x3bdc
slti $3 $26 -3841
# 0x3be0
sub $3 $7 $6
# 0x3be4
and $8 $17 $4
# 0x3be8
sh $16 40($0)
# 0x3bec
srlv $8 $22 $15
# 0x3bf0
ori $12 $30 0x613c
# 0x3bf4
lb $31 22($0)
# 0x3bf8
sll $23 $23 13
# 0x3bfc
or $27 $31 $16
# 0x3c00
sltiu $20 $31 21069
# 0x3c04
sub $26 $3 $15
# 0x3c08
sra $6 $4 15
# 0x3c0c
mfhi $22
# 0x3c10
sltiu $13 $18 27106
# 0x3c14
sb $2 14($0)
# 0x3c18
xor $3 $5 $23
# 0x3c1c
xor $23 $14 $15
# 0x3c20
lhu $3 2($0)
# 0x3c24
andi $13 $24 0x8b40
# 0x3c28
addiu $8 $1 8886
# 0x3c2c
addu $15 $6 $22
# 0x3c30
sra $14 $31 31
# 0x3c34
addiu $23 $31 29104
# 0x3c38
lh $15 0($0)
# 0x3c3c
lh $19 16($0)
# 0x3c40
or $26 $6 $18
# 0x3c44
nor $10 $7 $4
# 0x3c48
lhu $31 22($0)
# 0x3c4c
addiu $30 $14 10134
# 0x3c50
slti $25 $4 -2272
# 0x3c54
sllv $7 $20 $14
# 0x3c58
lhu $26 2($0)
# 0x3c5c
addu $20 $23 $9
# 0x3c60
or $5 $26 $7
# 0x3c64
srav $15 $11 $8
# 0x3c68
mthi $30
# 0x3c6c
mtlo $21
# 0x3c70
andi $10 $14 0x679b
# 0x3c74
sllv $1 $17 $4
# 0x3c78
lbu $9 30($0)
# 0x3c7c
sltiu $6 $16 17161
# 0x3c80
mult $16 $26
# 0x3c84
sb $18 22($0)
# 0x3c88
mult $8 $25
# 0x3c8c
lb $8 6($0)
# 0x3c90
slt $24 $26 $24
# 0x3c94
subu $24 $22 $23
# 0x3c98
sh $23 20($0)
# 0x3c9c
nor $4 $15 $31
# 0x3ca0
mthi $3
# 0x3ca4
sra $7 $6 6
# 0x3ca8
mtlo $11
# 0x3cac
mult $7 $5
# 0x3cb0
addiu $12 $26 7275
# 0x3cb4
andi $13 $1 0x3cdf
# 0x3cb8
sub $13 $21 $2
# 0x3cbc
srav $26 $12 $4
# 0x3cc0
sb $15 26($0)
# 0x3cc4
lb $1 1($0)
# 0x3cc8
mflo $24
# 0x3ccc
sll $20 $23 16
# 0x3cd0
sub $2 $17 $30
# 0x3cd4
srav $12 $15 $7
# 0x3cd8
sw $24 24($0)
# 0x3cdc
lhu $22 0($0)
# 0x3ce0
sltiu $16 $12 1694
# 0x3ce4
addiu $18 $11 4878
# 0x3ce8
lh $19 26($0)
# 0x3cec
mthi $9
# 0x3cf0
addi $11 $23 10869
# 0x3cf4
srl $25 $24 19
# 0x3cf8
xori $8 $27 0xb874
# 0x3cfc
sh $24 12($0)
# 0x3d00
lb $22 5($0)
# 0x3d04
sll $16 $31 20
# 0x3d08
mthi $18
# 0x3d0c
srlv $30 $2 $1
# 0x3d10
nor $1 $1 $25
# 0x3d14
multu $7 $13
# 0x3d18
and $5 $25 $17
# 0x3d1c
and $9 $11 $6
# 0x3d20
xori $10 $30 0xdac0
# 0x3d24
mthi $26
# 0x3d28
multu $21 $1
# 0x3d2c
mfhi $25
# 0x3d30
nor $14 $24 $13
# 0x3d34
lw $27 28($0)
# 0x3d38
srlv $22 $2 $24
# 0x3d3c
sub $12 $7 $3
# 0x3d40
mult $8 $25
# 0x3d44
sb $18 8($0)
# 0x3d48
lhu $4 0($0)
# 0x3d4c
mtlo $6
# 0x3d50
mfhi $1
# 0x3d54
sub $20 $27 $19
# 0x3d58
lb $20 17($0)
# 0x3d5c
sltu $8 $2 $4
# 0x3d60
sllv $21 $30 $9
# 0x3d64
sltiu $3 $25 22614
# 0x3d68
sw $1 8($0)
# 0x3d6c
addi $23 $5 15609
# 0x3d70
sll $19 $11 18
# 0x3d74
lhu $10 12($0)
# 0x3d78
add $4 $13 $2
# 0x3d7c
and $17 $5 $1
# 0x3d80
lbu $27 6($0)
# 0x3d84
sh $27 24($0)
# 0x3d88
andi $14 $3 0xc059
# 0x3d8c
sub $12 $1 $26
# 0x3d90
mflo $10
# 0x3d94
sh $14 22($0)
# 0x3d98
sltiu $11 $18 14373
# 0x3d9c
lw $14 24($0)
# 0x3da0
xor $31 $3 $27
# 0x3da4
mflo $12
# 0x3da8
mtlo $6
# 0x3dac
lw $30 24($0)
# 0x3db0
mfhi $27
# 0x3db4
multu $21 $7
# 0x3db8
addi $10 $18 24543
# 0x3dbc
mfhi $31
# 0x3dc0
sw $14 8($0)
# 0x3dc4
sh $21 28($0)
# 0x3dc8
sllv $5 $24 $8
# 0x3dcc
or $18 $30 $18
# 0x3dd0
sltu $27 $2 $5
# 0x3dd4
sra $7 $25 23
# 0x3dd8
mult $9 $4
# 0x3ddc
or $15 $31 $12
# 0x3de0
xori $31 $10 0x878f
# 0x3de4
lw $22 4($0)
# 0x3de8
sb $18 27($0)
# 0x3dec
xori $22 $23 0x174e
# 0x3df0
sltu $12 $6 $25
# 0x3df4
sw $16 20($0)
# 0x3df8
ori $13 $5 0x0eba
# 0x3dfc
lh $5 4($0)
# 0x3e00
mult $2 $14
# 0x3e04
sw $16 48($0)
# 0x3e08
xor $9 $8 $25
# 0x3e0c
sll $25 $30 28
# 0x3e10
xor $26 $3 $23
# 0x3e14
lbu $9 2($0)
# 0x3e18
sw $23 28($0)
# 0x3e1c
mult $3 $5
# 0x3e20
addi $26 $8 -30658
# 0x3e24
subu $23 $13 $18
# 0x3e28
sub $23 $6 $13
# 0x3e2c
mflo $20
# 0x3e30
xori $16 $20 0x86df
# 0x3e34
sra $11 $8 24
# 0x3e38
slti $24 $27 22574
# 0x3e3c
nor $31 $31 $26
# 0x3e40
mtlo $11
# 0x3e44
addu $21 $26 $19
# 0x3e48
mfhi $16
# 0x3e4c
sb $6 11($0)
# 0x3e50
mult $22 $7
# 0x3e54
mflo $14
# 0x3e58
lw $4 12($0)
# 0x3e5c
sw $24 8($0)
# 0x3e60
mthi $11
# 0x3e64
subu $23 $15 $5
# 0x3e68
sll $6 $25 10
# 0x3e6c
lb $5 25($0)
# 0x3e70
nor $12 $4 $8
# 0x3e74
lh $10 10($0)
# 0x3e78
lw $18 16($0)
# 0x3e7c
sb $12 5($0)
# 0x3e80
lhu $9 12($0)
# 0x3e84
sltiu $26 $7 1075
# 0x3e88
srlv $23 $12 $4
# 0x3e8c
sll $2 $8 22
# 0x3e90
slti $1 $25 5543
# 0x3e94
sra $30 $26 30
# 0x3e98
ori $26 $31 0x8b35
# 0x3e9c
srl $22 $7 24
# 0x3ea0
ori $3 $16 0x3452
# 0x3ea4
xori $16 $15 0xb95f
# 0x3ea8
slt $9 $18 $31
# 0x3eac
srlv $7 $31 $14
# 0x3eb0
srl $11 $30 16
# 0x3eb4
srlv $1 $16 $1
# 0x3eb8
nor $9 $5 $22
# 0x3ebc
lui $4 0x0646
# 0x3ec0
andi $25 $18 0x51a8
# 0x3ec4
mthi $13
# 0x3ec8
sra $26 $12 28
# 0x3ecc
srav $26 $26 $2
# 0x3ed0
lw $3 4($0)
# 0x3ed4
sub $16 $2 $25
# 0x3ed8
addiu $15 $13 27440
# 0x3edc
srlv $8 $13 $20
# 0x3ee0
mflo $20
# 0x3ee4
sub $30 $3 $30
# 0x3ee8
lui $26 0xde77
# 0x3eec
andi $19 $22 0xceda
# 0x3ef0
sra $4 $2 0
# 0x3ef4
sllv $13 $19 $31
# 0x3ef8
slt $18 $20 $11
# 0x3efc
lh $5 10($0)
# 0x3f00
addu $15 $5 $26
# 0x3f04
xori $16 $21 0x9a11
# 0x3f08
lw $3 76($0)
# 0x3f0c
lbu $30 0($0)
# 0x3f10
srav $30 $14 $13
# 0x3f14
sllv $6 $16 $26
# 0x3f18
mthi $3
# 0x3f1c
subu $21 $3 $19
# 0x3f20
nor $18 $6 $24
# 0x3f24
add $20 $10 $11
# 0x3f28
lw $3 20($0)
# 0x3f2c
srav $5 $3 $30
# 0x3f30
lbu $21 8($0)
# 0x3f34
add $25 $11 $8
# 0x3f38
addu $21 $21 $12
# 0x3f3c
addu $1 $5 $22
# 0x3f40
mfhi $21
# 0x3f44
add $20 $5 $17
# 0x3f48
slt $10 $19 $4
# 0x3f4c
nor $6 $4 $19
# 0x3f50
andi $8 $9 0xb28c
# 0x3f54
srav $8 $17 $3
# 0x3f58
addi $27 $23 -26351
# 0x3f5c
mult $14 $22
# 0x3f60
mtlo $11
# 0x3f64
sw $27 32($0)
# 0x3f68
andi $2 $27 0xfa6f
# 0x3f6c
subu $1 $12 $2
# 0x3f70
sra $20 $3 27
# 0x3f74
lb $16 12($0)
# 0x3f78
and $27 $17 $17
# 0x3f7c
mthi $9
# 0x3f80
mflo $30
# 0x3f84
lh $6 2($0)
# 0x3f88
mfhi $13
# 0x3f8c
sw $13 124($0)
# 0x3f90
slt $5 $13 $16
# 0x3f94
lhu $18 26($0)
# 0x3f98
mult $15 $3
# 0x3f9c
sh $15 16($0)
# 0x3fa0
sb $19 22($0)

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop