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
ori $9 $6 0xb1bb
# 0x3008
sb $31 16($0)
# 0x300c
sltu $22 $5 $12
# 0x3010
sltu $4 $8 $15
# 0x3014
xori $8 $7 0x17e3
# 0x3018
lbu $12 1($0)
# 0x301c
lb $12 5($0)
# 0x3020
lw $14 0($0)
# 0x3024
sw $4 12($0)
# 0x3028
add $15 $12 $22
# 0x302c
lb $9 14($0)
# 0x3030
subu $12 $4 $26
# 0x3034
mfhi $11
# 0x3038
lui $1 0xd3cc
# 0x303c
lh $14 46($0)
# 0x3040
lh $22 54($0)
# 0x3044
srav $21 $30 $18
# 0x3048
ori $15 $26 0xabaa
# 0x304c
subu $24 $10 $11
# 0x3050
addu $2 $13 $30
# 0x3054
srl $21 $7 29
# 0x3058
sw $7 112($0)
# 0x305c
srlv $17 $3 $8
# 0x3060
nor $2 $11 $20
# 0x3064
or $8 $14 $5
# 0x3068
and $4 $8 $23
# 0x306c
slt $6 $31 $5
# 0x3070
mfhi $9
# 0x3074
and $12 $11 $3
# 0x3078
srlv $24 $27 $22
# 0x307c
sltu $5 $30 $6
# 0x3080
slt $26 $16 $9
# 0x3084
srlv $15 $17 $4
# 0x3088
mult $10 $5
# 0x308c
nor $22 $23 $17
# 0x3090
xori $11 $20 0xefe9
# 0x3094
lh $25 6($0)
# 0x3098
sltiu $4 $19 6869
# 0x309c
mflo $2
# 0x30a0
lb $18 11($0)
# 0x30a4
mflo $18
# 0x30a8
srav $30 $13 $15
# 0x30ac
subu $19 $17 $14
# 0x30b0
srl $2 $15 25
# 0x30b4
lw $2 68($0)
# 0x30b8
lw $11 64($0)
# 0x30bc
lh $26 16($0)
# 0x30c0
subu $3 $23 $17
# 0x30c4
subu $23 $2 $22
# 0x30c8
mthi $27
# 0x30cc
multu $31 $3
# 0x30d0
srav $25 $24 $21
# 0x30d4
multu $21 $23
# 0x30d8
sw $13 104($0)
# 0x30dc
mthi $11
# 0x30e0
lh $15 6($0)
# 0x30e4
and $31 $14 $5
# 0x30e8
mtlo $14
# 0x30ec
slti $21 $7 -8254
# 0x30f0
xori $22 $16 0xc137
# 0x30f4
srlv $22 $6 $31
# 0x30f8
sll $7 $26 9
# 0x30fc
lbu $30 26($0)
# 0x3100
addiu $22 $24 7104
# 0x3104
xori $7 $11 0x3492
# 0x3108
lb $23 24($0)
# 0x310c
mfhi $4
# 0x3110
sb $26 26($0)
# 0x3114
xor $6 $14 $8
# 0x3118
subu $5 $8 $9
# 0x311c
mflo $17
# 0x3120
srlv $23 $1 $5
# 0x3124
and $5 $19 $5
# 0x3128
sltu $19 $13 $13
# 0x312c
mfhi $15
# 0x3130
lw $5 28($0)
# 0x3134
mfhi $11
# 0x3138
sh $23 46($0)
# 0x313c
lw $10 8($0)
# 0x3140
sub $2 $12 $22
# 0x3144
addi $23 $15 20924
# 0x3148
sra $23 $5 3
# 0x314c
slt $20 $23 $6
# 0x3150
sh $18 60($0)
# 0x3154
mflo $23
# 0x3158
addiu $12 $24 20315
# 0x315c
sw $17 12($0)
# 0x3160
slt $6 $15 $15
# 0x3164
andi $12 $7 0x76e2
# 0x3168
sllv $18 $24 $16
# 0x316c
sra $19 $8 8
# 0x3170
lb $11 22($0)
# 0x3174
add $12 $10 $22
# 0x3178
xor $5 $2 $30
# 0x317c
xori $30 $30 0x3a6e
# 0x3180
mfhi $6
# 0x3184
sw $19 40($0)
# 0x3188
sllv $15 $22 $22
# 0x318c
add $14 $8 $7
# 0x3190
lw $11 120($0)
# 0x3194
sllv $25 $3 $16
# 0x3198
lh $17 20($0)
# 0x319c
andi $13 $8 0x757a
# 0x31a0
sra $3 $12 15
# 0x31a4
sltiu $13 $30 17181
# 0x31a8
srlv $15 $21 $5
# 0x31ac
subu $26 $7 $14
# 0x31b0
srl $25 $31 6
# 0x31b4
lb $14 7($0)
# 0x31b8
or $1 $26 $1
# 0x31bc
ori $1 $17 0x50b2
# 0x31c0
lhu $7 18($0)
# 0x31c4
xor $8 $14 $6
# 0x31c8
lui $13 0x68c2
# 0x31cc
slti $30 $6 -4113
# 0x31d0
lw $6 44($0)
# 0x31d4
andi $15 $16 0x74f8
# 0x31d8
sh $9 30($0)
# 0x31dc
xori $14 $5 0x471a
# 0x31e0
lbu $3 31($0)
# 0x31e4
lui $12 0x4219
# 0x31e8
nor $16 $2 $25
# 0x31ec
addu $11 $11 $30
# 0x31f0
sllv $18 $24 $14
# 0x31f4
lh $2 8($0)
# 0x31f8
addi $2 $23 31951
# 0x31fc
andi $19 $6 0x8ce6
# 0x3200
lb $25 30($0)
# 0x3204
andi $12 $17 0xe20f
# 0x3208
sra $24 $20 31
# 0x320c
slti $19 $10 28164
# 0x3210
sra $7 $12 27
# 0x3214
nor $19 $15 $9
# 0x3218
subu $9 $18 $21
# 0x321c
addi $22 $25 4485
# 0x3220
addi $9 $26 2718
# 0x3224
mult $3 $30
# 0x3228
srav $5 $25 $8
# 0x322c
mfhi $12
# 0x3230
sra $23 $14 30
# 0x3234
mfhi $23
# 0x3238
andi $13 $6 0x84a5
# 0x323c
lw $4 16($0)
# 0x3240
mfhi $24
# 0x3244
mult $10 $21
# 0x3248
srl $6 $1 14
# 0x324c
slt $14 $11 $17
# 0x3250
sub $26 $4 $18
# 0x3254
lh $27 10($0)
# 0x3258
sub $20 $13 $5
# 0x325c
addiu $7 $14 21617
# 0x3260
srav $12 $23 $7
# 0x3264
lh $26 50($0)
# 0x3268
mthi $11
# 0x326c
addiu $4 $31 18105
# 0x3270
sh $5 36($0)
# 0x3274
ori $16 $1 0xfabc
# 0x3278
mthi $31
# 0x327c
mflo $10
# 0x3280
lhu $4 8($0)
# 0x3284
sll $27 $12 9
# 0x3288
lbu $3 22($0)
# 0x328c
sb $8 2($0)
# 0x3290
mthi $21
# 0x3294
lui $31 0x1bd3
# 0x3298
lh $2 54($0)
# 0x329c
mflo $31
# 0x32a0
lw $5 24($0)
# 0x32a4
add $15 $20 $18
# 0x32a8
lw $5 36($0)
# 0x32ac
sw $18 28($0)
# 0x32b0
lh $6 4($0)
# 0x32b4
sll $11 $1 9
# 0x32b8
sltu $27 $23 $8
# 0x32bc
and $13 $26 $21
# 0x32c0
mtlo $1
# 0x32c4
andi $6 $5 0x06fe
# 0x32c8
ori $21 $26 0x75fa
# 0x32cc
add $21 $31 $27
# 0x32d0
and $8 $9 $1
# 0x32d4
sh $27 8($0)
# 0x32d8
sra $13 $18 17
# 0x32dc
sub $23 $22 $16
# 0x32e0
sltu $17 $3 $8
# 0x32e4
or $24 $25 $6
# 0x32e8
mtlo $31
# 0x32ec
lw $15 48($0)
# 0x32f0
and $6 $6 $11
# 0x32f4
lh $31 12($0)
# 0x32f8
sub $7 $12 $24
# 0x32fc
lbu $15 14($0)
# 0x3300
slti $7 $12 -25797
# 0x3304
lbu $24 24($0)
# 0x3308
lb $5 29($0)
# 0x330c
lb $27 10($0)
# 0x3310
mthi $31
# 0x3314
slti $25 $23 16206
# 0x3318
lh $27 22($0)
# 0x331c
mfhi $31
# 0x3320
xor $30 $23 $30
# 0x3324
mtlo $9
# 0x3328
mult $6 $30
# 0x332c
sra $30 $3 10
# 0x3330
or $16 $15 $21
# 0x3334
srlv $7 $1 $9
# 0x3338
sh $23 30($0)
# 0x333c
nor $21 $5 $20
# 0x3340
andi $23 $31 0x9422
# 0x3344
lb $26 19($0)
# 0x3348
subu $5 $22 $2
# 0x334c
mflo $26
# 0x3350
sra $17 $17 4
# 0x3354
lbu $12 19($0)
# 0x3358
multu $5 $9
# 0x335c
lw $4 108($0)
# 0x3360
sllv $16 $14 $3
# 0x3364
andi $16 $25 0xacef
# 0x3368
or $19 $19 $8
# 0x336c
sh $8 34($0)
# 0x3370
slti $12 $9 15985
# 0x3374
lui $10 0xd5bc
# 0x3378
lbu $4 11($0)
# 0x337c
addiu $21 $24 13847
# 0x3380
mfhi $13
# 0x3384
lw $22 36($0)
# 0x3388
mflo $3
# 0x338c
mfhi $11
# 0x3390
lh $12 24($0)
# 0x3394
lbu $19 15($0)
# 0x3398
sh $8 10($0)
# 0x339c
sra $17 $4 3
# 0x33a0
lhu $9 16($0)
# 0x33a4
lbu $19 5($0)
# 0x33a8
sltu $31 $1 $4
# 0x33ac
or $5 $23 $12
# 0x33b0
addi $8 $8 2084
# 0x33b4
lh $15 0($0)
# 0x33b8
lh $13 0($0)
# 0x33bc
lbu $1 29($0)
# 0x33c0
lw $30 92($0)
# 0x33c4
srav $3 $22 $15
# 0x33c8
sb $23 4($0)
# 0x33cc
lw $8 12($0)
# 0x33d0
mflo $31
# 0x33d4
lw $22 28($0)
# 0x33d8
lbu $22 8($0)
# 0x33dc
lui $12 0xbe4c
# 0x33e0
sw $10 60($0)
# 0x33e4
lw $7 4($0)
# 0x33e8
sh $10 14($0)
# 0x33ec
sh $7 4($0)
# 0x33f0
sra $6 $2 14
# 0x33f4
sra $26 $20 14
# 0x33f8
add $14 $19 $6
# 0x33fc
lui $16 0x2833
# 0x3400
sltiu $13 $24 1354
# 0x3404
sh $23 34($0)
# 0x3408
or $5 $16 $8
# 0x340c
andi $22 $24 0xaf41
# 0x3410
add $23 $30 $22
# 0x3414
mult $17 $5
# 0x3418
lb $8 28($0)
# 0x341c
lw $1 4($0)
# 0x3420
or $15 $25 $25
# 0x3424
addi $1 $4 -27689
# 0x3428
addiu $26 $5 18257
# 0x342c
mult $18 $3
# 0x3430
sh $19 26($0)
# 0x3434
xor $17 $9 $4
# 0x3438
lh $9 14($0)
# 0x343c
lhu $15 4($0)
# 0x3440
sltiu $8 $19 4618
# 0x3444
addiu $9 $5 32664
# 0x3448
ori $1 $9 0xb57f
# 0x344c
subu $19 $1 $13
# 0x3450
slt $31 $7 $6
# 0x3454
sb $4 9($0)
# 0x3458
mfhi $4
# 0x345c
sh $4 26($0)
# 0x3460
mflo $31
# 0x3464
sllv $4 $14 $4
# 0x3468
xori $1 $12 0x0e92
# 0x346c
sltiu $10 $10 18126
# 0x3470
lh $27 18($0)
# 0x3474
addi $17 $10 -26485
# 0x3478
subu $25 $7 $30
# 0x347c
sll $31 $30 28
# 0x3480
nor $17 $8 $4
# 0x3484
srav $2 $6 $9
# 0x3488
sw $17 20($0)
# 0x348c
or $9 $31 $16
# 0x3490
sw $22 28($0)
# 0x3494
srav $4 $8 $14
# 0x3498
sub $17 $17 $6
# 0x349c
srav $5 $2 $19
# 0x34a0
nor $4 $15 $30
# 0x34a4
srlv $15 $24 $21
# 0x34a8
sh $15 26($0)
# 0x34ac
or $24 $24 $31
# 0x34b0
lb $22 18($0)
# 0x34b4
add $12 $23 $13
# 0x34b8
sltu $6 $21 $4
# 0x34bc
sw $3 0($0)
# 0x34c0
lw $5 28($0)
# 0x34c4
add $11 $11 $22
# 0x34c8
mtlo $14
# 0x34cc
or $20 $22 $5
# 0x34d0
sh $31 6($0)
# 0x34d4
lbu $27 25($0)
# 0x34d8
sllv $26 $2 $10
# 0x34dc
sllv $26 $16 $14
# 0x34e0
nor $16 $11 $20
# 0x34e4
lh $25 16($0)
# 0x34e8
subu $8 $4 $26
# 0x34ec
xor $13 $19 $18
# 0x34f0
sw $4 0($0)
# 0x34f4
andi $31 $14 0xdaf3
# 0x34f8
sltiu $8 $4 416
# 0x34fc
sllv $26 $20 $1
# 0x3500
srlv $24 $27 $8
# 0x3504
slt $17 $1 $14
# 0x3508
lw $3 8($0)
# 0x350c
sw $13 12($0)
# 0x3510
srl $22 $1 23
# 0x3514
lb $12 0($0)
# 0x3518
sw $25 40($0)
# 0x351c
andi $13 $24 0x362e
# 0x3520
multu $4 $16
# 0x3524
lh $5 26($0)
# 0x3528
lbu $26 11($0)
# 0x352c
sh $23 6($0)
# 0x3530
xor $16 $2 $2
# 0x3534
addiu $11 $24 15244
# 0x3538
sra $31 $8 30
# 0x353c
ori $21 $19 0x06e4
# 0x3540
sll $16 $17 15
# 0x3544
sh $16 22($0)
# 0x3548
nor $9 $4 $9
# 0x354c
lw $11 44($0)
# 0x3550
addi $3 $18 -18053
# 0x3554
sb $13 0($0)
# 0x3558
slt $12 $17 $14
# 0x355c
mthi $26
# 0x3560
mflo $25
# 0x3564
slt $23 $21 $8
# 0x3568
lw $5 4($0)
# 0x356c
sllv $27 $21 $12
# 0x3570
sh $17 30($0)
# 0x3574
lhu $1 18($0)
# 0x3578
sub $11 $18 $8
# 0x357c
sltiu $10 $30 31956
# 0x3580
slt $21 $18 $26
# 0x3584
lb $25 9($0)
# 0x3588
lw $25 24($0)
# 0x358c
lbu $23 24($0)
# 0x3590
mtlo $27
# 0x3594
sw $2 16($0)
# 0x3598
add $6 $3 $8
# 0x359c
lh $16 12($0)
# 0x35a0
sh $4 26($0)
# 0x35a4
addi $16 $17 -20925
# 0x35a8
lw $13 32($0)
# 0x35ac
lhu $11 4($0)
# 0x35b0
srl $18 $25 30
# 0x35b4
add $13 $7 $31
# 0x35b8
lh $3 2($0)
# 0x35bc
andi $2 $22 0x22a9
# 0x35c0
addu $9 $2 $18
# 0x35c4
sh $18 0($0)
# 0x35c8
mthi $17
# 0x35cc
sw $23 52($0)
# 0x35d0
sub $17 $30 $30
# 0x35d4
lb $25 28($0)
# 0x35d8
lw $13 16($0)
# 0x35dc
sllv $3 $11 $17
# 0x35e0
slti $14 $7 -25912
# 0x35e4
lw $16 8($0)
# 0x35e8
slt $12 $4 $6
# 0x35ec
sra $13 $6 14
# 0x35f0
lw $30 108($0)
# 0x35f4
sllv $31 $12 $17
# 0x35f8
lb $4 11($0)
# 0x35fc
andi $17 $30 0xb272
# 0x3600
nor $6 $24 $10
# 0x3604
mult $11 $17
# 0x3608
mflo $20
# 0x360c
sh $31 16($0)
# 0x3610
sh $15 18($0)
# 0x3614
xori $2 $22 0x092d
# 0x3618
srlv $27 $13 $12
# 0x361c
lhu $21 18($0)
# 0x3620
lhu $12 14($0)
# 0x3624
subu $7 $5 $27
# 0x3628
slti $13 $2 3403
# 0x362c
lbu $11 19($0)
# 0x3630
andi $27 $27 0xd217
# 0x3634
srav $30 $8 $14
# 0x3638
xor $3 $25 $2
# 0x363c
srav $22 $1 $20
# 0x3640
and $19 $12 $27
# 0x3644
sb $23 4($0)
# 0x3648
sw $7 0($0)
# 0x364c
sub $6 $23 $23
# 0x3650
lh $10 14($0)
# 0x3654
lh $15 26($0)
# 0x3658
lui $1 0x2e5b
# 0x365c
sw $11 0($0)
# 0x3660
addiu $20 $12 5072
# 0x3664
lbu $27 14($0)
# 0x3668
sll $21 $10 28
# 0x366c
srl $19 $14 0
# 0x3670
sub $14 $19 $15
# 0x3674
lh $25 54($0)
# 0x3678
sb $15 3($0)
# 0x367c
mthi $26
# 0x3680
mthi $13
# 0x3684
multu $15 $21
# 0x3688
xor $6 $19 $16
# 0x368c
sh $30 60($0)
# 0x3690
multu $23 $3
# 0x3694
sh $10 18($0)
# 0x3698
sra $17 $21 30
# 0x369c
multu $25 $5
# 0x36a0
subu $6 $15 $22
# 0x36a4
nor $25 $17 $27
# 0x36a8
addu $5 $19 $10
# 0x36ac
lb $26 27($0)
# 0x36b0
add $24 $31 $25
# 0x36b4
mflo $27
# 0x36b8
slt $24 $12 $22
# 0x36bc
ori $1 $20 0xf164
# 0x36c0
sh $12 30($0)
# 0x36c4
srl $18 $23 31
# 0x36c8
slti $4 $15 32583
# 0x36cc
srav $30 $31 $30
# 0x36d0
mfhi $31
# 0x36d4
lui $30 0x1106
# 0x36d8
sb $22 18($0)
# 0x36dc
sh $7 48($0)
# 0x36e0
lh $1 50($0)
# 0x36e4
lbu $22 26($0)
# 0x36e8
lhu $9 18($0)
# 0x36ec
mthi $22
# 0x36f0
lhu $22 14($0)
# 0x36f4
or $4 $3 $5
# 0x36f8
addu $2 $19 $7
# 0x36fc
sllv $19 $11 $24
# 0x3700
sll $16 $16 8
# 0x3704
slt $6 $25 $4
# 0x3708
sw $4 100($0)
# 0x370c
addi $12 $10 -9365
# 0x3710
andi $7 $7 0x2151
# 0x3714
lw $12 0($0)
# 0x3718
nor $20 $31 $30
# 0x371c
sll $13 $4 26
# 0x3720
xor $3 $7 $15
# 0x3724
srav $10 $14 $26
# 0x3728
mfhi $9
# 0x372c
lh $7 28($0)
# 0x3730
mtlo $20
# 0x3734
sltu $2 $19 $21
# 0x3738
lb $15 22($0)
# 0x373c
nor $17 $25 $26
# 0x3740
lb $31 4($0)
# 0x3744
sw $26 28($0)
# 0x3748
mfhi $5
# 0x374c
or $4 $26 $13
# 0x3750
or $15 $16 $26
# 0x3754
nor $19 $26 $10
# 0x3758
sw $7 12($0)
# 0x375c
sltu $6 $1 $23
# 0x3760
lhu $2 20($0)
# 0x3764
mthi $25
# 0x3768
xor $5 $17 $20
# 0x376c
mflo $4
# 0x3770
sh $5 0($0)
# 0x3774
addi $14 $26 -16674
# 0x3778
lh $17 12($0)
# 0x377c
slti $23 $7 -24081
# 0x3780
mult $7 $23
# 0x3784
add $27 $1 $18
# 0x3788
ori $7 $2 0x8f5b
# 0x378c
xori $14 $14 0xf4a6
# 0x3790
or $7 $8 $10
# 0x3794
lhu $17 22($0)
# 0x3798
xori $23 $6 0xbccb
# 0x379c
subu $26 $10 $27
# 0x37a0
mtlo $16
# 0x37a4
sllv $21 $27 $6
# 0x37a8
slti $30 $21 -3133
# 0x37ac
sra $4 $7 2
# 0x37b0
sllv $6 $18 $15
# 0x37b4
slt $9 $11 $22
# 0x37b8
addi $3 $31 13635
# 0x37bc
sb $26 4($0)
# 0x37c0
lb $26 0($0)
# 0x37c4
mthi $20
# 0x37c8
mtlo $22
# 0x37cc
multu $10 $2
# 0x37d0
sw $9 48($0)
# 0x37d4
sub $7 $24 $4
# 0x37d8
srl $9 $20 14
# 0x37dc
mflo $11
# 0x37e0
or $20 $10 $20
# 0x37e4
lb $9 2($0)
# 0x37e8
multu $22 $3
# 0x37ec
sub $6 $24 $10
# 0x37f0
sw $13 28($0)
# 0x37f4
slti $5 $11 24717
# 0x37f8
nor $17 $6 $22
# 0x37fc
mfhi $1
# 0x3800
sh $17 44($0)
# 0x3804
mthi $23
# 0x3808
mthi $23
# 0x380c
mflo $17
# 0x3810
andi $3 $9 0xaaa4
# 0x3814
slti $11 $13 31869
# 0x3818
addu $30 $1 $22
# 0x381c
sw $11 40($0)
# 0x3820
sltiu $25 $11 27039
# 0x3824
and $14 $2 $26
# 0x3828
xori $10 $13 0x5b20
# 0x382c
xori $5 $5 0x5bb3
# 0x3830
lw $30 0($0)
# 0x3834
or $12 $22 $12
# 0x3838
srlv $6 $30 $23
# 0x383c
add $16 $24 $6
# 0x3840
subu $6 $30 $21
# 0x3844
lh $3 8($0)
# 0x3848
and $9 $24 $2
# 0x384c
lb $22 20($0)
# 0x3850
xor $31 $2 $26
# 0x3854
sb $26 11($0)
# 0x3858
ori $26 $1 0xf805
# 0x385c
sw $17 84($0)
# 0x3860
lbu $10 16($0)
# 0x3864
sh $2 8($0)
# 0x3868
mfhi $26
# 0x386c
sra $26 $5 22
# 0x3870
multu $13 $14
# 0x3874
lb $25 16($0)
# 0x3878
mflo $22
# 0x387c
mtlo $1
# 0x3880
lui $13 0xebba
# 0x3884
lhu $2 22($0)
# 0x3888
lhu $9 14($0)
# 0x388c
sltiu $30 $2 4091
# 0x3890
xori $4 $30 0xe223
# 0x3894
addi $7 $17 -6920
# 0x3898
slti $1 $24 19616
# 0x389c
lw $8 24($0)
# 0x38a0
mflo $18
# 0x38a4
lb $30 15($0)
# 0x38a8
mfhi $17
# 0x38ac
lbu $16 25($0)
# 0x38b0
slt $31 $2 $23
# 0x38b4
lb $4 12($0)
# 0x38b8
xor $17 $8 $15
# 0x38bc
lh $23 60($0)
# 0x38c0
addiu $18 $9 6844
# 0x38c4
mthi $5
# 0x38c8
lui $6 0x2f57
# 0x38cc
xor $5 $30 $26
# 0x38d0
or $5 $6 $31
# 0x38d4
and $10 $9 $1
# 0x38d8
or $9 $20 $21
# 0x38dc
sb $12 3($0)
# 0x38e0
subu $30 $27 $19
# 0x38e4
sra $17 $5 11
# 0x38e8
xor $20 $8 $18
# 0x38ec
xori $23 $1 0x5d4f
# 0x38f0
mthi $7
# 0x38f4
sll $11 $7 24
# 0x38f8
lb $2 31($0)
# 0x38fc
ori $10 $18 0x9adb
# 0x3900
srl $1 $23 20
# 0x3904
mflo $14
# 0x3908
nor $10 $23 $15
# 0x390c
srl $27 $31 16
# 0x3910
addiu $31 $15 31099
# 0x3914
addiu $9 $25 18073
# 0x3918
subu $10 $20 $16
# 0x391c
srl $12 $11 1
# 0x3920
sh $7 42($0)
# 0x3924
lhu $10 28($0)
# 0x3928
multu $20 $2
# 0x392c
lh $20 4($0)
# 0x3930
sw $10 8($0)
# 0x3934
sltiu $5 $16 9018
# 0x3938
sw $30 92($0)
# 0x393c
lb $10 11($0)
# 0x3940
sb $1 8($0)
# 0x3944
sw $15 40($0)
# 0x3948
addiu $17 $13 14072
# 0x394c
multu $23 $8
# 0x3950
subu $19 $20 $5
# 0x3954
sll $30 $25 5
# 0x3958
xor $18 $25 $14
# 0x395c
lbu $30 9($0)
# 0x3960
addu $31 $7 $5
# 0x3964
mfhi $5
# 0x3968
lhu $16 22($0)
# 0x396c
srav $31 $6 $19
# 0x3970
sll $25 $22 30
# 0x3974
and $4 $24 $11
# 0x3978
addiu $3 $31 2340
# 0x397c
lw $2 124($0)
# 0x3980
srl $9 $1 19
# 0x3984
sra $22 $25 26
# 0x3988
lhu $18 0($0)
# 0x398c
add $19 $9 $19
# 0x3990
lbu $26 13($0)
# 0x3994
or $19 $25 $4
# 0x3998
srlv $2 $21 $9
# 0x399c
mtlo $13
# 0x39a0
sh $13 14($0)
# 0x39a4
mflo $16
# 0x39a8
sb $1 22($0)
# 0x39ac
sb $5 6($0)
# 0x39b0
sub $11 $17 $7
# 0x39b4
sh $17 20($0)
# 0x39b8
slti $30 $11 32381
# 0x39bc
addu $6 $23 $24
# 0x39c0
srl $20 $24 1
# 0x39c4
srav $24 $2 $9
# 0x39c8
lh $3 44($0)
# 0x39cc
sra $26 $30 8
# 0x39d0
mthi $25
# 0x39d4
sll $14 $21 24
# 0x39d8
srlv $19 $8 $16
# 0x39dc
slt $19 $30 $6
# 0x39e0
multu $11 $20
# 0x39e4
lw $15 36($0)
# 0x39e8
mthi $4
# 0x39ec
sra $30 $18 7
# 0x39f0
mfhi $13
# 0x39f4
sh $13 42($0)
# 0x39f8
add $9 $19 $23
# 0x39fc
srl $5 $12 4
# 0x3a00
sub $19 $26 $7
# 0x3a04
sltiu $6 $16 22273
# 0x3a08
xor $21 $20 $6
# 0x3a0c
add $8 $21 $18
# 0x3a10
srlv $5 $26 $24
# 0x3a14
sra $7 $12 5
# 0x3a18
subu $23 $6 $20
# 0x3a1c
and $21 $22 $22
# 0x3a20
andi $9 $9 0xd5d4
# 0x3a24
lui $26 0x3d1c
# 0x3a28
addiu $1 $19 30882
# 0x3a2c
multu $10 $6
# 0x3a30
sh $13 36($0)
# 0x3a34
sltu $2 $13 $5
# 0x3a38
mfhi $19
# 0x3a3c
srlv $9 $30 $8
# 0x3a40
sw $6 80($0)
# 0x3a44
mtlo $1
# 0x3a48
sub $16 $8 $27
# 0x3a4c
srlv $2 $24 $23
# 0x3a50
sllv $5 $30 $30
# 0x3a54
multu $27 $20
# 0x3a58
srl $22 $21 7
# 0x3a5c
add $25 $23 $17
# 0x3a60
addiu $22 $25 27719
# 0x3a64
lh $9 36($0)
# 0x3a68
mtlo $12
# 0x3a6c
srav $11 $5 $6
# 0x3a70
xor $23 $1 $18
# 0x3a74
mflo $11
# 0x3a78
andi $30 $18 0x52c7
# 0x3a7c
and $2 $6 $26
# 0x3a80
srl $4 $1 29
# 0x3a84
sra $12 $9 18
# 0x3a88
lb $11 20($0)
# 0x3a8c
xor $15 $30 $24
# 0x3a90
andi $14 $26 0x8906
# 0x3a94
nor $13 $1 $4
# 0x3a98
mfhi $20
# 0x3a9c
srl $4 $20 6
# 0x3aa0
mthi $31
# 0x3aa4
mfhi $4
# 0x3aa8
or $26 $2 $24
# 0x3aac
lw $11 48($0)
# 0x3ab0
addu $4 $6 $24
# 0x3ab4
slti $8 $27 3201
# 0x3ab8
sb $1 11($0)
# 0x3abc
srav $2 $24 $20
# 0x3ac0
and $31 $16 $1
# 0x3ac4
sltiu $13 $26 11023
# 0x3ac8
srl $20 $3 12
# 0x3acc
sh $12 12($0)
# 0x3ad0
srl $13 $19 1
# 0x3ad4
srav $5 $23 $27
# 0x3ad8
or $16 $10 $15
# 0x3adc
srav $26 $23 $16
# 0x3ae0
mtlo $16
# 0x3ae4
lui $3 0xcc9b
# 0x3ae8
subu $18 $13 $16
# 0x3aec
and $20 $27 $14
# 0x3af0
sh $31 62($0)
# 0x3af4
xori $16 $2 0x6f6a
# 0x3af8
andi $22 $17 0xa3b6
# 0x3afc
and $24 $10 $18
# 0x3b00
lbu $1 10($0)
# 0x3b04
lh $26 28($0)
# 0x3b08
mthi $24
# 0x3b0c
andi $7 $8 0xda49
# 0x3b10
sltiu $30 $14 9506
# 0x3b14
nor $21 $12 $20
# 0x3b18
sltu $1 $6 $11
# 0x3b1c
lw $5 92($0)
# 0x3b20
xor $4 $18 $12
# 0x3b24
mfhi $6
# 0x3b28
srl $5 $19 24
# 0x3b2c
mult $22 $25
# 0x3b30
addiu $5 $23 27596
# 0x3b34
slt $20 $6 $21
# 0x3b38
ori $3 $12 0xbaa5
# 0x3b3c
srl $15 $31 16
# 0x3b40
sltu $13 $13 $1
# 0x3b44
addiu $11 $3 24456
# 0x3b48
sll $26 $31 0
# 0x3b4c
lbu $12 31($0)
# 0x3b50
lb $12 12($0)
# 0x3b54
slt $18 $30 $4
# 0x3b58
mfhi $23
# 0x3b5c
sltiu $22 $19 27278
# 0x3b60
slt $11 $4 $14
# 0x3b64
mflo $7
# 0x3b68
lui $3 0xbd4b
# 0x3b6c
sh $20 24($0)
# 0x3b70
sllv $14 $18 $6
# 0x3b74
sw $20 8($0)
# 0x3b78
mult $13 $17
# 0x3b7c
lb $27 27($0)
# 0x3b80
xor $20 $2 $15
# 0x3b84
sltu $15 $20 $19
# 0x3b88
mflo $9
# 0x3b8c
multu $4 $1
# 0x3b90
ori $2 $21 0x8a81
# 0x3b94
sllv $10 $26 $7
# 0x3b98
sw $27 12($0)
# 0x3b9c
srav $16 $7 $25
# 0x3ba0
and $30 $7 $5
# 0x3ba4
sh $2 14($0)
# 0x3ba8
slti $3 $6 22512
# 0x3bac
addiu $12 $13 10337
# 0x3bb0
sh $8 48($0)
# 0x3bb4
slt $30 $2 $11
# 0x3bb8
ori $19 $5 0x7e11
# 0x3bbc
srl $27 $10 14
# 0x3bc0
sra $18 $14 20
# 0x3bc4
lh $5 30($0)
# 0x3bc8
lh $5 2($0)
# 0x3bcc
addu $24 $1 $20
# 0x3bd0
subu $23 $18 $7
# 0x3bd4
multu $26 $11
# 0x3bd8
sltu $30 $31 $4
# 0x3bdc
srlv $9 $30 $12
# 0x3be0
lbu $22 10($0)
# 0x3be4
sllv $20 $14 $26
# 0x3be8
addiu $15 $21 9999
# 0x3bec
sub $10 $22 $23
# 0x3bf0
andi $15 $31 0x5142
# 0x3bf4
multu $9 $27
# 0x3bf8
xori $24 $15 0xf411
# 0x3bfc
multu $2 $23
# 0x3c00
mfhi $8
# 0x3c04
lbu $16 10($0)
# 0x3c08
sw $22 32($0)
# 0x3c0c
lb $30 18($0)
# 0x3c10
addu $12 $23 $5
# 0x3c14
srl $6 $19 9
# 0x3c18
lhu $20 4($0)
# 0x3c1c
lbu $18 4($0)
# 0x3c20
or $15 $3 $6
# 0x3c24
addu $18 $27 $16
# 0x3c28
lh $26 6($0)
# 0x3c2c
lb $7 22($0)
# 0x3c30
subu $30 $15 $1
# 0x3c34
sh $22 28($0)
# 0x3c38
subu $21 $18 $14
# 0x3c3c
slt $11 $24 $18
# 0x3c40
lui $26 0xeb00
# 0x3c44
slti $31 $22 27538
# 0x3c48
lhu $17 26($0)
# 0x3c4c
addiu $12 $18 9049
# 0x3c50
mult $2 $21
# 0x3c54
lw $8 8($0)
# 0x3c58
mfhi $20
# 0x3c5c
or $19 $13 $14
# 0x3c60
lh $15 6($0)
# 0x3c64
subu $23 $2 $17
# 0x3c68
lbu $26 6($0)
# 0x3c6c
sh $11 28($0)
# 0x3c70
sltu $9 $6 $12
# 0x3c74
mflo $27
# 0x3c78
mfhi $18
# 0x3c7c
sltiu $5 $17 28152
# 0x3c80
lw $15 60($0)
# 0x3c84
lbu $15 30($0)
# 0x3c88
sw $24 36($0)
# 0x3c8c
lbu $14 2($0)
# 0x3c90
lh $31 48($0)
# 0x3c94
lhu $8 26($0)
# 0x3c98
ori $1 $17 0x4909
# 0x3c9c
lh $9 0($0)
# 0x3ca0
nor $24 $16 $14
# 0x3ca4
mfhi $6
# 0x3ca8
addiu $2 $12 32291
# 0x3cac
lhu $1 14($0)
# 0x3cb0
ori $1 $14 0xa3ed
# 0x3cb4
mfhi $4
# 0x3cb8
mthi $31
# 0x3cbc
lb $12 10($0)
# 0x3cc0
lhu $27 18($0)
# 0x3cc4
sw $7 8($0)
# 0x3cc8
mflo $1
# 0x3ccc
sh $18 22($0)
# 0x3cd0
slt $23 $9 $5
# 0x3cd4
xori $13 $26 0xe56c
# 0x3cd8
sw $15 4($0)
# 0x3cdc
sltu $27 $18 $12
# 0x3ce0
mflo $16
# 0x3ce4
slt $13 $11 $5
# 0x3ce8
lbu $22 15($0)
# 0x3cec
lw $13 20($0)
# 0x3cf0
xori $4 $15 0xe1ba
# 0x3cf4
and $1 $13 $10
# 0x3cf8
sub $31 $10 $13
# 0x3cfc
mthi $17
# 0x3d00
srl $25 $14 17
# 0x3d04
ori $23 $25 0xe7c9
# 0x3d08
slt $25 $13 $8
# 0x3d0c
srlv $9 $8 $3
# 0x3d10
lw $26 28($0)
# 0x3d14
sb $12 11($0)
# 0x3d18
srav $21 $24 $9
# 0x3d1c
srav $10 $30 $12
# 0x3d20
mflo $6
# 0x3d24
srl $2 $1 11
# 0x3d28
andi $11 $19 0x4160
# 0x3d2c
add $26 $2 $13
# 0x3d30
mfhi $2
# 0x3d34
sw $5 4($0)
# 0x3d38
lbu $23 7($0)
# 0x3d3c
lw $11 28($0)
# 0x3d40
sub $15 $15 $10
# 0x3d44
sb $1 8($0)
# 0x3d48
lbu $22 15($0)
# 0x3d4c
lbu $17 28($0)
# 0x3d50
srlv $14 $13 $13
# 0x3d54
srl $21 $21 20
# 0x3d58
sltu $21 $25 $19
# 0x3d5c
addi $19 $14 -11884
# 0x3d60
lb $22 7($0)
# 0x3d64
lh $31 22($0)
# 0x3d68
sub $27 $13 $6
# 0x3d6c
mfhi $17
# 0x3d70
lhu $13 28($0)
# 0x3d74
lhu $16 14($0)
# 0x3d78
subu $22 $14 $6
# 0x3d7c
subu $15 $5 $31
# 0x3d80
ori $19 $11 0x2ab1
# 0x3d84
mfhi $15
# 0x3d88
srlv $10 $6 $1
# 0x3d8c
lw $1 4($0)
# 0x3d90
and $21 $13 $19
# 0x3d94
sb $10 29($0)
# 0x3d98
mfhi $19
# 0x3d9c
sb $6 2($0)
# 0x3da0
xor $2 $4 $14
# 0x3da4
mtlo $3
# 0x3da8
ori $3 $23 0xcd62
# 0x3dac
sh $13 18($0)
# 0x3db0
lb $1 31($0)
# 0x3db4
slti $9 $19 -10857
# 0x3db8
mult $6 $30
# 0x3dbc
xor $2 $30 $17
# 0x3dc0
sw $18 12($0)
# 0x3dc4
sh $12 54($0)
# 0x3dc8
lui $21 0x3633
# 0x3dcc
sltu $3 $18 $15
# 0x3dd0
sub $15 $14 $27
# 0x3dd4
sra $2 $23 0
# 0x3dd8
sll $16 $17 14
# 0x3ddc
sw $31 28($0)
# 0x3de0
sh $19 32($0)
# 0x3de4
multu $25 $18
# 0x3de8
subu $19 $5 $16
# 0x3dec
nor $25 $1 $17
# 0x3df0
multu $10 $13
# 0x3df4
sw $13 28($0)
# 0x3df8
sh $5 12($0)
# 0x3dfc
mthi $7
# 0x3e00
sltiu $17 $13 17568
# 0x3e04
sh $21 36($0)
# 0x3e08
multu $21 $18
# 0x3e0c
slt $24 $21 $1
# 0x3e10
subu $20 $18 $13
# 0x3e14
xor $17 $21 $5
# 0x3e18
add $11 $25 $31
# 0x3e1c
srl $2 $10 28
# 0x3e20
lh $1 44($0)
# 0x3e24
and $24 $4 $22
# 0x3e28
srl $9 $30 10
# 0x3e2c
lh $14 20($0)
# 0x3e30
sh $17 8($0)
# 0x3e34
lw $22 108($0)
# 0x3e38
subu $15 $5 $23
# 0x3e3c
sra $5 $2 12
# 0x3e40
lh $26 54($0)
# 0x3e44
mflo $3
# 0x3e48
lh $25 36($0)
# 0x3e4c
slti $14 $6 -6559
# 0x3e50
multu $6 $22
# 0x3e54
srl $15 $4 17
# 0x3e58
xori $3 $11 0xbc56
# 0x3e5c
addiu $23 $17 10186
# 0x3e60
nor $23 $23 $1
# 0x3e64
lw $26 0($0)
# 0x3e68
addu $18 $9 $12
# 0x3e6c
lh $27 8($0)
# 0x3e70
srl $1 $7 30
# 0x3e74
sw $25 12($0)
# 0x3e78
ori $6 $23 0xce13
# 0x3e7c
mflo $6
# 0x3e80
lhu $14 24($0)
# 0x3e84
lbu $1 10($0)
# 0x3e88
sltu $25 $18 $1
# 0x3e8c
sltu $3 $22 $6
# 0x3e90
srlv $16 $16 $4
# 0x3e94
sll $15 $26 20
# 0x3e98
sh $20 42($0)
# 0x3e9c
lbu $16 0($0)
# 0x3ea0
sll $7 $19 12
# 0x3ea4
addi $5 $8 -31479
# 0x3ea8
andi $19 $14 0xc122
# 0x3eac
subu $6 $15 $17
# 0x3eb0
multu $13 $16
# 0x3eb4
addiu $31 $4 29476
# 0x3eb8
and $16 $9 $16
# 0x3ebc
sh $21 0($0)
# 0x3ec0
sw $15 116($0)
# 0x3ec4
srlv $22 $15 $1
# 0x3ec8
lb $4 0($0)
# 0x3ecc
lbu $6 27($0)
# 0x3ed0
multu $18 $14
# 0x3ed4
andi $16 $18 0x6bc9
# 0x3ed8
or $30 $8 $13
# 0x3edc
and $13 $21 $9
# 0x3ee0
lh $14 44($0)
# 0x3ee4
srav $18 $9 $6
# 0x3ee8
slti $15 $3 17936
# 0x3eec
subu $11 $11 $16
# 0x3ef0
sw $17 80($0)
# 0x3ef4
lh $4 40($0)
# 0x3ef8
lhu $11 0($0)
# 0x3efc
sub $11 $11 $14
# 0x3f00
and $10 $30 $3
# 0x3f04
multu $10 $9
# 0x3f08
ori $6 $22 0x5efc
# 0x3f0c
and $13 $11 $17
# 0x3f10
nor $12 $21 $8
# 0x3f14
lh $12 46($0)
# 0x3f18
lui $9 0xa141
# 0x3f1c
mult $6 $5
# 0x3f20
sll $31 $7 8
# 0x3f24
slt $23 $27 $17
# 0x3f28
sh $11 36($0)
# 0x3f2c
sw $11 4($0)
# 0x3f30
sll $9 $20 29
# 0x3f34
or $3 $9 $14
# 0x3f38
add $25 $14 $25
# 0x3f3c
lui $17 0xf17b
# 0x3f40
and $15 $21 $19
# 0x3f44
multu $7 $21
# 0x3f48
lhu $12 18($0)
# 0x3f4c
xori $1 $17 0x8e89
# 0x3f50
lhu $19 4($0)
# 0x3f54
mthi $18
# 0x3f58
or $26 $5 $7
# 0x3f5c
sra $25 $24 13
# 0x3f60
nor $25 $18 $2
# 0x3f64
srl $30 $12 25
# 0x3f68
slti $31 $7 -23694
# 0x3f6c
lh $6 14($0)
# 0x3f70
sw $18 0($0)
# 0x3f74
or $9 $23 $30
# 0x3f78
lh $9 28($0)
# 0x3f7c
mult $20 $7
# 0x3f80
sh $17 14($0)
# 0x3f84
sltiu $22 $22 31190
# 0x3f88
sltu $9 $3 $4
# 0x3f8c
mfhi $5
# 0x3f90
xori $14 $10 0xc14d
# 0x3f94
lb $8 10($0)
# 0x3f98
sw $30 8($0)
# 0x3f9c
mfhi $17
# 0x3fa0
sltiu $4 $22 4371

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop