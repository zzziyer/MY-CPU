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
sb $9 6($0)
# 0x3008
andi $27 $30 0x9e5a
# 0x300c
sh $26 56($0)
# 0x3010
srl $18 $26 13
# 0x3014
lh $21 14($0)
# 0x3018
sh $12 34($0)
# 0x301c
lw $8 48($0)
# 0x3020
sw $9 76($0)
# 0x3024
lhu $12 24($0)
# 0x3028
mtlo $15
# 0x302c
lh $7 14($0)
# 0x3030
mult $20 $16
# 0x3034
sh $30 28($0)
# 0x3038
lh $2 22($0)
# 0x303c
addu $27 $4 $18
# 0x3040
srav $23 $9 $20
# 0x3044
lb $20 3($0)
# 0x3048
sw $4 20($0)
# 0x304c
mthi $25
# 0x3050
lb $2 18($0)
# 0x3054
sllv $7 $24 $8
# 0x3058
xor $13 $26 $27
# 0x305c
sh $25 34($0)
# 0x3060
slt $25 $16 $12
# 0x3064
mthi $14
# 0x3068
srlv $7 $7 $24
# 0x306c
lw $7 12($0)
# 0x3070
lhu $8 8($0)
# 0x3074
subu $30 $15 $15
# 0x3078
sw $25 84($0)
# 0x307c
mflo $23
# 0x3080
sw $7 4($0)
# 0x3084
ori $8 $13 0x855f
# 0x3088
srav $6 $1 $4
# 0x308c
mthi $15
# 0x3090
lh $27 8($0)
# 0x3094
sllv $12 $2 $12
# 0x3098
addu $19 $23 $13
# 0x309c
sh $25 4($0)
# 0x30a0
sllv $4 $27 $4
# 0x30a4
lh $17 16($0)
# 0x30a8
ori $1 $24 0x8204
# 0x30ac
mult $6 $12
# 0x30b0
sw $20 28($0)
# 0x30b4
andi $30 $23 0x932d
# 0x30b8
lui $27 0x280b
# 0x30bc
mthi $23
# 0x30c0
sll $8 $30 3
# 0x30c4
lw $8 12($0)
# 0x30c8
add $11 $17 $22
# 0x30cc
add $21 $27 $12
# 0x30d0
mfhi $6
# 0x30d4
lhu $7 16($0)
# 0x30d8
addi $19 $2 19488
# 0x30dc
lui $9 0x927f
# 0x30e0
add $11 $24 $9
# 0x30e4
mthi $22
# 0x30e8
slt $10 $6 $7
# 0x30ec
addu $1 $21 $21
# 0x30f0
sllv $6 $1 $2
# 0x30f4
ori $27 $6 0x406c
# 0x30f8
addi $9 $14 24750
# 0x30fc
slt $10 $12 $9
# 0x3100
add $27 $31 $7
# 0x3104
sh $1 10($0)
# 0x3108
xor $20 $2 $9
# 0x310c
sll $5 $8 24
# 0x3110
mthi $12
# 0x3114
sub $8 $25 $10
# 0x3118
lui $20 0x11ad
# 0x311c
mflo $7
# 0x3120
sltiu $11 $5 6425
# 0x3124
sllv $31 $26 $23
# 0x3128
or $7 $5 $10
# 0x312c
and $16 $23 $7
# 0x3130
sll $4 $23 11
# 0x3134
lbu $15 17($0)
# 0x3138
srav $7 $19 $31
# 0x313c
multu $1 $21
# 0x3140
lw $18 124($0)
# 0x3144
subu $31 $25 $5
# 0x3148
mtlo $7
# 0x314c
xori $18 $14 0xc341
# 0x3150
mthi $23
# 0x3154
sllv $7 $16 $23
# 0x3158
slti $23 $27 4319
# 0x315c
lb $13 29($0)
# 0x3160
sllv $17 $27 $7
# 0x3164
addu $2 $9 $16
# 0x3168
lh $7 50($0)
# 0x316c
and $19 $30 $25
# 0x3170
multu $31 $4
# 0x3174
sll $13 $2 26
# 0x3178
addiu $21 $1 17363
# 0x317c
addu $19 $31 $16
# 0x3180
srl $13 $6 26
# 0x3184
andi $11 $25 0x7aee
# 0x3188
srav $22 $10 $13
# 0x318c
mflo $27
# 0x3190
addi $4 $14 -6918
# 0x3194
xori $25 $14 0x10c0
# 0x3198
sb $26 20($0)
# 0x319c
srl $15 $19 3
# 0x31a0
or $3 $31 $8
# 0x31a4
lui $6 0x28aa
# 0x31a8
srl $30 $9 15
# 0x31ac
sltiu $7 $22 16707
# 0x31b0
andi $9 $3 0x8b5a
# 0x31b4
sll $23 $12 24
# 0x31b8
sub $20 $21 $5
# 0x31bc
mfhi $25
# 0x31c0
sra $4 $10 5
# 0x31c4
slt $7 $8 $19
# 0x31c8
sltu $3 $13 $13
# 0x31cc
srlv $30 $20 $18
# 0x31d0
andi $7 $8 0xc43c
# 0x31d4
mtlo $25
# 0x31d8
andi $14 $10 0xff75
# 0x31dc
mtlo $18
# 0x31e0
mthi $22
# 0x31e4
add $15 $18 $19
# 0x31e8
lh $21 10($0)
# 0x31ec
sub $27 $27 $30
# 0x31f0
or $10 $9 $13
# 0x31f4
nor $8 $22 $16
# 0x31f8
subu $13 $27 $10
# 0x31fc
addu $13 $7 $10
# 0x3200
slt $8 $31 $8
# 0x3204
slti $20 $18 -15791
# 0x3208
addiu $24 $19 11031
# 0x320c
or $9 $2 $14
# 0x3210
or $26 $30 $9
# 0x3214
sub $27 $3 $15
# 0x3218
sllv $6 $30 $6
# 0x321c
addi $19 $2 -5106
# 0x3220
slti $26 $24 -6905
# 0x3224
slt $20 $14 $3
# 0x3228
addu $4 $11 $7
# 0x322c
mthi $18
# 0x3230
lbu $23 0($0)
# 0x3234
lw $17 4($0)
# 0x3238
sh $14 28($0)
# 0x323c
lhu $1 10($0)
# 0x3240
srav $4 $6 $24
# 0x3244
lh $19 6($0)
# 0x3248
sw $12 112($0)
# 0x324c
lw $6 24($0)
# 0x3250
lbu $14 14($0)
# 0x3254
mflo $14
# 0x3258
sllv $31 $8 $15
# 0x325c
mult $11 $30
# 0x3260
xori $2 $20 0x172a
# 0x3264
lbu $20 12($0)
# 0x3268
slti $14 $5 -30869
# 0x326c
slti $30 $8 27616
# 0x3270
sh $18 12($0)
# 0x3274
sb $8 10($0)
# 0x3278
sltu $19 $3 $12
# 0x327c
sll $7 $22 12
# 0x3280
lh $5 38($0)
# 0x3284
sb $15 13($0)
# 0x3288
sub $5 $22 $1
# 0x328c
mult $14 $10
# 0x3290
sw $3 4($0)
# 0x3294
lh $15 50($0)
# 0x3298
lui $30 0xe70f
# 0x329c
mult $1 $6
# 0x32a0
lb $13 10($0)
# 0x32a4
mtlo $16
# 0x32a8
lui $11 0x0018
# 0x32ac
sw $2 68($0)
# 0x32b0
subu $13 $27 $23
# 0x32b4
slti $20 $10 -17739
# 0x32b8
mfhi $5
# 0x32bc
subu $20 $30 $19
# 0x32c0
mthi $27
# 0x32c4
sllv $15 $27 $7
# 0x32c8
mult $26 $20
# 0x32cc
ori $21 $7 0xd05e
# 0x32d0
slti $2 $22 -3150
# 0x32d4
mfhi $1
# 0x32d8
addi $18 $26 2530
# 0x32dc
sb $12 24($0)
# 0x32e0
srlv $8 $4 $30
# 0x32e4
lw $12 20($0)
# 0x32e8
sra $11 $3 20
# 0x32ec
sh $24 0($0)
# 0x32f0
slti $10 $24 -22811
# 0x32f4
xori $19 $11 0x20bb
# 0x32f8
srav $12 $14 $19
# 0x32fc
slt $8 $10 $27
# 0x3300
lw $5 0($0)
# 0x3304
xor $21 $26 $17
# 0x3308
sw $30 12($0)
# 0x330c
add $21 $15 $24
# 0x3310
xor $9 $1 $21
# 0x3314
sub $3 $16 $21
# 0x3318
lw $19 52($0)
# 0x331c
mtlo $3
# 0x3320
sh $24 22($0)
# 0x3324
slt $30 $25 $19
# 0x3328
sltiu $13 $6 27451
# 0x332c
sub $18 $17 $20
# 0x3330
sw $11 48($0)
# 0x3334
slti $9 $4 -26111
# 0x3338
sw $25 8($0)
# 0x333c
sb $3 18($0)
# 0x3340
lhu $10 12($0)
# 0x3344
add $4 $15 $26
# 0x3348
slt $26 $11 $14
# 0x334c
ori $6 $20 0x1470
# 0x3350
subu $31 $20 $24
# 0x3354
addi $2 $3 11133
# 0x3358
mthi $13
# 0x335c
xori $1 $15 0x596b
# 0x3360
xori $30 $18 0xed97
# 0x3364
sub $22 $6 $1
# 0x3368
lhu $8 18($0)
# 0x336c
xor $23 $30 $8
# 0x3370
sw $27 84($0)
# 0x3374
lh $9 30($0)
# 0x3378
addi $26 $3 9306
# 0x337c
mthi $8
# 0x3380
addu $8 $27 $10
# 0x3384
lui $18 0xfc79
# 0x3388
lw $15 4($0)
# 0x338c
sra $10 $9 25
# 0x3390
nor $9 $4 $10
# 0x3394
sllv $4 $14 $6
# 0x3398
sltu $22 $11 $5
# 0x339c
sw $5 92($0)
# 0x33a0
sh $7 32($0)
# 0x33a4
or $1 $19 $20
# 0x33a8
multu $15 $21
# 0x33ac
mthi $8
# 0x33b0
sb $11 6($0)
# 0x33b4
srav $23 $13 $13
# 0x33b8
lh $17 58($0)
# 0x33bc
addu $6 $19 $4
# 0x33c0
lbu $25 15($0)
# 0x33c4
addiu $13 $3 1668
# 0x33c8
add $12 $12 $31
# 0x33cc
sh $17 44($0)
# 0x33d0
and $1 $23 $7
# 0x33d4
slti $11 $6 -3114
# 0x33d8
lui $22 0xec39
# 0x33dc
mtlo $22
# 0x33e0
addi $22 $27 20308
# 0x33e4
sw $21 72($0)
# 0x33e8
lh $3 34($0)
# 0x33ec
sb $6 3($0)
# 0x33f0
mthi $24
# 0x33f4
and $9 $9 $12
# 0x33f8
add $5 $10 $27
# 0x33fc
andi $6 $15 0x20a7
# 0x3400
lui $13 0x110e
# 0x3404
sw $30 124($0)
# 0x3408
srlv $1 $8 $9
# 0x340c
slti $8 $15 -14725
# 0x3410
sltiu $11 $21 11657
# 0x3414
sh $5 6($0)
# 0x3418
sltiu $18 $12 1190
# 0x341c
sw $13 96($0)
# 0x3420
sub $2 $10 $31
# 0x3424
sw $15 28($0)
# 0x3428
srlv $10 $23 $26
# 0x342c
slti $26 $19 -19174
# 0x3430
lbu $11 19($0)
# 0x3434
sb $5 6($0)
# 0x3438
lh $17 16($0)
# 0x343c
xor $15 $12 $19
# 0x3440
sw $10 24($0)
# 0x3444
slti $22 $21 29753
# 0x3448
mult $23 $17
# 0x344c
xori $15 $3 0x4e0a
# 0x3450
mfhi $2
# 0x3454
lb $15 10($0)
# 0x3458
lh $10 6($0)
# 0x345c
sltu $2 $17 $11
# 0x3460
xor $12 $10 $15
# 0x3464
srlv $21 $12 $11
# 0x3468
lhu $5 4($0)
# 0x346c
mthi $11
# 0x3470
sllv $6 $2 $24
# 0x3474
mflo $8
# 0x3478
mflo $1
# 0x347c
subu $30 $30 $8
# 0x3480
sb $1 21($0)
# 0x3484
slti $10 $27 26007
# 0x3488
sh $20 26($0)
# 0x348c
ori $15 $12 0xa51e
# 0x3490
xor $7 $27 $31
# 0x3494
xor $23 $14 $26
# 0x3498
sltiu $3 $18 20393
# 0x349c
lh $22 18($0)
# 0x34a0
add $15 $7 $6
# 0x34a4
slt $7 $12 $1
# 0x34a8
srlv $18 $21 $22
# 0x34ac
sll $2 $15 0
# 0x34b0
sub $19 $17 $9
# 0x34b4
srav $22 $23 $20
# 0x34b8
sh $8 6($0)
# 0x34bc
lw $27 0($0)
# 0x34c0
lbu $9 0($0)
# 0x34c4
sh $2 52($0)
# 0x34c8
multu $19 $31
# 0x34cc
add $16 $14 $10
# 0x34d0
lw $11 36($0)
# 0x34d4
lh $2 20($0)
# 0x34d8
addi $16 $21 32670
# 0x34dc
and $24 $6 $25
# 0x34e0
sllv $14 $14 $3
# 0x34e4
and $18 $22 $25
# 0x34e8
and $24 $22 $7
# 0x34ec
sllv $19 $24 $5
# 0x34f0
lw $6 28($0)
# 0x34f4
sll $13 $26 19
# 0x34f8
mfhi $21
# 0x34fc
lui $23 0xa176
# 0x3500
and $3 $2 $25
# 0x3504
mtlo $1
# 0x3508
srl $12 $17 25
# 0x350c
sw $15 0($0)
# 0x3510
multu $22 $15
# 0x3514
sb $13 1($0)
# 0x3518
addu $3 $7 $24
# 0x351c
or $30 $8 $31
# 0x3520
addiu $31 $3 25515
# 0x3524
sra $2 $24 6
# 0x3528
mfhi $24
# 0x352c
mthi $21
# 0x3530
sub $15 $20 $15
# 0x3534
lw $27 4($0)
# 0x3538
sw $25 0($0)
# 0x353c
lb $8 10($0)
# 0x3540
lh $3 6($0)
# 0x3544
andi $21 $2 0x352b
# 0x3548
mtlo $11
# 0x354c
slt $25 $3 $3
# 0x3550
addu $4 $11 $19
# 0x3554
mthi $7
# 0x3558
srav $4 $16 $19
# 0x355c
slt $8 $25 $13
# 0x3560
slt $13 $8 $10
# 0x3564
slti $8 $22 -3241
# 0x3568
and $9 $4 $22
# 0x356c
srl $31 $25 5
# 0x3570
lhu $8 10($0)
# 0x3574
sb $2 3($0)
# 0x3578
sb $17 25($0)
# 0x357c
sw $24 4($0)
# 0x3580
andi $8 $23 0x1bd9
# 0x3584
mthi $24
# 0x3588
lhu $15 4($0)
# 0x358c
addu $17 $31 $15
# 0x3590
lw $13 40($0)
# 0x3594
slti $19 $30 -25499
# 0x3598
lb $17 8($0)
# 0x359c
sra $1 $5 2
# 0x35a0
lb $1 8($0)
# 0x35a4
lb $16 14($0)
# 0x35a8
or $11 $17 $14
# 0x35ac
srlv $20 $30 $17
# 0x35b0
lbu $30 25($0)
# 0x35b4
addi $5 $8 2080
# 0x35b8
xor $31 $30 $19
# 0x35bc
mult $25 $4
# 0x35c0
slti $31 $22 -18094
# 0x35c4
lw $14 20($0)
# 0x35c8
addu $27 $4 $2
# 0x35cc
or $30 $12 $7
# 0x35d0
srlv $1 $22 $3
# 0x35d4
and $27 $7 $11
# 0x35d8
srav $17 $11 $25
# 0x35dc
xor $4 $7 $17
# 0x35e0
slt $12 $20 $21
# 0x35e4
lw $18 12($0)
# 0x35e8
sll $2 $22 3
# 0x35ec
sw $13 24($0)
# 0x35f0
mflo $8
# 0x35f4
multu $31 $21
# 0x35f8
mflo $25
# 0x35fc
or $13 $21 $1
# 0x3600
sltiu $21 $11 19035
# 0x3604
sb $9 2($0)
# 0x3608
sllv $7 $12 $23
# 0x360c
xori $24 $7 0x0b10
# 0x3610
add $2 $11 $22
# 0x3614
sw $6 0($0)
# 0x3618
sb $14 9($0)
# 0x361c
or $12 $5 $1
# 0x3620
srav $17 $14 $30
# 0x3624
sb $8 14($0)
# 0x3628
srav $14 $18 $9
# 0x362c
lhu $23 26($0)
# 0x3630
slt $1 $2 $20
# 0x3634
srav $11 $1 $15
# 0x3638
multu $10 $6
# 0x363c
addu $13 $3 $24
# 0x3640
slt $12 $17 $13
# 0x3644
mfhi $27
# 0x3648
or $25 $31 $31
# 0x364c
sltu $9 $20 $21
# 0x3650
add $21 $26 $9
# 0x3654
srl $19 $12 10
# 0x3658
and $10 $3 $2
# 0x365c
xori $15 $7 0x7c2d
# 0x3660
sltiu $24 $30 24312
# 0x3664
lb $24 20($0)
# 0x3668
slti $20 $7 -8214
# 0x366c
addi $15 $26 10208
# 0x3670
nor $1 $25 $8
# 0x3674
addu $26 $27 $21
# 0x3678
add $7 $19 $7
# 0x367c
slt $1 $3 $9
# 0x3680
or $10 $24 $5
# 0x3684
lw $8 72($0)
# 0x3688
sll $27 $18 26
# 0x368c
sw $15 24($0)
# 0x3690
xor $4 $10 $12
# 0x3694
mtlo $4
# 0x3698
multu $16 $15
# 0x369c
addiu $15 $18 232
# 0x36a0
andi $14 $22 0x803d
# 0x36a4
slt $27 $19 $2
# 0x36a8
add $5 $5 $10
# 0x36ac
sltu $24 $18 $4
# 0x36b0
mthi $24
# 0x36b4
nor $3 $12 $27
# 0x36b8
multu $5 $20
# 0x36bc
sltiu $20 $30 4400
# 0x36c0
lh $18 50($0)
# 0x36c4
lw $7 0($0)
# 0x36c8
xor $8 $11 $30
# 0x36cc
mfhi $20
# 0x36d0
mult $2 $9
# 0x36d4
sw $21 8($0)
# 0x36d8
multu $27 $26
# 0x36dc
sltu $6 $19 $4
# 0x36e0
mult $31 $27
# 0x36e4
mfhi $31
# 0x36e8
lh $25 30($0)
# 0x36ec
sltiu $17 $5 24762
# 0x36f0
add $8 $17 $19
# 0x36f4
slt $13 $16 $12
# 0x36f8
mult $19 $16
# 0x36fc
sb $3 3($0)
# 0x3700
add $18 $1 $1
# 0x3704
andi $5 $12 0x2b90
# 0x3708
srav $1 $15 $5
# 0x370c
mflo $12
# 0x3710
sltiu $30 $9 31225
# 0x3714
sltiu $10 $16 20841
# 0x3718
lbu $8 3($0)
# 0x371c
mfhi $1
# 0x3720
sh $14 2($0)
# 0x3724
sltiu $18 $31 14513
# 0x3728
ori $13 $21 0xf4f8
# 0x372c
srl $19 $8 23
# 0x3730
mult $5 $15
# 0x3734
addi $25 $19 -12954
# 0x3738
lbu $25 30($0)
# 0x373c
sh $12 52($0)
# 0x3740
lw $3 100($0)
# 0x3744
nor $8 $3 $27
# 0x3748
mult $27 $1
# 0x374c
mtlo $16
# 0x3750
xor $30 $15 $19
# 0x3754
lbu $27 4($0)
# 0x3758
and $24 $30 $25
# 0x375c
andi $12 $1 0xa61e
# 0x3760
add $24 $20 $14
# 0x3764
lbu $11 14($0)
# 0x3768
slti $10 $3 -22185
# 0x376c
xori $25 $12 0xebcf
# 0x3770
addiu $22 $20 15173
# 0x3774
sb $18 1($0)
# 0x3778
sllv $13 $13 $16
# 0x377c
or $22 $24 $14
# 0x3780
sllv $18 $24 $13
# 0x3784
lw $5 96($0)
# 0x3788
xori $8 $23 0x2cf3
# 0x378c
lb $5 0($0)
# 0x3790
xor $20 $21 $14
# 0x3794
nor $25 $27 $26
# 0x3798
sllv $20 $11 $24
# 0x379c
addu $10 $5 $6
# 0x37a0
lw $15 124($0)
# 0x37a4
slti $18 $3 21736
# 0x37a8
sh $18 32($0)
# 0x37ac
sh $3 12($0)
# 0x37b0
sub $25 $10 $10
# 0x37b4
lh $19 4($0)
# 0x37b8
xor $20 $15 $1
# 0x37bc
nor $17 $23 $14
# 0x37c0
addiu $15 $7 19290
# 0x37c4
sh $22 0($0)
# 0x37c8
sb $17 2($0)
# 0x37cc
ori $3 $23 0xa80a
# 0x37d0
sh $18 22($0)
# 0x37d4
lw $31 12($0)
# 0x37d8
sw $5 20($0)
# 0x37dc
mthi $2
# 0x37e0
sh $24 22($0)
# 0x37e4
xor $27 $2 $14
# 0x37e8
sw $12 0($0)
# 0x37ec
lhu $4 16($0)
# 0x37f0
sh $16 30($0)
# 0x37f4
lb $27 18($0)
# 0x37f8
nor $15 $11 $22
# 0x37fc
srl $14 $30 18
# 0x3800
subu $19 $8 $3
# 0x3804
lw $19 112($0)
# 0x3808
mfhi $7
# 0x380c
mflo $30
# 0x3810
sub $9 $18 $17
# 0x3814
or $10 $9 $2
# 0x3818
slti $12 $3 -9731
# 0x381c
lb $30 16($0)
# 0x3820
lw $20 12($0)
# 0x3824
sw $6 96($0)
# 0x3828
sub $12 $9 $20
# 0x382c
lh $31 4($0)
# 0x3830
and $10 $9 $19
# 0x3834
slt $21 $13 $12
# 0x3838
lhu $25 8($0)
# 0x383c
mult $11 $19
# 0x3840
mflo $11
# 0x3844
lui $8 0x8cc7
# 0x3848
sll $20 $25 1
# 0x384c
or $2 $10 $21
# 0x3850
ori $14 $23 0x170e
# 0x3854
addi $11 $24 18651
# 0x3858
or $12 $9 $18
# 0x385c
mfhi $5
# 0x3860
lh $15 2($0)
# 0x3864
subu $8 $4 $1
# 0x3868
srl $9 $13 24
# 0x386c
lw $21 92($0)
# 0x3870
subu $17 $12 $17
# 0x3874
slt $22 $30 $26
# 0x3878
sh $11 56($0)
# 0x387c
addiu $30 $4 31068
# 0x3880
add $7 $13 $1
# 0x3884
sb $17 0($0)
# 0x3888
sub $12 $25 $10
# 0x388c
addu $20 $20 $31
# 0x3890
lb $18 9($0)
# 0x3894
sltiu $2 $17 403
# 0x3898
addiu $30 $3 30318
# 0x389c
mfhi $11
# 0x38a0
sltu $8 $19 $11
# 0x38a4
subu $27 $15 $15
# 0x38a8
sw $1 0($0)
# 0x38ac
lb $16 9($0)
# 0x38b0
ori $6 $4 0xa2e2
# 0x38b4
sltiu $27 $16 7503
# 0x38b8
mult $31 $4
# 0x38bc
slt $6 $18 $14
# 0x38c0
addu $14 $3 $10
# 0x38c4
sll $22 $1 12
# 0x38c8
subu $14 $23 $30
# 0x38cc
lui $18 0x2f37
# 0x38d0
lw $21 8($0)
# 0x38d4
sltiu $27 $15 23486
# 0x38d8
lw $15 20($0)
# 0x38dc
mfhi $30
# 0x38e0
mthi $21
# 0x38e4
mult $2 $11
# 0x38e8
addiu $21 $7 25293
# 0x38ec
andi $7 $9 0x8ef3
# 0x38f0
lh $22 30($0)
# 0x38f4
xor $26 $18 $7
# 0x38f8
sub $8 $12 $27
# 0x38fc
sltu $27 $6 $11
# 0x3900
andi $8 $22 0xf4bf
# 0x3904
or $9 $25 $3
# 0x3908
and $3 $13 $15
# 0x390c
srl $20 $24 5
# 0x3910
multu $19 $17
# 0x3914
lw $3 88($0)
# 0x3918
sub $24 $13 $2
# 0x391c
and $8 $11 $26
# 0x3920
sb $13 20($0)
# 0x3924
sllv $6 $11 $15
# 0x3928
sltiu $31 $26 4233
# 0x392c
lw $6 12($0)
# 0x3930
lhu $30 24($0)
# 0x3934
andi $31 $13 0x8680
# 0x3938
lbu $3 29($0)
# 0x393c
mflo $11
# 0x3940
sb $12 30($0)
# 0x3944
lh $12 48($0)
# 0x3948
addi $7 $7 12869
# 0x394c
lh $31 22($0)
# 0x3950
lw $8 80($0)
# 0x3954
lh $30 16($0)
# 0x3958
lw $13 16($0)
# 0x395c
sw $1 12($0)
# 0x3960
mthi $13
# 0x3964
mult $19 $13
# 0x3968
or $15 $30 $21
# 0x396c
lh $5 10($0)
# 0x3970
sb $25 5($0)
# 0x3974
addu $8 $3 $27
# 0x3978
mthi $25
# 0x397c
sltu $23 $1 $1
# 0x3980
sw $9 112($0)
# 0x3984
slt $7 $15 $20
# 0x3988
sll $30 $14 4
# 0x398c
lui $1 0x4b6b
# 0x3990
sra $30 $12 24
# 0x3994
lw $26 8($0)
# 0x3998
sb $3 7($0)
# 0x399c
lui $10 0x87e4
# 0x39a0
andi $12 $13 0xc9c2
# 0x39a4
lh $22 12($0)
# 0x39a8
or $30 $4 $19
# 0x39ac
lhu $5 10($0)
# 0x39b0
addiu $19 $17 21971
# 0x39b4
sh $2 30($0)
# 0x39b8
lbu $7 11($0)
# 0x39bc
lb $13 3($0)
# 0x39c0
sw $11 12($0)
# 0x39c4
addu $16 $13 $11
# 0x39c8
lh $7 14($0)
# 0x39cc
addi $6 $31 -30798
# 0x39d0
ori $16 $3 0xc129
# 0x39d4
srav $22 $30 $25
# 0x39d8
sw $18 96($0)
# 0x39dc
lbu $8 27($0)
# 0x39e0
lbu $20 13($0)
# 0x39e4
xor $19 $20 $22
# 0x39e8
xori $30 $20 0x2476
# 0x39ec
addi $2 $18 31769
# 0x39f0
mtlo $3
# 0x39f4
sll $24 $16 26
# 0x39f8
srlv $24 $26 $22
# 0x39fc
subu $2 $27 $31
# 0x3a00
addu $22 $1 $5
# 0x3a04
and $19 $21 $4
# 0x3a08
multu $7 $18
# 0x3a0c
lw $16 84($0)
# 0x3a10
nor $25 $8 $26
# 0x3a14
sltu $27 $30 $11
# 0x3a18
subu $5 $4 $3
# 0x3a1c
lh $31 16($0)
# 0x3a20
lw $16 16($0)
# 0x3a24
nor $24 $30 $19
# 0x3a28
srlv $13 $9 $27
# 0x3a2c
addi $30 $24 7436
# 0x3a30
lh $9 2($0)
# 0x3a34
sb $18 30($0)
# 0x3a38
addu $31 $11 $27
# 0x3a3c
addiu $5 $1 21999
# 0x3a40
lui $20 0xd2d5
# 0x3a44
sllv $20 $19 $10
# 0x3a48
lh $18 36($0)
# 0x3a4c
andi $8 $19 0x5a5b
# 0x3a50
xori $16 $25 0xaf19
# 0x3a54
slt $16 $17 $7
# 0x3a58
mfhi $20
# 0x3a5c
add $8 $20 $8
# 0x3a60
srl $31 $15 25
# 0x3a64
and $8 $8 $1
# 0x3a68
add $21 $17 $10
# 0x3a6c
lb $25 9($0)
# 0x3a70
lw $31 16($0)
# 0x3a74
mtlo $11
# 0x3a78
lb $27 17($0)
# 0x3a7c
andi $1 $21 0x4cdb
# 0x3a80
and $7 $1 $23
# 0x3a84
srav $7 $12 $16
# 0x3a88
mfhi $26
# 0x3a8c
sllv $13 $12 $27
# 0x3a90
srl $12 $27 13
# 0x3a94
addiu $26 $21 13497
# 0x3a98
and $22 $20 $9
# 0x3a9c
sll $19 $19 4
# 0x3aa0
mfhi $21
# 0x3aa4
sra $12 $16 4
# 0x3aa8
sub $8 $18 $26
# 0x3aac
sw $18 8($0)
# 0x3ab0
addiu $18 $27 23576
# 0x3ab4
sw $17 0($0)
# 0x3ab8
srl $10 $21 0
# 0x3abc
sltu $19 $20 $20
# 0x3ac0
addi $11 $16 11577
# 0x3ac4
sh $14 56($0)
# 0x3ac8
mflo $2
# 0x3acc
mthi $21
# 0x3ad0
addu $4 $3 $15
# 0x3ad4
sltu $26 $10 $7
# 0x3ad8
sw $3 4($0)
# 0x3adc
lw $14 12($0)
# 0x3ae0
andi $8 $14 0x97f4
# 0x3ae4
xori $8 $4 0x9e62
# 0x3ae8
xori $30 $10 0x251e
# 0x3aec
xori $11 $9 0x3504
# 0x3af0
srav $12 $21 $7
# 0x3af4
sw $27 20($0)
# 0x3af8
lui $27 0x9e29
# 0x3afc
sltu $12 $18 $12
# 0x3b00
srl $31 $16 31
# 0x3b04
sltiu $15 $21 8851
# 0x3b08
nor $18 $22 $5
# 0x3b0c
addi $9 $17 -12632
# 0x3b10
srl $2 $10 21
# 0x3b14
multu $17 $18
# 0x3b18
subu $27 $9 $21
# 0x3b1c
multu $25 $30
# 0x3b20
ori $2 $9 0x68c3
# 0x3b24
subu $19 $16 $15
# 0x3b28
sllv $22 $27 $9
# 0x3b2c
lw $18 28($0)
# 0x3b30
sh $26 30($0)
# 0x3b34
sub $20 $8 $19
# 0x3b38
sltiu $13 $6 31174
# 0x3b3c
srlv $3 $22 $23
# 0x3b40
sub $12 $19 $31
# 0x3b44
nor $15 $23 $2
# 0x3b48
sltiu $17 $2 2905
# 0x3b4c
sra $3 $20 31
# 0x3b50
lhu $3 24($0)
# 0x3b54
xori $31 $23 0xf758
# 0x3b58
sra $6 $1 16
# 0x3b5c
mthi $1
# 0x3b60
lb $5 18($0)
# 0x3b64
sb $24 20($0)
# 0x3b68
sw $3 28($0)
# 0x3b6c
sltu $6 $30 $7
# 0x3b70
srav $17 $13 $13
# 0x3b74
addu $16 $20 $21
# 0x3b78
ori $10 $11 0xc177
# 0x3b7c
mtlo $31
# 0x3b80
addi $4 $16 7474
# 0x3b84
mfhi $7
# 0x3b88
lbu $31 30($0)
# 0x3b8c
lb $26 26($0)
# 0x3b90
multu $16 $21
# 0x3b94
lb $11 1($0)
# 0x3b98
lui $7 0x9553
# 0x3b9c
sh $12 54($0)
# 0x3ba0
andi $10 $14 0x9cad
# 0x3ba4
slti $1 $22 7959
# 0x3ba8
lui $14 0xef38
# 0x3bac
mtlo $4
# 0x3bb0
addi $25 $7 13545
# 0x3bb4
andi $16 $15 0xe74b
# 0x3bb8
mfhi $15
# 0x3bbc
multu $26 $17
# 0x3bc0
sw $21 124($0)
# 0x3bc4
lw $2 0($0)
# 0x3bc8
mthi $19
# 0x3bcc
add $20 $30 $11
# 0x3bd0
subu $22 $26 $24
# 0x3bd4
sllv $3 $15 $7
# 0x3bd8
sltiu $5 $20 7058
# 0x3bdc
nor $7 $16 $2
# 0x3be0
lb $15 7($0)
# 0x3be4
sltu $16 $23 $12
# 0x3be8
srl $19 $21 16
# 0x3bec
mtlo $4
# 0x3bf0
mflo $3
# 0x3bf4
mflo $2
# 0x3bf8
sltu $13 $19 $5
# 0x3bfc
mthi $20
# 0x3c00
sw $4 8($0)
# 0x3c04
subu $12 $15 $7
# 0x3c08
sub $27 $22 $17
# 0x3c0c
nor $17 $8 $7
# 0x3c10
xori $23 $3 0xaa86
# 0x3c14
sh $10 18($0)
# 0x3c18
subu $4 $19 $16
# 0x3c1c
lh $11 30($0)
# 0x3c20
xori $24 $19 0x7b9a
# 0x3c24
sh $23 0($0)
# 0x3c28
slti $1 $20 23965
# 0x3c2c
sb $3 16($0)
# 0x3c30
lhu $5 2($0)
# 0x3c34
mult $4 $26
# 0x3c38
lw $2 4($0)
# 0x3c3c
sw $13 12($0)
# 0x3c40
sw $7 120($0)
# 0x3c44
subu $27 $15 $5
# 0x3c48
slti $30 $6 -6157
# 0x3c4c
lh $19 14($0)
# 0x3c50
ori $19 $21 0x46cb
# 0x3c54
and $17 $30 $19
# 0x3c58
mult $25 $6
# 0x3c5c
srl $14 $31 21
# 0x3c60
sltiu $23 $2 14010
# 0x3c64
lw $26 4($0)
# 0x3c68
andi $26 $2 0xb671
# 0x3c6c
xori $8 $19 0xa49a
# 0x3c70
srlv $6 $23 $25
# 0x3c74
addiu $25 $15 23462
# 0x3c78
or $4 $12 $23
# 0x3c7c
lui $9 0x71bf
# 0x3c80
slt $16 $30 $1
# 0x3c84
srav $3 $6 $14
# 0x3c88
xor $23 $15 $10
# 0x3c8c
sll $27 $24 13
# 0x3c90
sw $2 0($0)
# 0x3c94
ori $18 $27 0xf40e
# 0x3c98
multu $11 $20
# 0x3c9c
lw $31 20($0)
# 0x3ca0
addu $6 $5 $4
# 0x3ca4
srl $18 $23 19
# 0x3ca8
lw $8 24($0)
# 0x3cac
lw $23 12($0)
# 0x3cb0
sh $12 12($0)
# 0x3cb4
subu $9 $19 $7
# 0x3cb8
sh $17 12($0)
# 0x3cbc
and $10 $19 $21
# 0x3cc0
lw $6 16($0)
# 0x3cc4
or $9 $26 $1
# 0x3cc8
sll $24 $21 10
# 0x3ccc
mfhi $17
# 0x3cd0
lhu $18 10($0)
# 0x3cd4
srl $2 $17 6
# 0x3cd8
sw $4 36($0)
# 0x3cdc
sltiu $19 $16 2136
# 0x3ce0
mfhi $2
# 0x3ce4
nor $2 $27 $10
# 0x3ce8
sub $21 $19 $7
# 0x3cec
sra $12 $23 2
# 0x3cf0
slti $15 $14 -280
# 0x3cf4
srlv $13 $11 $12
# 0x3cf8
sll $27 $24 9
# 0x3cfc
ori $15 $10 0x5e7e
# 0x3d00
sh $9 6($0)
# 0x3d04
mthi $23
# 0x3d08
sw $23 12($0)
# 0x3d0c
mfhi $8
# 0x3d10
mfhi $11
# 0x3d14
sllv $11 $6 $13
# 0x3d18
or $6 $30 $17
# 0x3d1c
addi $7 $11 30081
# 0x3d20
lhu $30 24($0)
# 0x3d24
mthi $10
# 0x3d28
sw $4 112($0)
# 0x3d2c
sra $4 $19 28
# 0x3d30
addiu $1 $10 8637
# 0x3d34
and $3 $30 $25
# 0x3d38
mfhi $8
# 0x3d3c
sw $1 20($0)
# 0x3d40
and $6 $14 $17
# 0x3d44
or $11 $17 $23
# 0x3d48
sw $1 20($0)
# 0x3d4c
multu $2 $5
# 0x3d50
sltu $27 $9 $14
# 0x3d54
sw $18 116($0)
# 0x3d58
lw $9 16($0)
# 0x3d5c
srl $5 $15 28
# 0x3d60
sh $21 16($0)
# 0x3d64
nor $17 $19 $11
# 0x3d68
and $10 $13 $27
# 0x3d6c
multu $26 $30
# 0x3d70
mflo $5
# 0x3d74
lbu $17 4($0)
# 0x3d78
sw $17 88($0)
# 0x3d7c
slti $12 $11 7250
# 0x3d80
sltiu $18 $8 13718
# 0x3d84
or $23 $30 $19
# 0x3d88
lui $3 0xdbd5
# 0x3d8c
sh $1 14($0)
# 0x3d90
lw $6 68($0)
# 0x3d94
xori $4 $10 0xd2b7
# 0x3d98
and $10 $7 $9
# 0x3d9c
sh $14 0($0)
# 0x3da0
slt $15 $11 $5
# 0x3da4
lw $23 52($0)
# 0x3da8
sb $25 5($0)
# 0x3dac
lw $25 92($0)
# 0x3db0
lh $24 8($0)
# 0x3db4
mflo $5
# 0x3db8
and $19 $10 $3
# 0x3dbc
sllv $18 $23 $4
# 0x3dc0
sw $17 4($0)
# 0x3dc4
addu $13 $24 $12
# 0x3dc8
sh $5 14($0)
# 0x3dcc
mflo $27
# 0x3dd0
srlv $1 $4 $1
# 0x3dd4
sw $2 20($0)
# 0x3dd8
srlv $2 $11 $19
# 0x3ddc
addu $13 $1 $19
# 0x3de0
sltu $16 $12 $9
# 0x3de4
sltu $19 $14 $15
# 0x3de8
add $17 $14 $30
# 0x3dec
sub $8 $16 $7
# 0x3df0
mflo $4
# 0x3df4
sub $10 $2 $16
# 0x3df8
andi $13 $9 0x7198
# 0x3dfc
sra $19 $19 29
# 0x3e00
mfhi $7
# 0x3e04
mult $4 $11
# 0x3e08
ori $25 $9 0x604a
# 0x3e0c
lw $13 124($0)
# 0x3e10
addu $5 $8 $11
# 0x3e14
lw $23 8($0)
# 0x3e18
slt $19 $22 $10
# 0x3e1c
sltiu $10 $18 6256
# 0x3e20
srl $4 $6 27
# 0x3e24
subu $8 $10 $13
# 0x3e28
lui $31 0x69f0
# 0x3e2c
mult $19 $27
# 0x3e30
addiu $11 $4 8529
# 0x3e34
srlv $18 $21 $12
# 0x3e38
mfhi $9
# 0x3e3c
slt $26 $19 $3
# 0x3e40
srl $17 $26 13
# 0x3e44
sh $23 56($0)
# 0x3e48
sltu $12 $22 $26
# 0x3e4c
sh $31 40($0)
# 0x3e50
subu $7 $8 $15
# 0x3e54
xori $19 $20 0x47d8
# 0x3e58
sra $17 $27 9
# 0x3e5c
lh $2 50($0)
# 0x3e60
addu $12 $8 $6
# 0x3e64
lhu $21 30($0)
# 0x3e68
mflo $31
# 0x3e6c
addu $2 $15 $18
# 0x3e70
sra $11 $25 8
# 0x3e74
sra $16 $19 1
# 0x3e78
lw $30 8($0)
# 0x3e7c
sllv $16 $19 $7
# 0x3e80
multu $19 $17
# 0x3e84
sllv $4 $24 $18
# 0x3e88
subu $6 $15 $8
# 0x3e8c
sltiu $6 $23 17032
# 0x3e90
slt $19 $9 $30
# 0x3e94
srlv $13 $16 $22
# 0x3e98
mflo $17
# 0x3e9c
sub $1 $26 $4
# 0x3ea0
nor $20 $25 $15
# 0x3ea4
lui $2 0x7d1a
# 0x3ea8
sll $5 $17 5
# 0x3eac
lui $11 0x6a42
# 0x3eb0
srav $8 $30 $24
# 0x3eb4
lh $16 18($0)
# 0x3eb8
sllv $14 $18 $30
# 0x3ebc
lh $9 60($0)
# 0x3ec0
nor $14 $12 $16
# 0x3ec4
addiu $26 $6 22908
# 0x3ec8
mult $10 $8
# 0x3ecc
srav $4 $8 $16
# 0x3ed0
addiu $30 $27 25916
# 0x3ed4
subu $7 $31 $8
# 0x3ed8
lui $10 0x4e6b
# 0x3edc
srl $25 $16 28
# 0x3ee0
subu $27 $12 $10
# 0x3ee4
sll $9 $24 20
# 0x3ee8
sltiu $14 $6 15420
# 0x3eec
lhu $16 18($0)
# 0x3ef0
mult $26 $16
# 0x3ef4
lh $19 14($0)
# 0x3ef8
sh $19 32($0)
# 0x3efc
sb $9 12($0)
# 0x3f00
sub $25 $15 $12
# 0x3f04
mflo $20
# 0x3f08
slti $9 $12 -29884
# 0x3f0c
lui $2 0xd651
# 0x3f10
add $3 $8 $27
# 0x3f14
mflo $12
# 0x3f18
srav $26 $16 $6
# 0x3f1c
addiu $30 $30 2431
# 0x3f20
xor $26 $1 $14
# 0x3f24
lhu $13 18($0)
# 0x3f28
addi $3 $19 1960
# 0x3f2c
sh $2 28($0)
# 0x3f30
sub $26 $30 $24
# 0x3f34
ori $13 $5 0x8f55
# 0x3f38
lb $15 27($0)
# 0x3f3c
subu $2 $24 $15
# 0x3f40
sh $8 6($0)
# 0x3f44
srlv $5 $23 $19
# 0x3f48
sw $10 28($0)
# 0x3f4c
sw $16 96($0)
# 0x3f50
mthi $11
# 0x3f54
mthi $27
# 0x3f58
addu $3 $4 $27
# 0x3f5c
add $21 $17 $21
# 0x3f60
sw $26 72($0)
# 0x3f64
add $8 $22 $11
# 0x3f68
sh $21 4($0)
# 0x3f6c
or $18 $9 $19
# 0x3f70
mfhi $15
# 0x3f74
lhu $22 8($0)
# 0x3f78
sh $27 52($0)
# 0x3f7c
mtlo $1
# 0x3f80
lh $14 12($0)
# 0x3f84
mult $13 $20
# 0x3f88
addu $17 $13 $20
# 0x3f8c
sh $10 22($0)
# 0x3f90
lh $9 18($0)
# 0x3f94
sltiu $3 $1 16080
# 0x3f98
srl $30 $21 8
# 0x3f9c
andi $30 $15 0x2ce5
# 0x3fa0
sw $9 0($0)

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop