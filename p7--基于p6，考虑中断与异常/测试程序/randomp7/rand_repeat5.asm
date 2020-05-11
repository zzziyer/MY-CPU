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
sh $22 24($0)
# 0x3008
lh $11 62($0)
# 0x300c
sra $9 $26 15
# 0x3010
and $8 $21 $2
# 0x3014
srl $20 $11 28
# 0x3018
sra $23 $19 28
# 0x301c
lw $12 4($0)
# 0x3020
xor $3 $23 $2
# 0x3024
addi $22 $20 25591
# 0x3028
sll $26 $15 0
# 0x302c
multu $9 $26
# 0x3030
add $13 $6 $17
# 0x3034
sllv $14 $13 $24
# 0x3038
nor $8 $5 $24
# 0x303c
srl $16 $30 7
# 0x3040
lb $13 3($0)
# 0x3044
andi $8 $15 0xf368
# 0x3048
sw $15 0($0)
# 0x304c
sltu $14 $18 $14
# 0x3050
lw $23 116($0)
# 0x3054
lw $16 112($0)
# 0x3058
srav $30 $14 $13
# 0x305c
mfhi $12
# 0x3060
srl $17 $8 7
# 0x3064
lw $11 24($0)
# 0x3068
srav $8 $25 $11
# 0x306c
lh $11 20($0)
# 0x3070
sll $27 $5 24
# 0x3074
sltiu $15 $7 7654
# 0x3078
addi $26 $11 878
# 0x307c
sltu $17 $23 $9
# 0x3080
slti $17 $6 13935
# 0x3084
lui $21 0xd6da
# 0x3088
addi $26 $19 16698
# 0x308c
andi $15 $13 0xb925
# 0x3090
mult $5 $15
# 0x3094
sub $4 $21 $24
# 0x3098
lh $17 22($0)
# 0x309c
multu $18 $15
# 0x30a0
mtlo $25
# 0x30a4
lbu $23 24($0)
# 0x30a8
srl $1 $23 14
# 0x30ac
addi $18 $5 -2573
# 0x30b0
addiu $2 $22 28510
# 0x30b4
sub $14 $25 $11
# 0x30b8
xor $21 $17 $18
# 0x30bc
xori $6 $3 0xe188
# 0x30c0
xor $25 $20 $12
# 0x30c4
srl $17 $25 1
# 0x30c8
lbu $2 21($0)
# 0x30cc
xori $15 $7 0x6693
# 0x30d0
srav $16 $31 $18
# 0x30d4
slt $1 $24 $21
# 0x30d8
sh $11 26($0)
# 0x30dc
sltiu $30 $14 31907
# 0x30e0
addi $26 $3 21283
# 0x30e4
sh $17 28($0)
# 0x30e8
xori $8 $15 0x91dc
# 0x30ec
sb $15 24($0)
# 0x30f0
subu $27 $3 $24
# 0x30f4
and $4 $18 $5
# 0x30f8
sb $23 21($0)
# 0x30fc
sltiu $9 $9 16212
# 0x3100
xori $9 $4 0xdf47
# 0x3104
add $21 $15 $3
# 0x3108
lw $26 64($0)
# 0x310c
sh $1 30($0)
# 0x3110
mthi $6
# 0x3114
xori $7 $27 0x371a
# 0x3118
sh $22 46($0)
# 0x311c
mult $17 $27
# 0x3120
andi $8 $25 0xc648
# 0x3124
lw $12 108($0)
# 0x3128
mtlo $21
# 0x312c
and $7 $9 $1
# 0x3130
multu $11 $3
# 0x3134
ori $3 $24 0x3221
# 0x3138
lbu $26 10($0)
# 0x313c
sub $30 $7 $13
# 0x3140
mult $11 $1
# 0x3144
sltiu $6 $17 7648
# 0x3148
sw $20 4($0)
# 0x314c
sh $25 54($0)
# 0x3150
sb $23 7($0)
# 0x3154
sltu $24 $15 $11
# 0x3158
srav $23 $30 $16
# 0x315c
mtlo $11
# 0x3160
slti $23 $11 17365
# 0x3164
slt $31 $23 $6
# 0x3168
sll $21 $11 20
# 0x316c
addiu $19 $12 11724
# 0x3170
sltu $26 $11 $3
# 0x3174
srav $11 $31 $4
# 0x3178
addu $8 $16 $22
# 0x317c
lb $13 18($0)
# 0x3180
ori $17 $24 0x8746
# 0x3184
sltiu $31 $18 2543
# 0x3188
ori $9 $1 0x0c29
# 0x318c
mthi $22
# 0x3190
srl $30 $1 9
# 0x3194
slt $22 $1 $6
# 0x3198
lhu $13 2($0)
# 0x319c
lw $30 12($0)
# 0x31a0
sh $3 12($0)
# 0x31a4
sllv $5 $12 $12
# 0x31a8
lui $9 0x6ad4
# 0x31ac
mult $10 $11
# 0x31b0
lw $2 28($0)
# 0x31b4
nor $7 $8 $11
# 0x31b8
lbu $5 13($0)
# 0x31bc
and $17 $30 $12
# 0x31c0
and $12 $18 $24
# 0x31c4
lbu $16 6($0)
# 0x31c8
sll $20 $18 16
# 0x31cc
sh $6 12($0)
# 0x31d0
sub $7 $16 $15
# 0x31d4
add $25 $1 $14
# 0x31d8
addi $2 $6 26207
# 0x31dc
addiu $19 $11 6581
# 0x31e0
addu $25 $15 $13
# 0x31e4
lbu $23 1($0)
# 0x31e8
ori $2 $3 0x7430
# 0x31ec
sh $11 8($0)
# 0x31f0
addu $24 $10 $30
# 0x31f4
sw $21 8($0)
# 0x31f8
lw $24 0($0)
# 0x31fc
mthi $9
# 0x3200
sh $24 8($0)
# 0x3204
lui $19 0x8041
# 0x3208
srav $27 $6 $1
# 0x320c
lhu $27 24($0)
# 0x3210
srl $9 $20 10
# 0x3214
nor $31 $1 $8
# 0x3218
slti $23 $1 -16917
# 0x321c
sltiu $10 $23 17097
# 0x3220
mflo $18
# 0x3224
addu $26 $30 $20
# 0x3228
multu $13 $26
# 0x322c
lw $24 20($0)
# 0x3230
srav $30 $8 $17
# 0x3234
lhu $17 4($0)
# 0x3238
xori $5 $7 0x4ab5
# 0x323c
xori $6 $4 0x6a1e
# 0x3240
mfhi $27
# 0x3244
slti $11 $7 -4637
# 0x3248
lw $25 20($0)
# 0x324c
ori $25 $12 0x07ba
# 0x3250
mthi $15
# 0x3254
and $22 $1 $25
# 0x3258
xori $13 $13 0x436c
# 0x325c
sw $26 64($0)
# 0x3260
or $21 $31 $12
# 0x3264
lh $5 14($0)
# 0x3268
slti $9 $5 5905
# 0x326c
addi $10 $12 -20982
# 0x3270
addi $14 $10 -1763
# 0x3274
andi $2 $23 0xe56e
# 0x3278
lbu $7 19($0)
# 0x327c
lb $12 25($0)
# 0x3280
xor $6 $18 $15
# 0x3284
sll $27 $1 21
# 0x3288
subu $11 $8 $22
# 0x328c
nor $22 $7 $24
# 0x3290
srlv $10 $25 $3
# 0x3294
sub $2 $19 $16
# 0x3298
sw $13 20($0)
# 0x329c
slt $17 $14 $26
# 0x32a0
subu $2 $15 $1
# 0x32a4
mflo $17
# 0x32a8
subu $3 $25 $5
# 0x32ac
lh $18 18($0)
# 0x32b0
sh $9 26($0)
# 0x32b4
slt $2 $12 $26
# 0x32b8
sltu $1 $8 $13
# 0x32bc
sh $20 14($0)
# 0x32c0
lh $12 28($0)
# 0x32c4
lw $30 112($0)
# 0x32c8
sllv $21 $17 $20
# 0x32cc
xori $10 $2 0x8364
# 0x32d0
srl $10 $19 26
# 0x32d4
add $17 $24 $17
# 0x32d8
lw $3 8($0)
# 0x32dc
multu $8 $30
# 0x32e0
mflo $6
# 0x32e4
mfhi $25
# 0x32e8
sh $24 30($0)
# 0x32ec
mflo $15
# 0x32f0
srl $16 $2 8
# 0x32f4
slti $2 $26 -25605
# 0x32f8
slt $21 $13 $8
# 0x32fc
srlv $5 $5 $20
# 0x3300
mflo $9
# 0x3304
add $5 $10 $25
# 0x3308
nor $5 $30 $25
# 0x330c
lw $1 36($0)
# 0x3310
lbu $18 13($0)
# 0x3314
and $6 $8 $21
# 0x3318
sltiu $2 $19 10330
# 0x331c
xori $31 $24 0x160f
# 0x3320
mfhi $16
# 0x3324
addiu $20 $1 2710
# 0x3328
sb $7 31($0)
# 0x332c
addu $11 $5 $10
# 0x3330
sltu $13 $23 $16
# 0x3334
addi $1 $9 27405
# 0x3338
srav $5 $25 $23
# 0x333c
slti $1 $31 -6616
# 0x3340
ori $7 $16 0xd282
# 0x3344
and $19 $30 $30
# 0x3348
sra $6 $21 10
# 0x334c
lh $16 16($0)
# 0x3350
lw $21 20($0)
# 0x3354
lb $4 10($0)
# 0x3358
lb $13 28($0)
# 0x335c
sb $21 24($0)
# 0x3360
slt $26 $17 $30
# 0x3364
lb $12 28($0)
# 0x3368
addu $15 $1 $7
# 0x336c
sw $2 120($0)
# 0x3370
srlv $18 $15 $6
# 0x3374
mtlo $16
# 0x3378
lui $27 0xf0e1
# 0x337c
mult $18 $2
# 0x3380
ori $2 $16 0xe392
# 0x3384
or $13 $22 $24
# 0x3388
ori $19 $4 0x403e
# 0x338c
lb $21 7($0)
# 0x3390
slti $27 $7 808
# 0x3394
sw $12 8($0)
# 0x3398
mult $30 $19
# 0x339c
mult $15 $17
# 0x33a0
slti $3 $17 -29116
# 0x33a4
lh $25 0($0)
# 0x33a8
or $25 $15 $24
# 0x33ac
lui $3 0x8e1b
# 0x33b0
sh $27 50($0)
# 0x33b4
lh $27 6($0)
# 0x33b8
lw $22 4($0)
# 0x33bc
sh $9 52($0)
# 0x33c0
lui $4 0x4f61
# 0x33c4
addiu $7 $11 22604
# 0x33c8
nor $4 $9 $15
# 0x33cc
addu $25 $4 $2
# 0x33d0
sw $21 20($0)
# 0x33d4
nor $25 $24 $10
# 0x33d8
mtlo $2
# 0x33dc
lw $11 92($0)
# 0x33e0
lui $18 0xe264
# 0x33e4
or $4 $22 $9
# 0x33e8
sllv $31 $22 $31
# 0x33ec
subu $8 $13 $4
# 0x33f0
sra $8 $18 10
# 0x33f4
lw $7 4($0)
# 0x33f8
slti $20 $22 16759
# 0x33fc
sh $6 60($0)
# 0x3400
srav $13 $12 $22
# 0x3404
mult $24 $22
# 0x3408
sltiu $11 $22 19590
# 0x340c
sra $24 $24 18
# 0x3410
xor $3 $6 $16
# 0x3414
mthi $3
# 0x3418
and $8 $9 $21
# 0x341c
sh $14 30($0)
# 0x3420
add $4 $31 $14
# 0x3424
srlv $1 $6 $18
# 0x3428
subu $7 $8 $4
# 0x342c
sllv $24 $6 $4
# 0x3430
srlv $13 $25 $23
# 0x3434
lhu $27 10($0)
# 0x3438
sh $26 8($0)
# 0x343c
multu $7 $3
# 0x3440
lbu $25 24($0)
# 0x3444
or $2 $2 $8
# 0x3448
xor $18 $4 $4
# 0x344c
add $5 $8 $24
# 0x3450
nor $17 $9 $27
# 0x3454
or $24 $6 $27
# 0x3458
addi $23 $21 8433
# 0x345c
mult $13 $15
# 0x3460
sw $10 120($0)
# 0x3464
sltu $17 $2 $14
# 0x3468
sllv $30 $30 $3
# 0x346c
lhu $26 28($0)
# 0x3470
slt $10 $19 $27
# 0x3474
lb $8 2($0)
# 0x3478
addiu $8 $2 1298
# 0x347c
sub $1 $17 $27
# 0x3480
lw $14 0($0)
# 0x3484
srl $16 $9 21
# 0x3488
lw $2 24($0)
# 0x348c
mult $27 $16
# 0x3490
nor $10 $30 $5
# 0x3494
sltu $23 $23 $23
# 0x3498
lbu $26 16($0)
# 0x349c
xor $13 $21 $14
# 0x34a0
lbu $15 5($0)
# 0x34a4
srl $3 $7 26
# 0x34a8
lw $20 88($0)
# 0x34ac
slti $6 $31 6767
# 0x34b0
lb $31 29($0)
# 0x34b4
srl $3 $3 18
# 0x34b8
lbu $26 3($0)
# 0x34bc
slt $19 $13 $23
# 0x34c0
slt $13 $10 $22
# 0x34c4
sw $21 28($0)
# 0x34c8
lh $7 14($0)
# 0x34cc
sb $26 26($0)
# 0x34d0
mfhi $8
# 0x34d4
lw $15 20($0)
# 0x34d8
mtlo $13
# 0x34dc
mult $8 $1
# 0x34e0
addu $8 $6 $23
# 0x34e4
nor $23 $7 $25
# 0x34e8
lh $6 48($0)
# 0x34ec
slti $26 $22 -29491
# 0x34f0
slt $26 $8 $16
# 0x34f4
mult $30 $2
# 0x34f8
sb $3 15($0)
# 0x34fc
addiu $11 $3 7765
# 0x3500
or $26 $6 $16
# 0x3504
or $12 $18 $8
# 0x3508
mult $16 $26
# 0x350c
lw $7 4($0)
# 0x3510
sltiu $5 $24 7897
# 0x3514
sh $22 0($0)
# 0x3518
sw $18 68($0)
# 0x351c
srav $10 $13 $15
# 0x3520
lw $12 16($0)
# 0x3524
sub $5 $16 $14
# 0x3528
sw $21 84($0)
# 0x352c
and $4 $7 $5
# 0x3530
srav $21 $2 $10
# 0x3534
sh $20 30($0)
# 0x3538
multu $5 $24
# 0x353c
lh $27 22($0)
# 0x3540
or $16 $17 $20
# 0x3544
xor $10 $30 $11
# 0x3548
sra $23 $14 17
# 0x354c
srav $22 $24 $31
# 0x3550
sw $23 28($0)
# 0x3554
nor $3 $9 $14
# 0x3558
mfhi $30
# 0x355c
lhu $1 0($0)
# 0x3560
multu $30 $26
# 0x3564
addi $13 $10 11815
# 0x3568
sltu $31 $7 $11
# 0x356c
addi $13 $30 -29677
# 0x3570
slti $25 $24 7397
# 0x3574
mult $20 $11
# 0x3578
srlv $2 $31 $17
# 0x357c
lh $6 10($0)
# 0x3580
sltu $6 $4 $9
# 0x3584
sh $11 40($0)
# 0x3588
ori $17 $1 0x044b
# 0x358c
lbu $30 3($0)
# 0x3590
mtlo $6
# 0x3594
sh $26 4($0)
# 0x3598
sltu $24 $19 $14
# 0x359c
addu $21 $23 $24
# 0x35a0
xori $9 $25 0x2ee9
# 0x35a4
ori $31 $18 0xdad0
# 0x35a8
sh $23 46($0)
# 0x35ac
sh $3 12($0)
# 0x35b0
or $22 $18 $24
# 0x35b4
sh $9 10($0)
# 0x35b8
sub $3 $23 $19
# 0x35bc
lh $22 18($0)
# 0x35c0
sw $11 88($0)
# 0x35c4
lw $11 4($0)
# 0x35c8
slti $27 $13 14557
# 0x35cc
lb $22 18($0)
# 0x35d0
lh $23 26($0)
# 0x35d4
or $13 $25 $22
# 0x35d8
subu $22 $10 $31
# 0x35dc
srl $16 $7 25
# 0x35e0
sb $14 5($0)
# 0x35e4
sh $9 2($0)
# 0x35e8
sll $13 $14 29
# 0x35ec
sb $27 7($0)
# 0x35f0
ori $6 $23 0xd8b9
# 0x35f4
sw $24 12($0)
# 0x35f8
xori $5 $30 0x5c7b
# 0x35fc
and $16 $1 $3
# 0x3600
sh $15 20($0)
# 0x3604
slt $27 $10 $16
# 0x3608
lw $6 8($0)
# 0x360c
lw $30 100($0)
# 0x3610
sw $5 8($0)
# 0x3614
sw $1 84($0)
# 0x3618
sb $24 2($0)
# 0x361c
mflo $22
# 0x3620
sltiu $20 $12 16998
# 0x3624
lbu $20 9($0)
# 0x3628
srl $11 $5 12
# 0x362c
lh $30 14($0)
# 0x3630
sh $21 10($0)
# 0x3634
srlv $16 $27 $31
# 0x3638
lh $1 20($0)
# 0x363c
sw $15 88($0)
# 0x3640
mflo $8
# 0x3644
sra $19 $13 2
# 0x3648
addu $9 $20 $21
# 0x364c
mtlo $8
# 0x3650
lhu $31 8($0)
# 0x3654
lui $15 0x38de
# 0x3658
srlv $4 $11 $9
# 0x365c
mtlo $5
# 0x3660
multu $13 $14
# 0x3664
andi $27 $24 0x595e
# 0x3668
mfhi $27
# 0x366c
mthi $10
# 0x3670
xori $3 $3 0xa2d6
# 0x3674
sll $3 $14 15
# 0x3678
lh $26 10($0)
# 0x367c
xori $23 $27 0x1cc6
# 0x3680
nor $20 $7 $15
# 0x3684
andi $4 $2 0xdcd0
# 0x3688
srlv $23 $17 $8
# 0x368c
andi $11 $12 0x5608
# 0x3690
mthi $6
# 0x3694
lh $26 10($0)
# 0x3698
slt $15 $10 $22
# 0x369c
sb $2 20($0)
# 0x36a0
srav $10 $4 $6
# 0x36a4
sb $27 26($0)
# 0x36a8
addu $2 $30 $21
# 0x36ac
sltiu $23 $31 5882
# 0x36b0
mthi $17
# 0x36b4
lb $5 29($0)
# 0x36b8
xori $26 $7 0xb64e
# 0x36bc
andi $17 $4 0x9482
# 0x36c0
mthi $15
# 0x36c4
sltu $2 $9 $7
# 0x36c8
andi $26 $5 0x62ba
# 0x36cc
sub $13 $9 $26
# 0x36d0
nor $12 $10 $14
# 0x36d4
lh $19 26($0)
# 0x36d8
sb $25 14($0)
# 0x36dc
or $4 $14 $5
# 0x36e0
srlv $16 $23 $10
# 0x36e4
addiu $26 $26 25875
# 0x36e8
lh $27 38($0)
# 0x36ec
lbu $3 8($0)
# 0x36f0
mflo $17
# 0x36f4
sltu $10 $8 $4
# 0x36f8
xori $13 $24 0xa57f
# 0x36fc
sllv $17 $23 $25
# 0x3700
sltu $13 $18 $13
# 0x3704
sll $24 $15 13
# 0x3708
addu $22 $14 $7
# 0x370c
add $11 $24 $12
# 0x3710
sltiu $24 $18 21029
# 0x3714
lui $5 0x7dce
# 0x3718
lbu $7 20($0)
# 0x371c
lh $16 46($0)
# 0x3720
lh $31 30($0)
# 0x3724
sb $5 29($0)
# 0x3728
add $23 $12 $30
# 0x372c
add $2 $22 $10
# 0x3730
lw $30 4($0)
# 0x3734
sh $8 2($0)
# 0x3738
lw $19 88($0)
# 0x373c
xori $21 $15 0x6e2e
# 0x3740
addiu $10 $22 17989
# 0x3744
or $27 $21 $26
# 0x3748
slt $6 $10 $27
# 0x374c
sb $17 2($0)
# 0x3750
srl $19 $18 16
# 0x3754
sub $18 $12 $5
# 0x3758
lh $19 32($0)
# 0x375c
or $2 $16 $12
# 0x3760
sb $25 27($0)
# 0x3764
sll $14 $2 9
# 0x3768
lbu $24 22($0)
# 0x376c
xori $31 $19 0x999c
# 0x3770
sh $27 8($0)
# 0x3774
mtlo $10
# 0x3778
lw $22 28($0)
# 0x377c
slti $10 $17 -13447
# 0x3780
lbu $5 25($0)
# 0x3784
xor $1 $18 $12
# 0x3788
srl $9 $15 31
# 0x378c
sltu $10 $25 $22
# 0x3790
sw $3 48($0)
# 0x3794
sra $18 $3 13
# 0x3798
lb $5 5($0)
# 0x379c
mtlo $15
# 0x37a0
sb $2 1($0)
# 0x37a4
lh $10 18($0)
# 0x37a8
and $16 $15 $11
# 0x37ac
lui $6 0x24ea
# 0x37b0
ori $10 $3 0x72ac
# 0x37b4
sltu $30 $27 $18
# 0x37b8
mflo $17
# 0x37bc
lb $5 9($0)
# 0x37c0
add $30 $2 $25
# 0x37c4
lb $12 8($0)
# 0x37c8
ori $23 $16 0x6073
# 0x37cc
subu $4 $31 $10
# 0x37d0
sh $27 14($0)
# 0x37d4
sllv $1 $12 $13
# 0x37d8
mfhi $21
# 0x37dc
andi $25 $12 0x346f
# 0x37e0
or $12 $20 $27
# 0x37e4
sra $25 $10 8
# 0x37e8
lbu $31 9($0)
# 0x37ec
and $22 $24 $31
# 0x37f0
or $11 $25 $26
# 0x37f4
addiu $22 $5 6952
# 0x37f8
slti $21 $15 -30217
# 0x37fc
sb $25 25($0)
# 0x3800
addiu $24 $21 13359
# 0x3804
addiu $25 $23 12938
# 0x3808
sub $5 $12 $23
# 0x380c
sh $2 38($0)
# 0x3810
addu $20 $10 $1
# 0x3814
lb $6 26($0)
# 0x3818
sll $1 $17 25
# 0x381c
sra $19 $18 17
# 0x3820
mfhi $20
# 0x3824
lui $3 0x3956
# 0x3828
xori $30 $21 0x626e
# 0x382c
sub $13 $24 $31
# 0x3830
sh $30 10($0)
# 0x3834
ori $1 $24 0xc469
# 0x3838
srav $14 $1 $14
# 0x383c
slti $30 $24 8811
# 0x3840
srav $12 $30 $8
# 0x3844
xor $27 $27 $24
# 0x3848
lh $22 6($0)
# 0x384c
sb $16 20($0)
# 0x3850
mthi $15
# 0x3854
mflo $30
# 0x3858
sub $1 $5 $27
# 0x385c
lb $23 26($0)
# 0x3860
sw $14 116($0)
# 0x3864
andi $31 $1 0x8137
# 0x3868
slti $4 $16 -1784
# 0x386c
sll $18 $31 4
# 0x3870
mtlo $4
# 0x3874
sra $14 $18 16
# 0x3878
and $4 $6 $12
# 0x387c
lui $5 0xaeaf
# 0x3880
lh $7 12($0)
# 0x3884
lb $22 21($0)
# 0x3888
subu $9 $11 $10
# 0x388c
mfhi $7
# 0x3890
mult $31 $14
# 0x3894
srlv $4 $25 $26
# 0x3898
sltu $18 $18 $12
# 0x389c
lw $25 0($0)
# 0x38a0
mult $19 $9
# 0x38a4
xor $30 $16 $17
# 0x38a8
slti $16 $21 -27306
# 0x38ac
or $10 $23 $18
# 0x38b0
slti $26 $18 30586
# 0x38b4
andi $27 $6 0x840c
# 0x38b8
sllv $14 $21 $9
# 0x38bc
addi $26 $21 -11249
# 0x38c0
mtlo $18
# 0x38c4
sltiu $8 $30 3787
# 0x38c8
add $18 $31 $26
# 0x38cc
sub $23 $13 $31
# 0x38d0
sra $21 $9 10
# 0x38d4
sub $30 $22 $25
# 0x38d8
sll $11 $26 0
# 0x38dc
srav $31 $5 $14
# 0x38e0
lhu $5 14($0)
# 0x38e4
lw $22 20($0)
# 0x38e8
srlv $4 $20 $25
# 0x38ec
xori $16 $21 0xd11e
# 0x38f0
sllv $11 $30 $30
# 0x38f4
subu $30 $5 $21
# 0x38f8
mult $27 $6
# 0x38fc
lh $11 16($0)
# 0x3900
addiu $2 $9 20101
# 0x3904
ori $6 $12 0x30e3
# 0x3908
subu $17 $4 $27
# 0x390c
andi $27 $25 0x4625
# 0x3910
multu $18 $10
# 0x3914
xori $8 $8 0xa852
# 0x3918
ori $22 $8 0x0cfb
# 0x391c
sltiu $31 $18 26367
# 0x3920
sltiu $3 $17 14232
# 0x3924
sh $2 6($0)
# 0x3928
sw $23 12($0)
# 0x392c
mflo $21
# 0x3930
addu $13 $2 $27
# 0x3934
sub $5 $5 $25
# 0x3938
sltiu $21 $22 9343
# 0x393c
sb $1 10($0)
# 0x3940
addiu $24 $21 966
# 0x3944
addi $27 $11 -12202
# 0x3948
mtlo $21
# 0x394c
srlv $27 $13 $19
# 0x3950
lhu $13 10($0)
# 0x3954
addu $25 $10 $15
# 0x3958
addiu $11 $14 3285
# 0x395c
mfhi $5
# 0x3960
mult $15 $11
# 0x3964
or $31 $22 $11
# 0x3968
slt $20 $21 $26
# 0x396c
lui $3 0x181e
# 0x3970
lbu $31 15($0)
# 0x3974
mthi $30
# 0x3978
add $18 $27 $31
# 0x397c
and $26 $11 $27
# 0x3980
sllv $16 $6 $11
# 0x3984
xori $11 $20 0xa2bb
# 0x3988
sb $30 7($0)
# 0x398c
lhu $17 30($0)
# 0x3990
sh $3 10($0)
# 0x3994
sh $2 52($0)
# 0x3998
mfhi $1
# 0x399c
sh $23 16($0)
# 0x39a0
sltiu $14 $31 28528
# 0x39a4
nor $3 $8 $1
# 0x39a8
sltu $15 $16 $17
# 0x39ac
mthi $5
# 0x39b0
lw $25 4($0)
# 0x39b4
lh $22 12($0)
# 0x39b8
xor $18 $24 $16
# 0x39bc
sw $8 0($0)
# 0x39c0
sltu $22 $11 $12
# 0x39c4
subu $17 $26 $25
# 0x39c8
lb $12 12($0)
# 0x39cc
lh $10 54($0)
# 0x39d0
lw $22 0($0)
# 0x39d4
mfhi $11
# 0x39d8
lh $1 20($0)
# 0x39dc
lw $16 0($0)
# 0x39e0
sb $27 3($0)
# 0x39e4
multu $25 $17
# 0x39e8
xor $1 $22 $7
# 0x39ec
lbu $14 14($0)
# 0x39f0
addu $23 $11 $2
# 0x39f4
lw $19 56($0)
# 0x39f8
mthi $9
# 0x39fc
sltiu $17 $7 31363
# 0x3a00
sltu $7 $27 $2
# 0x3a04
add $24 $22 $1
# 0x3a08
slti $21 $23 31589
# 0x3a0c
mflo $2
# 0x3a10
sll $5 $16 22
# 0x3a14
multu $4 $31
# 0x3a18
lw $10 12($0)
# 0x3a1c
mtlo $18
# 0x3a20
mtlo $25
# 0x3a24
sw $22 92($0)
# 0x3a28
mfhi $17
# 0x3a2c
xori $30 $20 0x2502
# 0x3a30
lbu $31 29($0)
# 0x3a34
addiu $1 $6 20863
# 0x3a38
sra $12 $3 30
# 0x3a3c
and $16 $22 $14
# 0x3a40
mflo $24
# 0x3a44
lb $19 2($0)
# 0x3a48
add $23 $8 $24
# 0x3a4c
sw $4 8($0)
# 0x3a50
sh $13 16($0)
# 0x3a54
subu $12 $7 $17
# 0x3a58
lw $30 24($0)
# 0x3a5c
sllv $14 $18 $2
# 0x3a60
ori $24 $21 0x1e39
# 0x3a64
lb $17 24($0)
# 0x3a68
addu $8 $12 $1
# 0x3a6c
mthi $30
# 0x3a70
lw $9 104($0)
# 0x3a74
lh $6 50($0)
# 0x3a78
sub $23 $6 $21
# 0x3a7c
and $30 $17 $10
# 0x3a80
xori $7 $21 0x1dba
# 0x3a84
ori $9 $7 0x8bf6
# 0x3a88
sltiu $12 $20 20114
# 0x3a8c
sb $14 20($0)
# 0x3a90
mthi $9
# 0x3a94
ori $10 $2 0x5c19
# 0x3a98
srlv $18 $22 $30
# 0x3a9c
sw $5 4($0)
# 0x3aa0
mthi $13
# 0x3aa4
mtlo $6
# 0x3aa8
srlv $27 $26 $27
# 0x3aac
addu $10 $23 $12
# 0x3ab0
sw $16 116($0)
# 0x3ab4
srlv $30 $25 $22
# 0x3ab8
srav $30 $1 $9
# 0x3abc
srav $11 $22 $22
# 0x3ac0
lui $8 0x8971
# 0x3ac4
xori $5 $17 0xdef1
# 0x3ac8
sra $11 $1 22
# 0x3acc
sb $11 7($0)
# 0x3ad0
sub $23 $24 $18
# 0x3ad4
sw $9 28($0)
# 0x3ad8
lh $1 0($0)
# 0x3adc
sltu $8 $3 $19
# 0x3ae0
lbu $26 20($0)
# 0x3ae4
sub $26 $21 $21
# 0x3ae8
sh $16 26($0)
# 0x3aec
mflo $3
# 0x3af0
slti $21 $26 -4775
# 0x3af4
lb $25 26($0)
# 0x3af8
lh $27 22($0)
# 0x3afc
lw $1 60($0)
# 0x3b00
andi $17 $3 0x41c0
# 0x3b04
sw $26 108($0)
# 0x3b08
sll $9 $27 18
# 0x3b0c
srlv $10 $7 $18
# 0x3b10
or $12 $5 $16
# 0x3b14
srlv $15 $26 $8
# 0x3b18
addi $2 $27 -30617
# 0x3b1c
addi $12 $27 24322
# 0x3b20
mflo $14
# 0x3b24
nor $18 $30 $22
# 0x3b28
lw $18 92($0)
# 0x3b2c
lbu $9 17($0)
# 0x3b30
or $1 $13 $1
# 0x3b34
sllv $1 $4 $5
# 0x3b38
mflo $17
# 0x3b3c
and $24 $13 $3
# 0x3b40
lh $4 34($0)
# 0x3b44
multu $16 $23
# 0x3b48
sw $5 8($0)
# 0x3b4c
sw $18 0($0)
# 0x3b50
sw $3 72($0)
# 0x3b54
multu $20 $30
# 0x3b58
mflo $30
# 0x3b5c
addu $5 $31 $10
# 0x3b60
multu $4 $30
# 0x3b64
slt $20 $2 $4
# 0x3b68
srlv $2 $16 $5
# 0x3b6c
xori $24 $7 0x527e
# 0x3b70
addu $18 $11 $8
# 0x3b74
xori $7 $4 0x9324
# 0x3b78
addiu $7 $30 32692
# 0x3b7c
lh $31 22($0)
# 0x3b80
andi $24 $19 0x1045
# 0x3b84
lhu $17 8($0)
# 0x3b88
slt $20 $6 $22
# 0x3b8c
xori $9 $27 0x2af5
# 0x3b90
sh $21 26($0)
# 0x3b94
mult $1 $23
# 0x3b98
lh $31 38($0)
# 0x3b9c
lbu $6 23($0)
# 0x3ba0
srl $3 $27 25
# 0x3ba4
xor $30 $26 $30
# 0x3ba8
addi $8 $21 -27512
# 0x3bac
sh $26 22($0)
# 0x3bb0
lh $6 22($0)
# 0x3bb4
mthi $3
# 0x3bb8
and $20 $1 $14
# 0x3bbc
mfhi $1
# 0x3bc0
addu $10 $16 $24
# 0x3bc4
lw $15 8($0)
# 0x3bc8
multu $26 $24
# 0x3bcc
mflo $12
# 0x3bd0
srav $19 $6 $2
# 0x3bd4
lh $9 20($0)
# 0x3bd8
sra $13 $13 23
# 0x3bdc
lh $12 18($0)
# 0x3be0
and $11 $1 $21
# 0x3be4
srlv $22 $15 $17
# 0x3be8
xori $2 $13 0x93f1
# 0x3bec
andi $5 $19 0xe930
# 0x3bf0
mfhi $13
# 0x3bf4
sw $16 4($0)
# 0x3bf8
xor $19 $24 $24
# 0x3bfc
subu $11 $23 $5
# 0x3c00
sub $30 $26 $17
# 0x3c04
lh $18 4($0)
# 0x3c08
sltiu $4 $20 27281
# 0x3c0c
srav $22 $17 $2
# 0x3c10
sra $17 $4 3
# 0x3c14
lhu $5 12($0)
# 0x3c18
add $5 $27 $10
# 0x3c1c
sw $6 68($0)
# 0x3c20
and $5 $22 $5
# 0x3c24
sw $24 16($0)
# 0x3c28
sb $7 24($0)
# 0x3c2c
sw $31 16($0)
# 0x3c30
slt $1 $2 $7
# 0x3c34
sltu $3 $13 $19
# 0x3c38
subu $13 $3 $20
# 0x3c3c
slt $20 $7 $17
# 0x3c40
sllv $16 $14 $8
# 0x3c44
nor $8 $31 $9
# 0x3c48
lui $15 0x47c1
# 0x3c4c
addi $6 $15 17285
# 0x3c50
sllv $13 $9 $6
# 0x3c54
add $4 $14 $4
# 0x3c58
lw $22 4($0)
# 0x3c5c
srl $3 $2 0
# 0x3c60
mfhi $7
# 0x3c64
sw $21 104($0)
# 0x3c68
sltiu $12 $16 31688
# 0x3c6c
mthi $31
# 0x3c70
mult $23 $11
# 0x3c74
addiu $1 $13 25328
# 0x3c78
lbu $11 1($0)
# 0x3c7c
mult $15 $9
# 0x3c80
add $24 $12 $17
# 0x3c84
lui $8 0xccfe
# 0x3c88
mflo $6
# 0x3c8c
ori $22 $12 0x73b6
# 0x3c90
xori $17 $18 0x5d5c
# 0x3c94
lw $20 108($0)
# 0x3c98
mflo $6
# 0x3c9c
lbu $16 2($0)
# 0x3ca0
lui $14 0x8a95
# 0x3ca4
nor $7 $10 $3
# 0x3ca8
or $10 $15 $2
# 0x3cac
addu $5 $15 $15
# 0x3cb0
sra $27 $13 8
# 0x3cb4
and $13 $5 $17
# 0x3cb8
xor $9 $18 $12
# 0x3cbc
srl $2 $19 31
# 0x3cc0
sub $2 $19 $14
# 0x3cc4
srl $10 $13 19
# 0x3cc8
lw $23 104($0)
# 0x3ccc
lw $1 56($0)
# 0x3cd0
nor $5 $12 $8
# 0x3cd4
addi $16 $22 7634
# 0x3cd8
addiu $21 $17 20810
# 0x3cdc
lb $24 29($0)
# 0x3ce0
add $8 $12 $12
# 0x3ce4
sb $3 24($0)
# 0x3ce8
sllv $5 $20 $14
# 0x3cec
addi $10 $6 20289
# 0x3cf0
srav $18 $4 $22
# 0x3cf4
add $6 $16 $7
# 0x3cf8
sw $3 88($0)
# 0x3cfc
srlv $2 $19 $3
# 0x3d00
mtlo $24
# 0x3d04
mthi $14
# 0x3d08
add $20 $10 $10
# 0x3d0c
lui $3 0xdb47
# 0x3d10
sh $26 8($0)
# 0x3d14
sltu $11 $12 $12
# 0x3d18
sltu $18 $22 $8
# 0x3d1c
and $17 $22 $30
# 0x3d20
srlv $1 $7 $9
# 0x3d24
lbu $17 9($0)
# 0x3d28
xori $10 $14 0xbc76
# 0x3d2c
lw $18 124($0)
# 0x3d30
nor $4 $20 $1
# 0x3d34
andi $22 $30 0x1477
# 0x3d38
lw $19 84($0)
# 0x3d3c
multu $17 $23
# 0x3d40
addiu $27 $13 14798
# 0x3d44
lh $26 28($0)
# 0x3d48
andi $15 $6 0x72e5
# 0x3d4c
slti $15 $24 9767
# 0x3d50
sw $8 24($0)
# 0x3d54
mult $8 $8
# 0x3d58
sra $1 $21 24
# 0x3d5c
and $26 $9 $10
# 0x3d60
addi $4 $7 -4428
# 0x3d64
subu $8 $25 $2
# 0x3d68
addiu $16 $22 26278
# 0x3d6c
srlv $26 $19 $30
# 0x3d70
lh $27 18($0)
# 0x3d74
lw $22 12($0)
# 0x3d78
nor $23 $2 $30
# 0x3d7c
sh $27 20($0)
# 0x3d80
mthi $22
# 0x3d84
sll $14 $6 29
# 0x3d88
lh $24 38($0)
# 0x3d8c
lh $31 20($0)
# 0x3d90
lh $1 46($0)
# 0x3d94
sw $10 8($0)
# 0x3d98
andi $11 $5 0xc62c
# 0x3d9c
addi $16 $25 -362
# 0x3da0
ori $1 $17 0xcc0e
# 0x3da4
sltu $10 $19 $9
# 0x3da8
lw $3 8($0)
# 0x3dac
mflo $19
# 0x3db0
multu $30 $15
# 0x3db4
xor $27 $4 $9
# 0x3db8
add $24 $31 $27
# 0x3dbc
addu $9 $23 $15
# 0x3dc0
sb $3 10($0)
# 0x3dc4
mthi $31
# 0x3dc8
nor $30 $3 $22
# 0x3dcc
lw $20 24($0)
# 0x3dd0
sb $27 26($0)
# 0x3dd4
multu $16 $21
# 0x3dd8
andi $11 $19 0xd971
# 0x3ddc
sh $23 18($0)
# 0x3de0
lw $4 100($0)
# 0x3de4
sltiu $13 $12 12201
# 0x3de8
addiu $1 $5 16784
# 0x3dec
sb $13 9($0)
# 0x3df0
addiu $4 $20 25185
# 0x3df4
sllv $1 $13 $17
# 0x3df8
slti $15 $1 26704
# 0x3dfc
slt $11 $27 $4
# 0x3e00
add $21 $14 $10
# 0x3e04
sllv $14 $7 $15
# 0x3e08
mfhi $13
# 0x3e0c
lh $4 18($0)
# 0x3e10
ori $23 $30 0x8e05
# 0x3e14
lb $19 22($0)
# 0x3e18
add $13 $20 $8
# 0x3e1c
lhu $24 30($0)
# 0x3e20
mthi $9
# 0x3e24
xor $21 $30 $25
# 0x3e28
addi $3 $19 25786
# 0x3e2c
lhu $10 14($0)
# 0x3e30
mult $8 $9
# 0x3e34
sh $16 2($0)
# 0x3e38
or $4 $9 $27
# 0x3e3c
sra $14 $26 17
# 0x3e40
addu $13 $15 $4
# 0x3e44
sltiu $1 $17 15554
# 0x3e48
addu $3 $20 $18
# 0x3e4c
lh $25 24($0)
# 0x3e50
sw $1 28($0)
# 0x3e54
srav $18 $10 $12
# 0x3e58
sb $2 14($0)
# 0x3e5c
lw $26 16($0)
# 0x3e60
addu $25 $1 $22
# 0x3e64
lh $6 2($0)
# 0x3e68
nor $30 $17 $15
# 0x3e6c
lui $12 0xe2d0
# 0x3e70
multu $23 $24
# 0x3e74
addi $26 $3 -13566
# 0x3e78
sltiu $2 $25 12382
# 0x3e7c
mfhi $2
# 0x3e80
lw $8 28($0)
# 0x3e84
addiu $25 $7 18627
# 0x3e88
srlv $27 $1 $14
# 0x3e8c
sllv $4 $11 $22
# 0x3e90
lbu $3 17($0)
# 0x3e94
lw $24 12($0)
# 0x3e98
addu $25 $23 $27
# 0x3e9c
sltu $6 $17 $30
# 0x3ea0
lhu $23 10($0)
# 0x3ea4
sb $10 8($0)
# 0x3ea8
andi $6 $9 0x032c
# 0x3eac
xori $5 $3 0x19d2
# 0x3eb0
mult $5 $9
# 0x3eb4
addi $10 $11 -12389
# 0x3eb8
xori $18 $3 0x6121
# 0x3ebc
sb $1 7($0)
# 0x3ec0
sltu $19 $27 $8
# 0x3ec4
sb $31 15($0)
# 0x3ec8
subu $13 $26 $6
# 0x3ecc
ori $12 $26 0xd3b0
# 0x3ed0
sw $23 4($0)
# 0x3ed4
sh $8 12($0)
# 0x3ed8
subu $2 $10 $8
# 0x3edc
sll $15 $7 4
# 0x3ee0
addi $7 $26 -22628
# 0x3ee4
lb $25 15($0)
# 0x3ee8
sb $6 27($0)
# 0x3eec
subu $10 $12 $27
# 0x3ef0
sllv $7 $5 $12
# 0x3ef4
ori $27 $7 0x0d84
# 0x3ef8
slt $13 $1 $22
# 0x3efc
slt $26 $13 $1
# 0x3f00
addu $6 $4 $22
# 0x3f04
and $25 $26 $20
# 0x3f08
srav $14 $4 $25
# 0x3f0c
mult $27 $5
# 0x3f10
addu $10 $15 $3
# 0x3f14
mult $7 $25
# 0x3f18
lb $19 26($0)
# 0x3f1c
xor $21 $21 $6
# 0x3f20
mfhi $21
# 0x3f24
multu $5 $23
# 0x3f28
lb $6 17($0)
# 0x3f2c
lui $15 0x34b7
# 0x3f30
srl $14 $7 24
# 0x3f34
sra $26 $24 6
# 0x3f38
mfhi $18
# 0x3f3c
addu $3 $26 $26
# 0x3f40
sllv $24 $24 $9
# 0x3f44
addu $4 $16 $7
# 0x3f48
srlv $22 $20 $1
# 0x3f4c
sltiu $17 $12 19636
# 0x3f50
ori $14 $15 0x012c
# 0x3f54
xori $4 $3 0x8ff9
# 0x3f58
sh $15 48($0)
# 0x3f5c
subu $7 $15 $18
# 0x3f60
mtlo $23
# 0x3f64
lh $23 14($0)
# 0x3f68
srav $15 $13 $14
# 0x3f6c
ori $30 $11 0x19d3
# 0x3f70
srl $15 $27 7
# 0x3f74
sra $14 $15 21
# 0x3f78
sltu $12 $22 $26
# 0x3f7c
addi $19 $23 2327
# 0x3f80
sub $18 $10 $24
# 0x3f84
lb $12 5($0)
# 0x3f88
mfhi $27
# 0x3f8c
sub $20 $30 $18
# 0x3f90
lbu $10 5($0)
# 0x3f94
sra $24 $4 9
# 0x3f98
mthi $18
# 0x3f9c
or $23 $15 $3
# 0x3fa0
mflo $2

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop