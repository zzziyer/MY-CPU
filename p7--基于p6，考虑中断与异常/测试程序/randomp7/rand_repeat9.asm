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
addi $5 $10 -25606
# 0x3008
sh $18 38($0)
# 0x300c
slti $19 $8 1485
# 0x3010
lhu $10 22($0)
# 0x3014
mfhi $8
# 0x3018
mtlo $30
# 0x301c
nor $21 $16 $25
# 0x3020
lhu $22 6($0)
# 0x3024
lh $23 26($0)
# 0x3028
multu $14 $17
# 0x302c
lb $12 22($0)
# 0x3030
sw $5 52($0)
# 0x3034
lw $15 4($0)
# 0x3038
sw $21 20($0)
# 0x303c
subu $15 $19 $2
# 0x3040
lb $5 13($0)
# 0x3044
lw $7 24($0)
# 0x3048
sb $24 9($0)
# 0x304c
sltu $22 $26 $6
# 0x3050
nor $4 $23 $22
# 0x3054
ori $8 $10 0xc5d2
# 0x3058
sh $3 12($0)
# 0x305c
nor $8 $20 $6
# 0x3060
addu $24 $26 $10
# 0x3064
sltiu $25 $11 7275
# 0x3068
addi $17 $11 20531
# 0x306c
sltu $26 $15 $17
# 0x3070
slti $4 $22 -18205
# 0x3074
add $15 $17 $30
# 0x3078
xor $11 $9 $25
# 0x307c
srav $25 $6 $22
# 0x3080
sb $10 28($0)
# 0x3084
sh $25 2($0)
# 0x3088
lbu $30 19($0)
# 0x308c
srlv $3 $7 $23
# 0x3090
mflo $3
# 0x3094
addu $1 $16 $26
# 0x3098
addu $7 $30 $15
# 0x309c
xori $4 $16 0x1902
# 0x30a0
lh $27 46($0)
# 0x30a4
add $16 $5 $7
# 0x30a8
and $7 $16 $21
# 0x30ac
add $18 $2 $8
# 0x30b0
mult $4 $16
# 0x30b4
lw $12 80($0)
# 0x30b8
sltiu $18 $26 23035
# 0x30bc
lbu $5 9($0)
# 0x30c0
slti $17 $22 30554
# 0x30c4
sb $17 9($0)
# 0x30c8
xori $5 $15 0xf3f9
# 0x30cc
nor $12 $17 $18
# 0x30d0
multu $3 $14
# 0x30d4
or $19 $6 $13
# 0x30d8
lhu $18 8($0)
# 0x30dc
mflo $11
# 0x30e0
lw $3 16($0)
# 0x30e4
lui $1 0xfab6
# 0x30e8
srlv $5 $8 $2
# 0x30ec
add $14 $17 $5
# 0x30f0
slti $15 $23 -24859
# 0x30f4
srav $4 $12 $21
# 0x30f8
sw $7 24($0)
# 0x30fc
slt $6 $15 $31
# 0x3100
add $6 $14 $11
# 0x3104
add $20 $15 $26
# 0x3108
sltiu $27 $23 31838
# 0x310c
xori $15 $2 0x39ef
# 0x3110
mthi $11
# 0x3114
mult $12 $13
# 0x3118
or $27 $12 $25
# 0x311c
lh $6 16($0)
# 0x3120
sh $1 28($0)
# 0x3124
lhu $13 2($0)
# 0x3128
slti $22 $5 18132
# 0x312c
mthi $25
# 0x3130
addi $3 $19 -3893
# 0x3134
sh $25 24($0)
# 0x3138
andi $25 $23 0x8b01
# 0x313c
mtlo $9
# 0x3140
srl $20 $22 4
# 0x3144
mthi $30
# 0x3148
sll $13 $15 2
# 0x314c
lbu $25 16($0)
# 0x3150
lui $5 0x8832
# 0x3154
sltiu $26 $12 19067
# 0x3158
mult $11 $1
# 0x315c
sra $10 $1 9
# 0x3160
sllv $27 $26 $17
# 0x3164
sltu $19 $14 $23
# 0x3168
multu $26 $1
# 0x316c
lbu $2 27($0)
# 0x3170
slt $20 $15 $16
# 0x3174
andi $30 $12 0x75c4
# 0x3178
slt $18 $14 $6
# 0x317c
subu $15 $15 $1
# 0x3180
lb $11 15($0)
# 0x3184
lh $22 46($0)
# 0x3188
add $6 $9 $7
# 0x318c
mthi $19
# 0x3190
sllv $6 $23 $17
# 0x3194
or $12 $31 $16
# 0x3198
sll $9 $23 12
# 0x319c
add $10 $24 $22
# 0x31a0
sra $25 $1 24
# 0x31a4
lh $22 30($0)
# 0x31a8
mthi $9
# 0x31ac
mfhi $15
# 0x31b0
sb $15 15($0)
# 0x31b4
lh $16 8($0)
# 0x31b8
mfhi $22
# 0x31bc
lb $1 23($0)
# 0x31c0
sltiu $5 $12 4388
# 0x31c4
addu $1 $15 $25
# 0x31c8
lw $17 0($0)
# 0x31cc
lbu $2 15($0)
# 0x31d0
mflo $5
# 0x31d4
srlv $19 $20 $9
# 0x31d8
multu $22 $14
# 0x31dc
xor $8 $12 $12
# 0x31e0
lw $7 32($0)
# 0x31e4
lh $10 18($0)
# 0x31e8
xor $14 $8 $16
# 0x31ec
lw $26 28($0)
# 0x31f0
addi $23 $5 -18607
# 0x31f4
sra $21 $15 31
# 0x31f8
lbu $13 10($0)
# 0x31fc
slti $5 $19 -565
# 0x3200
lb $8 3($0)
# 0x3204
mfhi $24
# 0x3208
srl $23 $14 17
# 0x320c
nor $20 $30 $26
# 0x3210
lui $7 0x792e
# 0x3214
mult $31 $14
# 0x3218
or $17 $23 $19
# 0x321c
sw $16 80($0)
# 0x3220
lhu $15 10($0)
# 0x3224
lui $25 0xfa12
# 0x3228
lw $10 16($0)
# 0x322c
srl $27 $12 15
# 0x3230
sra $14 $20 12
# 0x3234
slt $3 $25 $4
# 0x3238
srlv $20 $24 $4
# 0x323c
lui $4 0xcdb3
# 0x3240
lui $18 0x7a20
# 0x3244
sh $11 12($0)
# 0x3248
xori $31 $20 0x7529
# 0x324c
lbu $22 25($0)
# 0x3250
multu $7 $3
# 0x3254
sh $31 6($0)
# 0x3258
srl $19 $12 15
# 0x325c
nor $12 $6 $9
# 0x3260
sub $19 $26 $18
# 0x3264
srl $1 $3 2
# 0x3268
sllv $23 $11 $19
# 0x326c
mtlo $6
# 0x3270
xor $16 $27 $20
# 0x3274
lb $31 24($0)
# 0x3278
sra $6 $5 3
# 0x327c
mult $30 $6
# 0x3280
addi $23 $22 -16732
# 0x3284
sw $21 12($0)
# 0x3288
sltiu $2 $6 633
# 0x328c
xor $27 $20 $18
# 0x3290
sub $2 $1 $9
# 0x3294
sllv $20 $8 $20
# 0x3298
subu $7 $30 $11
# 0x329c
lh $4 62($0)
# 0x32a0
lui $2 0x89d5
# 0x32a4
andi $30 $10 0x7f4b
# 0x32a8
addiu $27 $12 19917
# 0x32ac
srav $18 $1 $9
# 0x32b0
lw $20 56($0)
# 0x32b4
or $19 $14 $9
# 0x32b8
slti $2 $16 -6450
# 0x32bc
lh $22 44($0)
# 0x32c0
addu $21 $18 $17
# 0x32c4
sub $4 $25 $7
# 0x32c8
srav $3 $10 $19
# 0x32cc
multu $20 $8
# 0x32d0
sll $4 $18 26
# 0x32d4
mflo $4
# 0x32d8
sw $25 48($0)
# 0x32dc
sllv $13 $13 $24
# 0x32e0
srav $20 $6 $4
# 0x32e4
mult $23 $1
# 0x32e8
lh $8 28($0)
# 0x32ec
sub $13 $3 $13
# 0x32f0
sw $4 4($0)
# 0x32f4
mflo $10
# 0x32f8
addu $30 $9 $19
# 0x32fc
mtlo $31
# 0x3300
sltiu $13 $9 24169
# 0x3304
ori $9 $6 0xe994
# 0x3308
andi $1 $19 0x044e
# 0x330c
and $25 $22 $8
# 0x3310
lw $11 116($0)
# 0x3314
sra $19 $18 17
# 0x3318
andi $22 $7 0xbdaa
# 0x331c
sllv $4 $14 $1
# 0x3320
sll $20 $3 3
# 0x3324
slt $14 $25 $18
# 0x3328
xor $25 $6 $11
# 0x332c
mult $30 $22
# 0x3330
ori $11 $14 0x7efc
# 0x3334
mult $5 $7
# 0x3338
addiu $24 $12 7744
# 0x333c
sll $13 $21 9
# 0x3340
slt $12 $1 $22
# 0x3344
addiu $13 $11 4991
# 0x3348
sra $13 $26 23
# 0x334c
sh $15 28($0)
# 0x3350
srlv $8 $13 $10
# 0x3354
ori $16 $20 0x2774
# 0x3358
slt $25 $25 $18
# 0x335c
srav $16 $14 $21
# 0x3360
addu $1 $31 $21
# 0x3364
or $20 $18 $15
# 0x3368
lhu $13 0($0)
# 0x336c
lw $27 0($0)
# 0x3370
addiu $30 $24 15750
# 0x3374
ori $14 $14 0x0879
# 0x3378
srl $25 $18 6
# 0x337c
subu $13 $21 $6
# 0x3380
sra $9 $2 19
# 0x3384
sll $17 $27 10
# 0x3388
mtlo $1
# 0x338c
lw $7 0($0)
# 0x3390
sb $25 29($0)
# 0x3394
mfhi $5
# 0x3398
xori $21 $7 0xd978
# 0x339c
sh $11 34($0)
# 0x33a0
xor $5 $17 $9
# 0x33a4
lh $21 12($0)
# 0x33a8
lw $13 12($0)
# 0x33ac
slt $8 $15 $6
# 0x33b0
sll $24 $15 23
# 0x33b4
ori $21 $22 0xf9dc
# 0x33b8
lbu $19 3($0)
# 0x33bc
slti $8 $3 8149
# 0x33c0
srl $25 $19 15
# 0x33c4
mthi $12
# 0x33c8
lbu $18 18($0)
# 0x33cc
andi $3 $3 0x0169
# 0x33d0
multu $3 $16
# 0x33d4
multu $1 $10
# 0x33d8
lbu $8 11($0)
# 0x33dc
addi $25 $26 15828
# 0x33e0
and $13 $25 $27
# 0x33e4
sra $19 $7 15
# 0x33e8
srlv $17 $2 $22
# 0x33ec
lhu $3 18($0)
# 0x33f0
ori $10 $23 0xde1e
# 0x33f4
lhu $4 0($0)
# 0x33f8
mtlo $31
# 0x33fc
sh $8 2($0)
# 0x3400
slti $12 $21 -7837
# 0x3404
slt $5 $24 $21
# 0x3408
lui $6 0x0fcd
# 0x340c
mult $15 $10
# 0x3410
srlv $30 $25 $16
# 0x3414
lw $11 20($0)
# 0x3418
sltiu $27 $23 15162
# 0x341c
and $11 $8 $11
# 0x3420
slt $8 $22 $5
# 0x3424
srlv $6 $23 $4
# 0x3428
mthi $14
# 0x342c
lb $31 9($0)
# 0x3430
multu $7 $26
# 0x3434
addu $12 $19 $30
# 0x3438
srl $8 $9 28
# 0x343c
mfhi $26
# 0x3440
slt $31 $11 $19
# 0x3444
subu $7 $11 $15
# 0x3448
lhu $17 24($0)
# 0x344c
sltu $19 $18 $24
# 0x3450
lh $6 30($0)
# 0x3454
sll $6 $30 2
# 0x3458
lui $5 0x6431
# 0x345c
and $14 $18 $14
# 0x3460
sra $14 $25 6
# 0x3464
and $31 $20 $31
# 0x3468
slt $14 $25 $24
# 0x346c
add $16 $20 $10
# 0x3470
nor $7 $25 $13
# 0x3474
sh $19 12($0)
# 0x3478
or $31 $6 $21
# 0x347c
add $16 $12 $20
# 0x3480
multu $14 $15
# 0x3484
sb $8 1($0)
# 0x3488
ori $15 $9 0x8303
# 0x348c
or $2 $4 $3
# 0x3490
mfhi $22
# 0x3494
xori $18 $26 0x42e3
# 0x3498
add $4 $13 $3
# 0x349c
lw $21 16($0)
# 0x34a0
sltu $1 $4 $23
# 0x34a4
mthi $3
# 0x34a8
sll $19 $24 19
# 0x34ac
sh $16 48($0)
# 0x34b0
multu $21 $5
# 0x34b4
sltu $14 $27 $25
# 0x34b8
slti $10 $8 18100
# 0x34bc
add $6 $19 $25
# 0x34c0
lw $16 124($0)
# 0x34c4
ori $5 $25 0x08a8
# 0x34c8
lh $21 50($0)
# 0x34cc
xori $9 $12 0x98fb
# 0x34d0
sltiu $1 $31 15784
# 0x34d4
sltu $15 $15 $21
# 0x34d8
sltiu $4 $21 31773
# 0x34dc
ori $24 $5 0xde2f
# 0x34e0
andi $2 $17 0x59fd
# 0x34e4
xor $8 $10 $6
# 0x34e8
srlv $22 $6 $31
# 0x34ec
sra $25 $10 9
# 0x34f0
sw $7 12($0)
# 0x34f4
xor $21 $22 $16
# 0x34f8
slti $8 $5 -10479
# 0x34fc
sllv $14 $1 $10
# 0x3500
subu $2 $15 $19
# 0x3504
sllv $7 $6 $24
# 0x3508
ori $9 $6 0x4c2a
# 0x350c
addiu $24 $10 23767
# 0x3510
addu $12 $5 $21
# 0x3514
sll $26 $14 22
# 0x3518
mult $4 $10
# 0x351c
slti $1 $25 -14395
# 0x3520
lw $7 20($0)
# 0x3524
slt $1 $12 $23
# 0x3528
addu $25 $30 $16
# 0x352c
mtlo $21
# 0x3530
sw $5 8($0)
# 0x3534
srl $31 $3 27
# 0x3538
lh $31 12($0)
# 0x353c
and $19 $13 $6
# 0x3540
sub $8 $2 $25
# 0x3544
ori $9 $6 0xa750
# 0x3548
lui $8 0xaf58
# 0x354c
lh $19 8($0)
# 0x3550
sh $22 12($0)
# 0x3554
lh $10 30($0)
# 0x3558
sra $20 $20 31
# 0x355c
sh $19 12($0)
# 0x3560
srl $17 $30 23
# 0x3564
lh $11 26($0)
# 0x3568
sll $25 $6 29
# 0x356c
lw $18 36($0)
# 0x3570
xor $18 $3 $3
# 0x3574
srav $27 $19 $17
# 0x3578
srav $6 $24 $31
# 0x357c
sltiu $5 $9 14712
# 0x3580
lh $16 0($0)
# 0x3584
and $23 $8 $25
# 0x3588
sltu $8 $10 $26
# 0x358c
sb $11 31($0)
# 0x3590
or $15 $4 $9
# 0x3594
add $27 $22 $2
# 0x3598
mtlo $20
# 0x359c
sltu $26 $27 $3
# 0x35a0
sra $31 $9 8
# 0x35a4
lb $2 26($0)
# 0x35a8
multu $3 $5
# 0x35ac
slti $19 $18 -27782
# 0x35b0
slt $22 $6 $24
# 0x35b4
slt $30 $5 $7
# 0x35b8
xor $8 $27 $15
# 0x35bc
sw $13 8($0)
# 0x35c0
lh $26 20($0)
# 0x35c4
lh $19 0($0)
# 0x35c8
srlv $31 $11 $31
# 0x35cc
andi $15 $18 0xeedc
# 0x35d0
lh $21 34($0)
# 0x35d4
slt $22 $18 $16
# 0x35d8
sw $11 24($0)
# 0x35dc
ori $27 $25 0xd7cd
# 0x35e0
lw $27 28($0)
# 0x35e4
sll $26 $16 2
# 0x35e8
mthi $30
# 0x35ec
sltiu $13 $10 17412
# 0x35f0
sw $30 44($0)
# 0x35f4
addu $11 $1 $6
# 0x35f8
addi $7 $30 22356
# 0x35fc
sh $15 2($0)
# 0x3600
sra $1 $6 16
# 0x3604
addi $23 $2 -25395
# 0x3608
xori $17 $3 0x967a
# 0x360c
and $31 $31 $5
# 0x3610
sra $27 $19 6
# 0x3614
lw $3 16($0)
# 0x3618
nor $30 $27 $10
# 0x361c
sw $18 112($0)
# 0x3620
sh $21 50($0)
# 0x3624
sh $21 22($0)
# 0x3628
sh $27 14($0)
# 0x362c
slti $7 $14 -22921
# 0x3630
andi $20 $1 0xb6b1
# 0x3634
lh $16 6($0)
# 0x3638
multu $9 $10
# 0x363c
subu $16 $14 $21
# 0x3640
nor $13 $22 $13
# 0x3644
sltu $17 $2 $9
# 0x3648
sltiu $9 $7 20005
# 0x364c
mult $20 $24
# 0x3650
mthi $2
# 0x3654
andi $21 $7 0xce96
# 0x3658
mfhi $10
# 0x365c
addu $22 $2 $25
# 0x3660
sw $9 112($0)
# 0x3664
lw $22 24($0)
# 0x3668
sw $5 0($0)
# 0x366c
sh $23 18($0)
# 0x3670
xori $25 $2 0xc4c0
# 0x3674
sw $2 4($0)
# 0x3678
xor $5 $5 $3
# 0x367c
subu $5 $5 $27
# 0x3680
sh $8 26($0)
# 0x3684
srlv $23 $15 $22
# 0x3688
multu $4 $19
# 0x368c
lb $23 28($0)
# 0x3690
srl $17 $14 5
# 0x3694
sltu $20 $25 $24
# 0x3698
slti $26 $10 -2713
# 0x369c
sub $11 $19 $6
# 0x36a0
mflo $9
# 0x36a4
addi $11 $12 20232
# 0x36a8
sb $21 6($0)
# 0x36ac
sh $21 26($0)
# 0x36b0
xori $10 $18 0x9397
# 0x36b4
sltiu $21 $10 27622
# 0x36b8
sub $27 $26 $16
# 0x36bc
or $30 $5 $13
# 0x36c0
xor $27 $31 $22
# 0x36c4
sub $7 $30 $11
# 0x36c8
subu $2 $1 $23
# 0x36cc
sb $21 0($0)
# 0x36d0
subu $20 $16 $1
# 0x36d4
sb $4 0($0)
# 0x36d8
srlv $25 $2 $25
# 0x36dc
add $19 $10 $22
# 0x36e0
or $24 $9 $30
# 0x36e4
sllv $23 $3 $8
# 0x36e8
lw $20 16($0)
# 0x36ec
or $16 $14 $5
# 0x36f0
sw $8 12($0)
# 0x36f4
andi $16 $22 0xc591
# 0x36f8
lw $31 64($0)
# 0x36fc
sh $5 24($0)
# 0x3700
addu $7 $6 $12
# 0x3704
multu $15 $2
# 0x3708
lh $15 42($0)
# 0x370c
sub $8 $6 $14
# 0x3710
xor $4 $31 $1
# 0x3714
nor $31 $11 $18
# 0x3718
slti $26 $27 9035
# 0x371c
sh $20 46($0)
# 0x3720
nor $12 $15 $19
# 0x3724
mflo $14
# 0x3728
sw $27 8($0)
# 0x372c
xor $31 $2 $12
# 0x3730
addi $30 $10 -5453
# 0x3734
slti $13 $25 26346
# 0x3738
lw $8 0($0)
# 0x373c
mflo $13
# 0x3740
sb $1 17($0)
# 0x3744
addiu $17 $26 14824
# 0x3748
sll $12 $23 31
# 0x374c
sh $30 56($0)
# 0x3750
sltu $27 $4 $24
# 0x3754
sw $16 96($0)
# 0x3758
mult $19 $3
# 0x375c
mflo $3
# 0x3760
add $15 $10 $21
# 0x3764
mthi $31
# 0x3768
sb $2 7($0)
# 0x376c
mflo $10
# 0x3770
xor $7 $8 $5
# 0x3774
slti $19 $10 1607
# 0x3778
slti $8 $14 8447
# 0x377c
subu $18 $22 $30
# 0x3780
nor $31 $11 $11
# 0x3784
sltu $13 $16 $2
# 0x3788
srlv $13 $27 $1
# 0x378c
srav $12 $15 $31
# 0x3790
srav $4 $13 $12
# 0x3794
lbu $24 7($0)
# 0x3798
or $13 $10 $26
# 0x379c
srav $7 $31 $24
# 0x37a0
lh $10 14($0)
# 0x37a4
mthi $5
# 0x37a8
addu $17 $9 $31
# 0x37ac
addiu $22 $13 17143
# 0x37b0
and $4 $4 $8
# 0x37b4
mtlo $14
# 0x37b8
sh $14 4($0)
# 0x37bc
sub $2 $10 $17
# 0x37c0
sra $22 $18 26
# 0x37c4
lhu $10 20($0)
# 0x37c8
multu $21 $13
# 0x37cc
lh $30 28($0)
# 0x37d0
nor $25 $16 $9
# 0x37d4
and $15 $10 $19
# 0x37d8
lui $17 0xfdbc
# 0x37dc
or $1 $9 $27
# 0x37e0
srlv $16 $13 $3
# 0x37e4
lbu $13 26($0)
# 0x37e8
lbu $25 10($0)
# 0x37ec
sllv $21 $17 $17
# 0x37f0
lw $12 28($0)
# 0x37f4
multu $12 $11
# 0x37f8
nor $8 $30 $27
# 0x37fc
lw $22 0($0)
# 0x3800
sw $8 52($0)
# 0x3804
sw $12 24($0)
# 0x3808
xor $26 $31 $23
# 0x380c
mthi $15
# 0x3810
lw $13 52($0)
# 0x3814
sub $6 $13 $14
# 0x3818
lui $3 0x7363
# 0x381c
lhu $25 12($0)
# 0x3820
xor $15 $14 $23
# 0x3824
mtlo $19
# 0x3828
add $26 $21 $8
# 0x382c
or $27 $2 $13
# 0x3830
sltiu $12 $25 18754
# 0x3834
lb $2 26($0)
# 0x3838
nor $23 $2 $9
# 0x383c
sw $15 20($0)
# 0x3840
mflo $26
# 0x3844
add $2 $26 $16
# 0x3848
sh $20 26($0)
# 0x384c
and $17 $2 $31
# 0x3850
sltu $4 $13 $20
# 0x3854
lw $4 24($0)
# 0x3858
sh $6 6($0)
# 0x385c
addi $27 $7 -3948
# 0x3860
multu $20 $25
# 0x3864
lui $27 0x37a5
# 0x3868
slt $26 $4 $4
# 0x386c
mfhi $7
# 0x3870
slt $13 $14 $6
# 0x3874
sh $2 10($0)
# 0x3878
sw $1 12($0)
# 0x387c
slti $7 $27 -17493
# 0x3880
lw $13 0($0)
# 0x3884
sub $24 $25 $19
# 0x3888
sll $14 $17 1
# 0x388c
lw $18 124($0)
# 0x3890
lbu $23 18($0)
# 0x3894
srl $27 $2 28
# 0x3898
mthi $15
# 0x389c
sltu $10 $18 $12
# 0x38a0
lbu $3 9($0)
# 0x38a4
nor $9 $9 $9
# 0x38a8
lh $2 36($0)
# 0x38ac
lui $30 0xbc58
# 0x38b0
sw $10 0($0)
# 0x38b4
addiu $12 $20 26575
# 0x38b8
nor $23 $31 $27
# 0x38bc
srav $13 $11 $10
# 0x38c0
mtlo $10
# 0x38c4
sw $1 16($0)
# 0x38c8
srl $6 $11 9
# 0x38cc
sb $3 0($0)
# 0x38d0
srl $20 $12 8
# 0x38d4
lh $16 2($0)
# 0x38d8
sra $11 $24 16
# 0x38dc
mult $10 $27
# 0x38e0
srlv $31 $12 $18
# 0x38e4
xori $27 $9 0xbab9
# 0x38e8
slti $12 $26 9457
# 0x38ec
srl $20 $1 28
# 0x38f0
lhu $1 8($0)
# 0x38f4
sw $13 4($0)
# 0x38f8
addu $7 $9 $14
# 0x38fc
sw $17 12($0)
# 0x3900
multu $27 $15
# 0x3904
xori $5 $30 0x0792
# 0x3908
and $26 $13 $9
# 0x390c
lbu $6 22($0)
# 0x3910
or $24 $9 $11
# 0x3914
slti $20 $3 23367
# 0x3918
sw $12 4($0)
# 0x391c
and $26 $25 $4
# 0x3920
sw $3 16($0)
# 0x3924
srav $3 $13 $30
# 0x3928
addi $25 $13 -15808
# 0x392c
slti $25 $3 21646
# 0x3930
lh $6 4($0)
# 0x3934
subu $18 $5 $12
# 0x3938
sltiu $7 $15 16138
# 0x393c
subu $16 $17 $15
# 0x3940
sh $1 32($0)
# 0x3944
or $27 $24 $27
# 0x3948
addiu $31 $15 15058
# 0x394c
mthi $7
# 0x3950
lw $5 92($0)
# 0x3954
slt $4 $22 $16
# 0x3958
mult $26 $2
# 0x395c
sll $8 $11 29
# 0x3960
sub $3 $12 $26
# 0x3964
srl $12 $22 13
# 0x3968
and $3 $19 $24
# 0x396c
addi $10 $26 26490
# 0x3970
sll $12 $13 26
# 0x3974
ori $30 $3 0x927a
# 0x3978
sw $2 48($0)
# 0x397c
mflo $27
# 0x3980
mfhi $17
# 0x3984
slt $20 $27 $26
# 0x3988
mfhi $6
# 0x398c
lbu $25 24($0)
# 0x3990
sw $30 0($0)
# 0x3994
sub $8 $17 $22
# 0x3998
xor $12 $1 $14
# 0x399c
sra $19 $23 11
# 0x39a0
mfhi $20
# 0x39a4
mfhi $9
# 0x39a8
sh $12 54($0)
# 0x39ac
lhu $20 4($0)
# 0x39b0
lw $19 100($0)
# 0x39b4
addi $22 $9 -19401
# 0x39b8
lbu $11 21($0)
# 0x39bc
lh $16 40($0)
# 0x39c0
slti $21 $14 29742
# 0x39c4
srl $2 $15 26
# 0x39c8
mthi $5
# 0x39cc
mtlo $26
# 0x39d0
lhu $24 12($0)
# 0x39d4
subu $2 $31 $31
# 0x39d8
lh $5 22($0)
# 0x39dc
xori $19 $2 0x5b8d
# 0x39e0
mtlo $27
# 0x39e4
srlv $24 $1 $7
# 0x39e8
lh $9 60($0)
# 0x39ec
sw $2 20($0)
# 0x39f0
sll $13 $20 5
# 0x39f4
sh $6 30($0)
# 0x39f8
nor $17 $16 $23
# 0x39fc
lh $21 2($0)
# 0x3a00
srlv $17 $6 $21
# 0x3a04
lbu $21 13($0)
# 0x3a08
srav $15 $13 $25
# 0x3a0c
sw $3 76($0)
# 0x3a10
sltu $9 $8 $12
# 0x3a14
srav $3 $21 $19
# 0x3a18
srlv $13 $25 $13
# 0x3a1c
slt $8 $3 $7
# 0x3a20
sllv $21 $25 $25
# 0x3a24
lb $11 26($0)
# 0x3a28
and $1 $19 $5
# 0x3a2c
srl $18 $14 29
# 0x3a30
lw $18 92($0)
# 0x3a34
sb $3 22($0)
# 0x3a38
mthi $1
# 0x3a3c
sb $12 1($0)
# 0x3a40
add $26 $4 $1
# 0x3a44
lb $6 30($0)
# 0x3a48
srav $22 $2 $5
# 0x3a4c
sra $16 $2 21
# 0x3a50
lhu $4 28($0)
# 0x3a54
sb $5 19($0)
# 0x3a58
addu $1 $7 $8
# 0x3a5c
subu $7 $31 $9
# 0x3a60
sltu $6 $5 $9
# 0x3a64
mthi $11
# 0x3a68
sra $25 $25 21
# 0x3a6c
ori $19 $10 0x9578
# 0x3a70
and $30 $25 $24
# 0x3a74
mflo $6
# 0x3a78
xori $26 $30 0x9540
# 0x3a7c
nor $9 $11 $22
# 0x3a80
slti $21 $22 21142
# 0x3a84
and $18 $16 $9
# 0x3a88
sltu $1 $24 $12
# 0x3a8c
sb $31 6($0)
# 0x3a90
addiu $18 $1 16
# 0x3a94
lh $18 4($0)
# 0x3a98
lh $16 52($0)
# 0x3a9c
or $11 $6 $14
# 0x3aa0
add $12 $5 $20
# 0x3aa4
addu $22 $22 $6
# 0x3aa8
addu $13 $7 $12
# 0x3aac
srl $2 $13 15
# 0x3ab0
sw $7 12($0)
# 0x3ab4
srl $15 $18 15
# 0x3ab8
srav $25 $3 $6
# 0x3abc
xor $30 $11 $6
# 0x3ac0
xor $7 $15 $6
# 0x3ac4
sllv $2 $9 $19
# 0x3ac8
mflo $17
# 0x3acc
addu $23 $30 $15
# 0x3ad0
mtlo $10
# 0x3ad4
mtlo $1
# 0x3ad8
srlv $10 $12 $25
# 0x3adc
andi $20 $27 0x161c
# 0x3ae0
sltu $9 $12 $27
# 0x3ae4
andi $18 $3 0xb901
# 0x3ae8
nor $5 $9 $23
# 0x3aec
lw $4 28($0)
# 0x3af0
lb $5 31($0)
# 0x3af4
mfhi $3
# 0x3af8
andi $10 $15 0x8fbd
# 0x3afc
add $9 $3 $10
# 0x3b00
nor $6 $18 $11
# 0x3b04
sh $15 26($0)
# 0x3b08
srav $14 $23 $18
# 0x3b0c
sh $1 8($0)
# 0x3b10
addi $20 $3 -29373
# 0x3b14
sra $23 $13 12
# 0x3b18
slti $13 $7 -30387
# 0x3b1c
nor $3 $24 $8
# 0x3b20
andi $2 $2 0xc5c4
# 0x3b24
ori $14 $20 0x1ad2
# 0x3b28
sra $20 $11 23
# 0x3b2c
lui $19 0xb522
# 0x3b30
sltu $4 $2 $31
# 0x3b34
sw $14 4($0)
# 0x3b38
sw $26 44($0)
# 0x3b3c
mtlo $20
# 0x3b40
sllv $18 $2 $16
# 0x3b44
mult $26 $1
# 0x3b48
sw $4 40($0)
# 0x3b4c
lbu $4 25($0)
# 0x3b50
srav $17 $10 $6
# 0x3b54
sltiu $2 $25 16842
# 0x3b58
srav $7 $4 $25
# 0x3b5c
andi $3 $23 0x7863
# 0x3b60
sltu $22 $27 $19
# 0x3b64
lb $30 18($0)
# 0x3b68
lb $10 24($0)
# 0x3b6c
addu $13 $26 $30
# 0x3b70
srl $15 $8 5
# 0x3b74
mult $5 $20
# 0x3b78
lui $22 0xd955
# 0x3b7c
sh $14 0($0)
# 0x3b80
sw $3 72($0)
# 0x3b84
mfhi $20
# 0x3b88
subu $13 $31 $30
# 0x3b8c
nor $20 $22 $3
# 0x3b90
mult $17 $9
# 0x3b94
multu $7 $9
# 0x3b98
sra $18 $23 9
# 0x3b9c
lui $13 0x642b
# 0x3ba0
slti $26 $17 -5965
# 0x3ba4
mthi $26
# 0x3ba8
addu $25 $17 $25
# 0x3bac
sltu $19 $25 $22
# 0x3bb0
sw $9 28($0)
# 0x3bb4
multu $1 $10
# 0x3bb8
mfhi $12
# 0x3bbc
mfhi $3
# 0x3bc0
lb $18 22($0)
# 0x3bc4
addi $20 $25 -23374
# 0x3bc8
srlv $12 $13 $27
# 0x3bcc
sll $3 $24 19
# 0x3bd0
or $16 $5 $19
# 0x3bd4
slt $24 $3 $8
# 0x3bd8
lhu $27 0($0)
# 0x3bdc
sll $30 $1 7
# 0x3be0
srl $6 $2 18
# 0x3be4
sra $13 $19 16
# 0x3be8
sll $23 $23 17
# 0x3bec
or $18 $6 $4
# 0x3bf0
mflo $31
# 0x3bf4
xori $1 $5 0x4141
# 0x3bf8
lh $12 58($0)
# 0x3bfc
sb $14 13($0)
# 0x3c00
sltu $22 $11 $9
# 0x3c04
subu $7 $13 $22
# 0x3c08
sll $7 $10 28
# 0x3c0c
sra $13 $3 5
# 0x3c10
lhu $27 12($0)
# 0x3c14
sb $31 24($0)
# 0x3c18
sh $20 28($0)
# 0x3c1c
mflo $8
# 0x3c20
srav $10 $13 $4
# 0x3c24
mthi $6
# 0x3c28
ori $16 $7 0x8b3d
# 0x3c2c
addi $22 $24 -20772
# 0x3c30
lui $16 0x3912
# 0x3c34
lb $3 16($0)
# 0x3c38
sh $10 24($0)
# 0x3c3c
lw $31 16($0)
# 0x3c40
srav $23 $18 $9
# 0x3c44
sub $15 $31 $14
# 0x3c48
mthi $1
# 0x3c4c
slt $14 $16 $13
# 0x3c50
sltu $26 $17 $1
# 0x3c54
sw $27 20($0)
# 0x3c58
add $19 $1 $7
# 0x3c5c
ori $19 $24 0xfec0
# 0x3c60
sb $24 18($0)
# 0x3c64
addi $17 $3 -17680
# 0x3c68
subu $26 $21 $8
# 0x3c6c
ori $6 $22 0x36aa
# 0x3c70
lw $8 48($0)
# 0x3c74
multu $16 $14
# 0x3c78
mflo $15
# 0x3c7c
srlv $25 $13 $20
# 0x3c80
and $16 $27 $23
# 0x3c84
sb $5 23($0)
# 0x3c88
xori $1 $2 0x154d
# 0x3c8c
sw $31 20($0)
# 0x3c90
mflo $20
# 0x3c94
ori $21 $9 0x3963
# 0x3c98
lbu $14 21($0)
# 0x3c9c
sub $21 $19 $10
# 0x3ca0
add $19 $6 $1
# 0x3ca4
sltu $31 $24 $27
# 0x3ca8
sltiu $4 $30 4215
# 0x3cac
mfhi $23
# 0x3cb0
slt $15 $3 $6
# 0x3cb4
lh $18 42($0)
# 0x3cb8
lw $3 20($0)
# 0x3cbc
srav $16 $17 $27
# 0x3cc0
sb $26 1($0)
# 0x3cc4
sw $7 16($0)
# 0x3cc8
lbu $7 6($0)
# 0x3ccc
sra $24 $16 24
# 0x3cd0
lh $12 28($0)
# 0x3cd4
sltu $21 $30 $27
# 0x3cd8
slti $22 $1 -16008
# 0x3cdc
sh $4 8($0)
# 0x3ce0
sb $18 25($0)
# 0x3ce4
mflo $23
# 0x3ce8
slt $23 $1 $24
# 0x3cec
lbu $10 1($0)
# 0x3cf0
sh $27 36($0)
# 0x3cf4
lui $22 0x900c
# 0x3cf8
and $24 $19 $20
# 0x3cfc
add $2 $31 $2
# 0x3d00
slti $13 $17 -24320
# 0x3d04
sra $5 $22 27
# 0x3d08
mtlo $15
# 0x3d0c
or $13 $23 $22
# 0x3d10
subu $19 $7 $8
# 0x3d14
or $14 $16 $21
# 0x3d18
subu $30 $12 $2
# 0x3d1c
lui $22 0x0750
# 0x3d20
nor $2 $20 $1
# 0x3d24
slt $1 $9 $19
# 0x3d28
sh $9 14($0)
# 0x3d2c
multu $16 $16
# 0x3d30
lh $25 28($0)
# 0x3d34
sb $21 23($0)
# 0x3d38
srav $4 $2 $22
# 0x3d3c
sllv $9 $31 $8
# 0x3d40
mfhi $14
# 0x3d44
sb $22 11($0)
# 0x3d48
lb $25 28($0)
# 0x3d4c
ori $27 $18 0xc39c
# 0x3d50
subu $14 $27 $1
# 0x3d54
lh $9 2($0)
# 0x3d58
sw $5 56($0)
# 0x3d5c
addi $4 $9 8150
# 0x3d60
sllv $12 $13 $19
# 0x3d64
add $15 $21 $15
# 0x3d68
lw $2 108($0)
# 0x3d6c
subu $30 $19 $25
# 0x3d70
sh $23 20($0)
# 0x3d74
sltu $9 $11 $30
# 0x3d78
slt $17 $6 $20
# 0x3d7c
mtlo $31
# 0x3d80
andi $17 $7 0xb97a
# 0x3d84
srav $11 $25 $18
# 0x3d88
slti $20 $5 -11235
# 0x3d8c
sub $31 $11 $24
# 0x3d90
srav $22 $1 $31
# 0x3d94
lh $25 20($0)
# 0x3d98
lh $13 8($0)
# 0x3d9c
srlv $4 $13 $17
# 0x3da0
addi $15 $3 -28065
# 0x3da4
lh $3 28($0)
# 0x3da8
sllv $22 $31 $3
# 0x3dac
lbu $19 6($0)
# 0x3db0
sw $8 8($0)
# 0x3db4
mthi $11
# 0x3db8
srav $19 $4 $20
# 0x3dbc
sra $12 $23 9
# 0x3dc0
sll $1 $10 10
# 0x3dc4
sllv $26 $17 $22
# 0x3dc8
mult $9 $4
# 0x3dcc
mfhi $27
# 0x3dd0
srl $27 $19 18
# 0x3dd4
sllv $23 $11 $10
# 0x3dd8
srlv $4 $16 $25
# 0x3ddc
addiu $13 $27 31955
# 0x3de0
mthi $15
# 0x3de4
and $9 $9 $23
# 0x3de8
nor $4 $27 $12
# 0x3dec
mfhi $3
# 0x3df0
slt $27 $4 $3
# 0x3df4
sltu $15 $5 $26
# 0x3df8
sb $15 20($0)
# 0x3dfc
sw $30 96($0)
# 0x3e00
lhu $13 14($0)
# 0x3e04
sra $7 $25 25
# 0x3e08
mthi $13
# 0x3e0c
mflo $22
# 0x3e10
sw $22 28($0)
# 0x3e14
srav $7 $31 $4
# 0x3e18
mult $21 $22
# 0x3e1c
mult $25 $1
# 0x3e20
lh $3 16($0)
# 0x3e24
sllv $24 $17 $25
# 0x3e28
and $11 $10 $7
# 0x3e2c
multu $21 $23
# 0x3e30
mflo $1
# 0x3e34
srlv $10 $17 $31
# 0x3e38
addiu $1 $17 2159
# 0x3e3c
srav $24 $6 $8
# 0x3e40
nor $11 $8 $14
# 0x3e44
sw $12 116($0)
# 0x3e48
multu $18 $4
# 0x3e4c
lw $9 8($0)
# 0x3e50
sh $26 32($0)
# 0x3e54
lh $3 32($0)
# 0x3e58
nor $10 $19 $26
# 0x3e5c
lh $11 22($0)
# 0x3e60
addu $30 $16 $25
# 0x3e64
addi $14 $22 8068
# 0x3e68
or $22 $13 $19
# 0x3e6c
lw $3 8($0)
# 0x3e70
mflo $31
# 0x3e74
andi $12 $12 0x5e11
# 0x3e78
sll $24 $4 17
# 0x3e7c
mult $10 $13
# 0x3e80
mflo $17
# 0x3e84
lw $25 88($0)
# 0x3e88
andi $3 $22 0x3100
# 0x3e8c
slti $1 $24 29546
# 0x3e90
mult $18 $30
# 0x3e94
lw $25 12($0)
# 0x3e98
sw $12 12($0)
# 0x3e9c
nor $11 $8 $31
# 0x3ea0
sb $2 24($0)
# 0x3ea4
lw $22 76($0)
# 0x3ea8
slti $11 $4 23435
# 0x3eac
srav $22 $30 $7
# 0x3eb0
or $24 $18 $16
# 0x3eb4
srl $19 $21 1
# 0x3eb8
lbu $8 3($0)
# 0x3ebc
add $7 $14 $3
# 0x3ec0
multu $24 $21
# 0x3ec4
addi $5 $26 26557
# 0x3ec8
sltiu $2 $13 19562
# 0x3ecc
sh $2 30($0)
# 0x3ed0
andi $16 $27 0x137a
# 0x3ed4
nor $21 $24 $5
# 0x3ed8
lui $22 0x1aee
# 0x3edc
addu $16 $23 $10
# 0x3ee0
sll $13 $25 26
# 0x3ee4
lh $10 10($0)
# 0x3ee8
sltiu $11 $1 23358
# 0x3eec
addiu $9 $18 3463
# 0x3ef0
sltu $19 $2 $17
# 0x3ef4
subu $2 $18 $2
# 0x3ef8
mult $6 $13
# 0x3efc
lui $4 0x2e9b
# 0x3f00
mfhi $13
# 0x3f04
sw $27 116($0)
# 0x3f08
srl $16 $20 4
# 0x3f0c
sltu $25 $3 $26
# 0x3f10
addi $24 $27 -15237
# 0x3f14
sltu $25 $10 $27
# 0x3f18
lw $17 112($0)
# 0x3f1c
lhu $8 12($0)
# 0x3f20
lw $5 28($0)
# 0x3f24
srl $24 $16 10
# 0x3f28
sh $11 24($0)
# 0x3f2c
lhu $26 28($0)
# 0x3f30
addu $21 $11 $7
# 0x3f34
srl $10 $23 31
# 0x3f38
nor $24 $26 $8
# 0x3f3c
mult $21 $25
# 0x3f40
nor $1 $2 $1
# 0x3f44
sh $30 46($0)
# 0x3f48
lh $14 10($0)
# 0x3f4c
lui $23 0xc57b
# 0x3f50
nor $21 $31 $12
# 0x3f54
lui $27 0x0040
# 0x3f58
ori $12 $21 0x365c
# 0x3f5c
lhu $5 16($0)
# 0x3f60
sra $25 $23 9
# 0x3f64
lhu $15 28($0)
# 0x3f68
lhu $10 28($0)
# 0x3f6c
mult $1 $30
# 0x3f70
sltu $4 $31 $20
# 0x3f74
sh $2 14($0)
# 0x3f78
lh $25 10($0)
# 0x3f7c
sw $6 16($0)
# 0x3f80
lw $3 28($0)
# 0x3f84
mthi $5
# 0x3f88
andi $10 $24 0x44a1
# 0x3f8c
addu $22 $19 $10
# 0x3f90
lbu $9 29($0)
# 0x3f94
add $30 $19 $2
# 0x3f98
sb $10 12($0)
# 0x3f9c
sra $5 $19 28
# 0x3fa0
add $27 $11 $11

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop