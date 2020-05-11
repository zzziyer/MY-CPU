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
lb $1 13($0)
# 0x3008
sra $11 $1 10
# 0x300c
lb $1 11($0)
# 0x3010
mflo $18
# 0x3014
andi $1 $5 0x2509
# 0x3018
andi $4 $25 0xb227
# 0x301c
srl $7 $21 2
# 0x3020
or $6 $4 $16
# 0x3024
nor $2 $31 $5
# 0x3028
slti $7 $15 6782
# 0x302c
nor $27 $17 $16
# 0x3030
and $13 $9 $7
# 0x3034
lui $7 0xa1a7
# 0x3038
slti $10 $20 29569
# 0x303c
slt $18 $30 $3
# 0x3040
lh $20 28($0)
# 0x3044
sb $25 13($0)
# 0x3048
nor $27 $10 $12
# 0x304c
and $20 $23 $23
# 0x3050
mult $4 $26
# 0x3054
addi $26 $8 9239
# 0x3058
lhu $20 12($0)
# 0x305c
mtlo $25
# 0x3060
multu $19 $21
# 0x3064
nor $11 $26 $4
# 0x3068
sb $4 21($0)
# 0x306c
slt $1 $1 $25
# 0x3070
and $9 $30 $31
# 0x3074
xor $2 $10 $16
# 0x3078
lui $4 0xa461
# 0x307c
lb $21 19($0)
# 0x3080
sra $1 $4 15
# 0x3084
sll $26 $25 7
# 0x3088
nor $23 $10 $4
# 0x308c
lui $14 0x8f9d
# 0x3090
andi $10 $19 0x1c46
# 0x3094
xori $8 $2 0x6b1c
# 0x3098
sb $1 18($0)
# 0x309c
lh $1 54($0)
# 0x30a0
lh $11 32($0)
# 0x30a4
lw $26 48($0)
# 0x30a8
sw $3 40($0)
# 0x30ac
sw $5 24($0)
# 0x30b0
and $4 $15 $16
# 0x30b4
lb $7 16($0)
# 0x30b8
xori $7 $16 0xa197
# 0x30bc
srl $24 $11 30
# 0x30c0
lw $15 52($0)
# 0x30c4
lh $21 28($0)
# 0x30c8
lb $21 1($0)
# 0x30cc
slt $10 $1 $2
# 0x30d0
sltiu $6 $5 12055
# 0x30d4
mult $31 $25
# 0x30d8
sh $15 2($0)
# 0x30dc
srl $1 $21 14
# 0x30e0
lh $16 24($0)
# 0x30e4
lh $7 4($0)
# 0x30e8
sw $24 28($0)
# 0x30ec
sw $12 12($0)
# 0x30f0
srav $17 $3 $1
# 0x30f4
lw $8 68($0)
# 0x30f8
addiu $31 $15 25264
# 0x30fc
sltu $3 $1 $24
# 0x3100
xori $12 $23 0xc4fa
# 0x3104
and $17 $31 $6
# 0x3108
addi $8 $31 -9089
# 0x310c
srlv $22 $6 $1
# 0x3110
sll $8 $27 26
# 0x3114
sh $24 34($0)
# 0x3118
lh $15 44($0)
# 0x311c
sb $24 26($0)
# 0x3120
sll $19 $5 23
# 0x3124
lw $30 24($0)
# 0x3128
sh $22 0($0)
# 0x312c
ori $21 $13 0x0166
# 0x3130
xori $30 $17 0x3609
# 0x3134
or $12 $30 $17
# 0x3138
ori $21 $21 0xe602
# 0x313c
and $23 $14 $20
# 0x3140
slt $15 $31 $23
# 0x3144
mtlo $4
# 0x3148
addu $20 $12 $23
# 0x314c
sllv $7 $31 $20
# 0x3150
srlv $9 $20 $9
# 0x3154
addi $31 $11 12010
# 0x3158
slt $11 $14 $3
# 0x315c
sub $1 $4 $17
# 0x3160
lh $17 36($0)
# 0x3164
sb $3 4($0)
# 0x3168
mtlo $25
# 0x316c
andi $3 $4 0x789b
# 0x3170
addi $21 $31 -10917
# 0x3174
or $14 $14 $13
# 0x3178
subu $16 $18 $20
# 0x317c
srl $7 $2 0
# 0x3180
lw $12 4($0)
# 0x3184
xor $15 $11 $18
# 0x3188
addi $7 $14 31880
# 0x318c
lw $12 104($0)
# 0x3190
sb $26 31($0)
# 0x3194
slti $13 $11 -18787
# 0x3198
add $18 $17 $24
# 0x319c
sll $25 $9 25
# 0x31a0
addi $15 $25 14723
# 0x31a4
slt $15 $5 $14
# 0x31a8
srl $17 $25 21
# 0x31ac
srl $22 $18 30
# 0x31b0
add $18 $15 $19
# 0x31b4
lh $13 8($0)
# 0x31b8
srl $3 $22 26
# 0x31bc
lhu $4 26($0)
# 0x31c0
lbu $21 8($0)
# 0x31c4
subu $18 $14 $30
# 0x31c8
addu $15 $18 $17
# 0x31cc
lhu $18 16($0)
# 0x31d0
mfhi $6
# 0x31d4
slt $20 $4 $19
# 0x31d8
sllv $10 $23 $24
# 0x31dc
addiu $20 $11 7639
# 0x31e0
addu $5 $4 $16
# 0x31e4
lb $30 12($0)
# 0x31e8
lhu $4 2($0)
# 0x31ec
sh $31 22($0)
# 0x31f0
lw $9 100($0)
# 0x31f4
mtlo $1
# 0x31f8
lh $20 6($0)
# 0x31fc
lb $12 8($0)
# 0x3200
add $26 $26 $16
# 0x3204
lw $11 20($0)
# 0x3208
lb $15 9($0)
# 0x320c
mthi $31
# 0x3210
sub $24 $16 $22
# 0x3214
srav $25 $16 $4
# 0x3218
lbu $16 19($0)
# 0x321c
srlv $3 $25 $4
# 0x3220
sw $26 56($0)
# 0x3224
lw $17 64($0)
# 0x3228
sllv $19 $31 $24
# 0x322c
add $23 $4 $6
# 0x3230
sh $23 10($0)
# 0x3234
lw $27 12($0)
# 0x3238
srl $6 $3 21
# 0x323c
sra $31 $16 6
# 0x3240
lw $8 4($0)
# 0x3244
srl $6 $23 8
# 0x3248
xor $16 $22 $4
# 0x324c
or $16 $15 $1
# 0x3250
sra $2 $1 24
# 0x3254
mflo $12
# 0x3258
lh $17 32($0)
# 0x325c
sw $17 16($0)
# 0x3260
sllv $8 $23 $13
# 0x3264
srl $25 $14 14
# 0x3268
lh $5 22($0)
# 0x326c
lui $10 0x75f2
# 0x3270
mflo $5
# 0x3274
mthi $5
# 0x3278
sub $11 $16 $12
# 0x327c
andi $18 $6 0x1ad5
# 0x3280
nor $1 $5 $4
# 0x3284
mult $19 $23
# 0x3288
subu $12 $15 $30
# 0x328c
mult $14 $14
# 0x3290
addi $14 $2 3479
# 0x3294
mtlo $11
# 0x3298
ori $20 $12 0xad8f
# 0x329c
lbu $10 5($0)
# 0x32a0
sllv $9 $23 $10
# 0x32a4
xori $17 $31 0x41f8
# 0x32a8
subu $25 $2 $2
# 0x32ac
sw $11 24($0)
# 0x32b0
add $22 $31 $20
# 0x32b4
lw $18 56($0)
# 0x32b8
andi $23 $19 0x2841
# 0x32bc
andi $13 $5 0x76af
# 0x32c0
lbu $1 29($0)
# 0x32c4
lhu $26 8($0)
# 0x32c8
addu $24 $27 $18
# 0x32cc
add $30 $8 $27
# 0x32d0
sh $2 20($0)
# 0x32d4
sh $11 18($0)
# 0x32d8
slti $1 $16 25121
# 0x32dc
add $4 $22 $1
# 0x32e0
sh $2 52($0)
# 0x32e4
sw $21 4($0)
# 0x32e8
lh $7 34($0)
# 0x32ec
lw $2 28($0)
# 0x32f0
lhu $23 22($0)
# 0x32f4
lui $13 0xa12c
# 0x32f8
xor $17 $20 $31
# 0x32fc
nor $1 $1 $19
# 0x3300
mthi $19
# 0x3304
sllv $10 $21 $24
# 0x3308
ori $3 $17 0x4469
# 0x330c
mult $13 $24
# 0x3310
sw $14 100($0)
# 0x3314
sw $24 0($0)
# 0x3318
sb $25 24($0)
# 0x331c
addu $22 $16 $14
# 0x3320
lw $4 96($0)
# 0x3324
andi $11 $15 0x5d29
# 0x3328
sb $3 27($0)
# 0x332c
srav $5 $12 $13
# 0x3330
add $12 $13 $26
# 0x3334
srl $26 $10 17
# 0x3338
mthi $24
# 0x333c
sh $4 6($0)
# 0x3340
lh $1 18($0)
# 0x3344
mtlo $20
# 0x3348
and $16 $2 $18
# 0x334c
sh $17 28($0)
# 0x3350
srav $10 $17 $4
# 0x3354
sw $23 4($0)
# 0x3358
lh $10 56($0)
# 0x335c
slt $30 $27 $24
# 0x3360
mthi $26
# 0x3364
sb $23 21($0)
# 0x3368
ori $19 $4 0x660e
# 0x336c
slti $15 $12 -13615
# 0x3370
ori $8 $7 0x5c98
# 0x3374
srl $30 $22 28
# 0x3378
sub $1 $7 $26
# 0x337c
srl $14 $20 27
# 0x3380
mthi $24
# 0x3384
add $1 $20 $7
# 0x3388
slti $13 $16 -17563
# 0x338c
add $18 $10 $6
# 0x3390
add $13 $6 $13
# 0x3394
nor $16 $12 $24
# 0x3398
andi $30 $6 0x9389
# 0x339c
lh $3 24($0)
# 0x33a0
sll $24 $27 19
# 0x33a4
srlv $26 $3 $5
# 0x33a8
sll $1 $6 22
# 0x33ac
addu $22 $18 $3
# 0x33b0
lw $17 60($0)
# 0x33b4
sra $9 $9 27
# 0x33b8
add $8 $11 $22
# 0x33bc
and $13 $26 $19
# 0x33c0
mult $2 $25
# 0x33c4
mthi $18
# 0x33c8
mfhi $6
# 0x33cc
ori $21 $13 0x1c30
# 0x33d0
subu $2 $11 $23
# 0x33d4
sra $7 $18 9
# 0x33d8
mult $2 $31
# 0x33dc
lw $8 20($0)
# 0x33e0
add $30 $17 $1
# 0x33e4
and $3 $26 $30
# 0x33e8
slti $1 $1 24159
# 0x33ec
mult $2 $22
# 0x33f0
slt $31 $14 $30
# 0x33f4
xor $3 $2 $26
# 0x33f8
mthi $27
# 0x33fc
sw $16 16($0)
# 0x3400
slti $30 $22 30166
# 0x3404
sra $30 $11 2
# 0x3408
slt $18 $9 $24
# 0x340c
andi $3 $11 0x1ef1
# 0x3410
slt $15 $10 $15
# 0x3414
addiu $14 $6 20246
# 0x3418
andi $27 $19 0x6a1e
# 0x341c
lui $11 0x8267
# 0x3420
ori $14 $5 0xfcca
# 0x3424
add $4 $23 $6
# 0x3428
sra $20 $8 1
# 0x342c
lb $5 28($0)
# 0x3430
lb $7 15($0)
# 0x3434
sll $17 $27 24
# 0x3438
xor $10 $1 $5
# 0x343c
sb $20 17($0)
# 0x3440
multu $26 $30
# 0x3444
addiu $27 $2 31003
# 0x3448
sw $27 20($0)
# 0x344c
sub $17 $3 $1
# 0x3450
nor $31 $30 $23
# 0x3454
xor $27 $30 $27
# 0x3458
sllv $26 $10 $1
# 0x345c
sltu $19 $1 $30
# 0x3460
subu $19 $19 $12
# 0x3464
nor $31 $10 $1
# 0x3468
lw $5 96($0)
# 0x346c
addi $20 $15 681
# 0x3470
and $15 $4 $4
# 0x3474
sltiu $6 $9 30091
# 0x3478
lw $4 88($0)
# 0x347c
addi $8 $14 3893
# 0x3480
sub $31 $3 $18
# 0x3484
nor $12 $17 $1
# 0x3488
sra $13 $26 2
# 0x348c
add $15 $21 $3
# 0x3490
srlv $22 $9 $22
# 0x3494
mtlo $7
# 0x3498
addi $13 $31 -24678
# 0x349c
mflo $10
# 0x34a0
srlv $16 $18 $11
# 0x34a4
mtlo $4
# 0x34a8
and $8 $4 $31
# 0x34ac
mfhi $26
# 0x34b0
subu $30 $30 $10
# 0x34b4
lh $25 52($0)
# 0x34b8
addiu $12 $11 31531
# 0x34bc
mflo $26
# 0x34c0
sh $20 40($0)
# 0x34c4
mfhi $25
# 0x34c8
multu $6 $25
# 0x34cc
lh $20 48($0)
# 0x34d0
slt $14 $25 $16
# 0x34d4
slt $22 $26 $15
# 0x34d8
sh $30 32($0)
# 0x34dc
sllv $9 $25 $5
# 0x34e0
ori $26 $8 0x3e3b
# 0x34e4
sllv $14 $9 $13
# 0x34e8
lhu $1 26($0)
# 0x34ec
addu $13 $20 $21
# 0x34f0
srav $15 $6 $16
# 0x34f4
xor $23 $25 $3
# 0x34f8
lh $25 12($0)
# 0x34fc
lb $18 2($0)
# 0x3500
or $5 $23 $24
# 0x3504
or $12 $15 $13
# 0x3508
slti $24 $27 17977
# 0x350c
srav $1 $18 $24
# 0x3510
sh $9 12($0)
# 0x3514
sra $7 $23 11
# 0x3518
sw $16 20($0)
# 0x351c
lui $8 0x67e1
# 0x3520
addi $31 $21 -27051
# 0x3524
srl $14 $4 0
# 0x3528
sb $8 24($0)
# 0x352c
sw $16 4($0)
# 0x3530
srl $7 $15 19
# 0x3534
mthi $19
# 0x3538
xori $18 $21 0xd089
# 0x353c
sw $30 4($0)
# 0x3540
lb $2 17($0)
# 0x3544
mtlo $4
# 0x3548
slti $26 $6 -13473
# 0x354c
sh $30 16($0)
# 0x3550
sh $27 24($0)
# 0x3554
mthi $19
# 0x3558
mfhi $14
# 0x355c
sltu $19 $23 $1
# 0x3560
lui $22 0xfb91
# 0x3564
subu $3 $27 $3
# 0x3568
sll $31 $11 16
# 0x356c
xor $8 $23 $18
# 0x3570
mflo $21
# 0x3574
slti $20 $9 25764
# 0x3578
andi $24 $4 0xb24e
# 0x357c
multu $14 $6
# 0x3580
sw $1 124($0)
# 0x3584
lw $18 28($0)
# 0x3588
mtlo $19
# 0x358c
lbu $24 12($0)
# 0x3590
lw $10 12($0)
# 0x3594
lb $9 2($0)
# 0x3598
mult $9 $10
# 0x359c
lhu $22 24($0)
# 0x35a0
multu $6 $3
# 0x35a4
xori $2 $26 0xc21f
# 0x35a8
lh $19 32($0)
# 0x35ac
slt $20 $3 $3
# 0x35b0
sb $6 31($0)
# 0x35b4
sllv $9 $20 $14
# 0x35b8
srlv $14 $25 $23
# 0x35bc
lbu $10 31($0)
# 0x35c0
lh $24 10($0)
# 0x35c4
srav $13 $21 $24
# 0x35c8
lw $31 48($0)
# 0x35cc
lui $19 0x2088
# 0x35d0
slt $3 $14 $4
# 0x35d4
lb $8 31($0)
# 0x35d8
mult $12 $14
# 0x35dc
lui $8 0x284f
# 0x35e0
and $21 $14 $20
# 0x35e4
slt $11 $20 $5
# 0x35e8
sw $14 8($0)
# 0x35ec
lw $4 16($0)
# 0x35f0
mtlo $24
# 0x35f4
sb $27 30($0)
# 0x35f8
mthi $10
# 0x35fc
lh $10 8($0)
# 0x3600
sllv $14 $26 $3
# 0x3604
lhu $30 24($0)
# 0x3608
sh $26 60($0)
# 0x360c
sllv $7 $5 $7
# 0x3610
sltu $18 $26 $22
# 0x3614
or $30 $14 $20
# 0x3618
sll $21 $2 19
# 0x361c
lw $25 84($0)
# 0x3620
addi $25 $16 353
# 0x3624
mult $26 $7
# 0x3628
slti $6 $26 16400
# 0x362c
lb $19 27($0)
# 0x3630
lh $21 16($0)
# 0x3634
multu $3 $8
# 0x3638
addu $5 $21 $24
# 0x363c
sb $30 28($0)
# 0x3640
mult $27 $17
# 0x3644
sll $19 $21 11
# 0x3648
addi $30 $14 -32591
# 0x364c
mthi $13
# 0x3650
or $25 $30 $25
# 0x3654
lhu $5 4($0)
# 0x3658
andi $15 $13 0x17b5
# 0x365c
sltu $4 $18 $5
# 0x3660
mfhi $17
# 0x3664
and $10 $5 $13
# 0x3668
add $20 $9 $25
# 0x366c
srl $30 $9 20
# 0x3670
addi $19 $20 -1523
# 0x3674
ori $2 $6 0xff16
# 0x3678
lui $31 0xc38d
# 0x367c
sltiu $21 $16 22132
# 0x3680
lh $27 2($0)
# 0x3684
lbu $18 3($0)
# 0x3688
lh $18 10($0)
# 0x368c
sh $18 4($0)
# 0x3690
srl $23 $20 18
# 0x3694
sllv $30 $27 $5
# 0x3698
sh $16 20($0)
# 0x369c
sw $22 52($0)
# 0x36a0
lb $20 8($0)
# 0x36a4
lui $18 0x980c
# 0x36a8
lbu $2 11($0)
# 0x36ac
addiu $4 $24 30872
# 0x36b0
nor $24 $22 $24
# 0x36b4
addi $24 $15 -13013
# 0x36b8
sra $18 $30 18
# 0x36bc
srl $1 $9 2
# 0x36c0
mfhi $22
# 0x36c4
lh $9 2($0)
# 0x36c8
ori $24 $16 0x2030
# 0x36cc
lh $4 2($0)
# 0x36d0
and $16 $13 $30
# 0x36d4
mfhi $2
# 0x36d8
nor $11 $21 $16
# 0x36dc
slti $10 $31 -25124
# 0x36e0
xor $19 $10 $24
# 0x36e4
lui $5 0xd7b6
# 0x36e8
sh $4 18($0)
# 0x36ec
lw $19 8($0)
# 0x36f0
sll $7 $21 18
# 0x36f4
mfhi $21
# 0x36f8
ori $13 $8 0x1c6f
# 0x36fc
or $15 $4 $21
# 0x3700
sllv $26 $6 $27
# 0x3704
sllv $7 $3 $2
# 0x3708
sub $14 $27 $7
# 0x370c
sw $4 92($0)
# 0x3710
slti $1 $27 -1506
# 0x3714
sh $31 32($0)
# 0x3718
mflo $18
# 0x371c
andi $23 $30 0xe55b
# 0x3720
srav $13 $4 $4
# 0x3724
addu $17 $16 $14
# 0x3728
andi $7 $6 0xacbc
# 0x372c
subu $13 $4 $19
# 0x3730
or $17 $30 $6
# 0x3734
and $8 $30 $26
# 0x3738
ori $4 $17 0x9af6
# 0x373c
xori $6 $8 0x6e7a
# 0x3740
sw $6 24($0)
# 0x3744
sh $11 18($0)
# 0x3748
sub $25 $13 $20
# 0x374c
ori $24 $25 0xa489
# 0x3750
sllv $10 $26 $3
# 0x3754
sw $3 4($0)
# 0x3758
srlv $14 $7 $7
# 0x375c
lh $12 0($0)
# 0x3760
sllv $24 $30 $25
# 0x3764
sltu $26 $9 $8
# 0x3768
ori $9 $30 0x6cb8
# 0x376c
lhu $5 18($0)
# 0x3770
sra $30 $21 24
# 0x3774
or $21 $24 $11
# 0x3778
mthi $9
# 0x377c
lw $18 72($0)
# 0x3780
mflo $31
# 0x3784
sra $4 $8 3
# 0x3788
mflo $17
# 0x378c
slti $19 $4 13765
# 0x3790
sra $3 $3 0
# 0x3794
lw $12 16($0)
# 0x3798
sub $16 $30 $1
# 0x379c
or $12 $27 $1
# 0x37a0
ori $1 $14 0x687b
# 0x37a4
addi $8 $24 15926
# 0x37a8
subu $4 $1 $14
# 0x37ac
sub $31 $1 $8
# 0x37b0
srlv $4 $20 $26
# 0x37b4
slti $16 $19 27552
# 0x37b8
sub $19 $17 $9
# 0x37bc
slt $7 $20 $18
# 0x37c0
lw $19 4($0)
# 0x37c4
xor $14 $1 $26
# 0x37c8
sllv $23 $14 $17
# 0x37cc
addi $10 $23 -5909
# 0x37d0
mflo $9
# 0x37d4
or $9 $5 $24
# 0x37d8
sw $30 48($0)
# 0x37dc
sltu $13 $20 $1
# 0x37e0
lh $9 28($0)
# 0x37e4
sw $1 48($0)
# 0x37e8
andi $23 $14 0xab37
# 0x37ec
lh $13 42($0)
# 0x37f0
sltu $19 $22 $5
# 0x37f4
xori $9 $2 0x6284
# 0x37f8
and $30 $24 $23
# 0x37fc
sw $31 4($0)
# 0x3800
sub $21 $3 $1
# 0x3804
mfhi $25
# 0x3808
lb $9 5($0)
# 0x380c
sra $13 $22 1
# 0x3810
sllv $31 $27 $30
# 0x3814
and $17 $20 $10
# 0x3818
sw $12 24($0)
# 0x381c
sh $7 50($0)
# 0x3820
sub $24 $23 $20
# 0x3824
lh $23 4($0)
# 0x3828
lh $18 8($0)
# 0x382c
addiu $1 $30 21041
# 0x3830
sw $26 120($0)
# 0x3834
andi $19 $3 0x6c7e
# 0x3838
sb $19 17($0)
# 0x383c
sh $1 18($0)
# 0x3840
and $24 $19 $24
# 0x3844
sh $23 2($0)
# 0x3848
sllv $22 $14 $23
# 0x384c
sub $12 $25 $4
# 0x3850
multu $4 $4
# 0x3854
lbu $12 19($0)
# 0x3858
lw $16 28($0)
# 0x385c
sb $14 31($0)
# 0x3860
ori $19 $18 0xc3cd
# 0x3864
lh $16 22($0)
# 0x3868
sltiu $25 $30 14210
# 0x386c
sb $7 12($0)
# 0x3870
sh $26 14($0)
# 0x3874
add $16 $5 $11
# 0x3878
slti $11 $27 -19964
# 0x387c
ori $9 $10 0xb046
# 0x3880
lw $19 8($0)
# 0x3884
andi $31 $19 0xd64e
# 0x3888
mult $27 $20
# 0x388c
sub $3 $25 $5
# 0x3890
sltu $24 $25 $12
# 0x3894
lui $18 0x2c5f
# 0x3898
add $17 $1 $5
# 0x389c
slt $1 $30 $30
# 0x38a0
mthi $9
# 0x38a4
slti $26 $7 -8461
# 0x38a8
andi $5 $31 0x9cfa
# 0x38ac
sltu $26 $16 $18
# 0x38b0
or $22 $22 $23
# 0x38b4
mtlo $14
# 0x38b8
sw $22 16($0)
# 0x38bc
sw $19 12($0)
# 0x38c0
xor $18 $17 $8
# 0x38c4
lui $26 0x5e42
# 0x38c8
srl $4 $16 28
# 0x38cc
sh $20 16($0)
# 0x38d0
or $30 $14 $17
# 0x38d4
sh $7 8($0)
# 0x38d8
srl $15 $11 19
# 0x38dc
slti $19 $10 10031
# 0x38e0
lhu $27 10($0)
# 0x38e4
ori $6 $2 0x562e
# 0x38e8
srlv $11 $27 $24
# 0x38ec
srlv $10 $24 $31
# 0x38f0
multu $18 $9
# 0x38f4
lhu $14 24($0)
# 0x38f8
andi $25 $17 0x0961
# 0x38fc
sllv $6 $24 $24
# 0x3900
andi $12 $3 0x82ad
# 0x3904
srl $15 $19 4
# 0x3908
addu $14 $14 $8
# 0x390c
lui $5 0xea71
# 0x3910
sb $16 7($0)
# 0x3914
lh $23 4($0)
# 0x3918
lbu $9 2($0)
# 0x391c
sllv $1 $9 $27
# 0x3920
nor $19 $10 $9
# 0x3924
srav $4 $8 $7
# 0x3928
sll $31 $26 12
# 0x392c
addiu $1 $24 19803
# 0x3930
lbu $18 0($0)
# 0x3934
lw $25 28($0)
# 0x3938
srav $19 $21 $5
# 0x393c
srl $4 $8 30
# 0x3940
sub $21 $13 $13
# 0x3944
sltiu $22 $12 20623
# 0x3948
nor $11 $4 $13
# 0x394c
sltiu $2 $26 15336
# 0x3950
xor $30 $24 $24
# 0x3954
sltu $9 $31 $4
# 0x3958
mult $10 $5
# 0x395c
sh $15 14($0)
# 0x3960
sh $26 48($0)
# 0x3964
lh $10 54($0)
# 0x3968
sltu $31 $2 $21
# 0x396c
sub $24 $31 $2
# 0x3970
andi $7 $16 0xd556
# 0x3974
subu $30 $15 $22
# 0x3978
sltu $14 $1 $15
# 0x397c
mflo $15
# 0x3980
lw $31 20($0)
# 0x3984
lui $30 0xd558
# 0x3988
srlv $16 $11 $20
# 0x398c
sb $18 0($0)
# 0x3990
srl $11 $27 17
# 0x3994
mfhi $12
# 0x3998
sh $24 0($0)
# 0x399c
lhu $10 0($0)
# 0x39a0
slt $13 $6 $9
# 0x39a4
lb $9 10($0)
# 0x39a8
slt $27 $26 $11
# 0x39ac
mthi $5
# 0x39b0
lhu $18 20($0)
# 0x39b4
lh $12 46($0)
# 0x39b8
lb $27 1($0)
# 0x39bc
addu $22 $10 $12
# 0x39c0
sb $13 5($0)
# 0x39c4
sra $22 $15 9
# 0x39c8
lh $7 50($0)
# 0x39cc
slt $15 $10 $26
# 0x39d0
addiu $26 $19 7235
# 0x39d4
addiu $4 $25 4376
# 0x39d8
sw $5 0($0)
# 0x39dc
nor $27 $19 $10
# 0x39e0
addi $30 $26 -10288
# 0x39e4
lb $8 16($0)
# 0x39e8
and $24 $5 $17
# 0x39ec
mult $7 $13
# 0x39f0
xori $5 $7 0x8cff
# 0x39f4
sllv $27 $6 $6
# 0x39f8
lw $15 16($0)
# 0x39fc
add $26 $6 $23
# 0x3a00
or $17 $6 $2
# 0x3a04
srl $9 $4 25
# 0x3a08
lh $8 24($0)
# 0x3a0c
srl $19 $24 28
# 0x3a10
lh $22 24($0)
# 0x3a14
addiu $3 $16 22460
# 0x3a18
mthi $5
# 0x3a1c
xor $18 $9 $17
# 0x3a20
ori $30 $20 0xae83
# 0x3a24
sb $14 25($0)
# 0x3a28
sh $13 58($0)
# 0x3a2c
sw $31 4($0)
# 0x3a30
add $15 $10 $2
# 0x3a34
lh $5 50($0)
# 0x3a38
sll $4 $8 0
# 0x3a3c
sltiu $8 $11 10809
# 0x3a40
addi $24 $26 23799
# 0x3a44
sub $11 $3 $13
# 0x3a48
sw $2 4($0)
# 0x3a4c
andi $16 $12 0xebaf
# 0x3a50
sh $30 16($0)
# 0x3a54
slt $20 $7 $22
# 0x3a58
mflo $23
# 0x3a5c
addi $12 $16 -40
# 0x3a60
sub $15 $14 $16
# 0x3a64
mflo $6
# 0x3a68
xori $16 $26 0xbb84
# 0x3a6c
srav $16 $26 $16
# 0x3a70
slt $31 $20 $22
# 0x3a74
addi $20 $11 19718
# 0x3a78
slt $10 $23 $4
# 0x3a7c
srl $12 $2 8
# 0x3a80
lhu $3 4($0)
# 0x3a84
lui $17 0x5eb8
# 0x3a88
sb $7 2($0)
# 0x3a8c
mthi $12
# 0x3a90
sra $14 $8 26
# 0x3a94
addi $5 $2 -19507
# 0x3a98
mult $19 $23
# 0x3a9c
lui $15 0x74dc
# 0x3aa0
subu $22 $16 $2
# 0x3aa4
and $6 $11 $24
# 0x3aa8
or $25 $16 $1
# 0x3aac
sw $4 16($0)
# 0x3ab0
sltu $2 $13 $15
# 0x3ab4
mthi $7
# 0x3ab8
xor $13 $16 $14
# 0x3abc
xori $21 $17 0x5cfe
# 0x3ac0
lh $6 48($0)
# 0x3ac4
lb $19 1($0)
# 0x3ac8
sh $22 10($0)
# 0x3acc
sb $15 8($0)
# 0x3ad0
sb $2 11($0)
# 0x3ad4
ori $11 $27 0x76c1
# 0x3ad8
sh $21 12($0)
# 0x3adc
mflo $24
# 0x3ae0
xori $7 $24 0x7962
# 0x3ae4
lh $23 4($0)
# 0x3ae8
sub $20 $27 $15
# 0x3aec
mflo $25
# 0x3af0
sub $4 $14 $5
# 0x3af4
lui $18 0x5a37
# 0x3af8
srav $19 $2 $2
# 0x3afc
srav $7 $21 $18
# 0x3b00
srlv $2 $1 $14
# 0x3b04
srl $31 $4 29
# 0x3b08
slti $15 $30 24897
# 0x3b0c
nor $6 $2 $1
# 0x3b10
add $23 $30 $5
# 0x3b14
sb $23 3($0)
# 0x3b18
sll $7 $4 26
# 0x3b1c
addu $9 $31 $30
# 0x3b20
mtlo $14
# 0x3b24
addu $27 $17 $23
# 0x3b28
lui $26 0x00c4
# 0x3b2c
andi $27 $18 0x190a
# 0x3b30
and $12 $16 $13
# 0x3b34
mult $9 $6
# 0x3b38
slt $11 $20 $22
# 0x3b3c
addiu $24 $17 21316
# 0x3b40
mtlo $24
# 0x3b44
mtlo $18
# 0x3b48
addi $16 $17 11760
# 0x3b4c
addu $19 $24 $8
# 0x3b50
addi $30 $6 -15656
# 0x3b54
lhu $5 30($0)
# 0x3b58
mthi $15
# 0x3b5c
sw $5 24($0)
# 0x3b60
mthi $21
# 0x3b64
xor $24 $30 $2
# 0x3b68
lh $19 24($0)
# 0x3b6c
ori $12 $2 0xa521
# 0x3b70
lw $12 24($0)
# 0x3b74
sllv $31 $22 $31
# 0x3b78
srav $27 $11 $31
# 0x3b7c
nor $15 $31 $17
# 0x3b80
srav $13 $22 $5
# 0x3b84
mtlo $19
# 0x3b88
slt $13 $11 $14
# 0x3b8c
sh $23 60($0)
# 0x3b90
slt $6 $13 $24
# 0x3b94
slt $14 $15 $16
# 0x3b98
sw $22 28($0)
# 0x3b9c
xori $2 $8 0xc2d9
# 0x3ba0
mflo $16
# 0x3ba4
mthi $11
# 0x3ba8
sll $25 $1 22
# 0x3bac
sw $18 20($0)
# 0x3bb0
mthi $16
# 0x3bb4
sllv $10 $10 $23
# 0x3bb8
or $17 $4 $15
# 0x3bbc
addu $31 $13 $15
# 0x3bc0
addu $13 $13 $30
# 0x3bc4
lui $21 0x1e3c
# 0x3bc8
or $8 $23 $12
# 0x3bcc
multu $8 $11
# 0x3bd0
and $19 $6 $24
# 0x3bd4
lw $30 116($0)
# 0x3bd8
nor $27 $17 $12
# 0x3bdc
lhu $18 16($0)
# 0x3be0
addiu $7 $24 25705
# 0x3be4
sltu $26 $1 $18
# 0x3be8
sltiu $17 $11 8075
# 0x3bec
ori $24 $18 0x686b
# 0x3bf0
lb $12 26($0)
# 0x3bf4
addiu $27 $2 15077
# 0x3bf8
sh $20 28($0)
# 0x3bfc
xor $6 $27 $26
# 0x3c00
subu $21 $19 $14
# 0x3c04
andi $7 $27 0xe63f
# 0x3c08
mult $18 $27
# 0x3c0c
lhu $14 28($0)
# 0x3c10
sb $24 28($0)
# 0x3c14
lw $1 112($0)
# 0x3c18
sltiu $23 $13 27401
# 0x3c1c
sh $3 16($0)
# 0x3c20
mthi $22
# 0x3c24
sb $19 23($0)
# 0x3c28
slt $23 $15 $2
# 0x3c2c
srl $11 $10 30
# 0x3c30
lh $25 30($0)
# 0x3c34
sllv $11 $18 $1
# 0x3c38
sltiu $12 $14 800
# 0x3c3c
lui $30 0xb64e
# 0x3c40
srlv $19 $26 $9
# 0x3c44
sw $3 64($0)
# 0x3c48
sh $5 28($0)
# 0x3c4c
lh $19 52($0)
# 0x3c50
sll $6 $10 28
# 0x3c54
mtlo $5
# 0x3c58
sw $4 96($0)
# 0x3c5c
lh $26 62($0)
# 0x3c60
lh $15 26($0)
# 0x3c64
lw $7 4($0)
# 0x3c68
sb $2 11($0)
# 0x3c6c
nor $12 $10 $11
# 0x3c70
andi $6 $27 0x5cd2
# 0x3c74
mtlo $2
# 0x3c78
or $12 $9 $4
# 0x3c7c
addiu $18 $10 5460
# 0x3c80
sllv $23 $6 $18
# 0x3c84
subu $21 $8 $1
# 0x3c88
lui $23 0x9b06
# 0x3c8c
mflo $3
# 0x3c90
sltu $14 $13 $24
# 0x3c94
lhu $13 28($0)
# 0x3c98
sh $6 2($0)
# 0x3c9c
sh $27 8($0)
# 0x3ca0
lui $31 0xff98
# 0x3ca4
sltiu $14 $27 28863
# 0x3ca8
lw $19 20($0)
# 0x3cac
sltu $13 $2 $24
# 0x3cb0
mult $1 $14
# 0x3cb4
sw $9 28($0)
# 0x3cb8
and $31 $22 $3
# 0x3cbc
sub $3 $8 $7
# 0x3cc0
xori $17 $14 0x64e5
# 0x3cc4
mfhi $13
# 0x3cc8
lb $6 4($0)
# 0x3ccc
lui $23 0x63a2
# 0x3cd0
xori $25 $7 0x3545
# 0x3cd4
sltiu $3 $13 15559
# 0x3cd8
addu $31 $14 $9
# 0x3cdc
sub $31 $17 $27
# 0x3ce0
sltiu $27 $23 26588
# 0x3ce4
lbu $5 18($0)
# 0x3ce8
sb $13 30($0)
# 0x3cec
multu $5 $24
# 0x3cf0
sw $10 64($0)
# 0x3cf4
slti $17 $25 -14708
# 0x3cf8
mflo $7
# 0x3cfc
sb $21 5($0)
# 0x3d00
lh $23 38($0)
# 0x3d04
lh $27 48($0)
# 0x3d08
lh $2 28($0)
# 0x3d0c
and $12 $31 $16
# 0x3d10
addi $22 $21 -20054
# 0x3d14
or $6 $27 $19
# 0x3d18
mthi $16
# 0x3d1c
sh $9 0($0)
# 0x3d20
sw $23 0($0)
# 0x3d24
sb $1 26($0)
# 0x3d28
multu $22 $25
# 0x3d2c
multu $1 $23
# 0x3d30
nor $5 $1 $7
# 0x3d34
sw $27 8($0)
# 0x3d38
sra $3 $17 4
# 0x3d3c
lw $7 20($0)
# 0x3d40
lh $31 10($0)
# 0x3d44
mthi $16
# 0x3d48
lh $27 38($0)
# 0x3d4c
lb $4 30($0)
# 0x3d50
srlv $4 $11 $4
# 0x3d54
xor $15 $22 $26
# 0x3d58
lui $6 0x6d30
# 0x3d5c
nor $2 $8 $1
# 0x3d60
slt $21 $23 $15
# 0x3d64
mtlo $23
# 0x3d68
mult $26 $9
# 0x3d6c
or $10 $26 $24
# 0x3d70
lb $1 27($0)
# 0x3d74
sllv $4 $14 $3
# 0x3d78
ori $15 $1 0x8ebb
# 0x3d7c
andi $4 $10 0xaba8
# 0x3d80
subu $3 $15 $15
# 0x3d84
sb $23 27($0)
# 0x3d88
addiu $8 $8 5356
# 0x3d8c
xori $20 $10 0xf1b3
# 0x3d90
lbu $24 2($0)
# 0x3d94
slt $25 $12 $23
# 0x3d98
nor $31 $23 $14
# 0x3d9c
sltiu $11 $13 20782
# 0x3da0
srlv $11 $5 $14
# 0x3da4
subu $3 $11 $14
# 0x3da8
sll $7 $22 7
# 0x3dac
add $25 $3 $21
# 0x3db0
nor $4 $23 $17
# 0x3db4
sra $10 $14 1
# 0x3db8
slt $9 $21 $22
# 0x3dbc
addi $5 $10 -21408
# 0x3dc0
addu $8 $27 $2
# 0x3dc4
or $7 $30 $12
# 0x3dc8
sllv $19 $23 $21
# 0x3dcc
addu $31 $11 $14
# 0x3dd0
multu $3 $17
# 0x3dd4
lh $20 24($0)
# 0x3dd8
srl $31 $18 16
# 0x3ddc
addi $15 $20 21220
# 0x3de0
slt $23 $25 $5
# 0x3de4
addi $24 $8 -2870
# 0x3de8
andi $19 $21 0x87be
# 0x3dec
sll $15 $31 6
# 0x3df0
mtlo $8
# 0x3df4
or $4 $14 $16
# 0x3df8
lw $26 112($0)
# 0x3dfc
sub $14 $21 $16
# 0x3e00
xor $24 $5 $31
# 0x3e04
xor $26 $10 $2
# 0x3e08
mtlo $15
# 0x3e0c
andi $23 $25 0x3276
# 0x3e10
slt $25 $9 $7
# 0x3e14
lw $14 120($0)
# 0x3e18
add $12 $7 $16
# 0x3e1c
add $30 $12 $5
# 0x3e20
andi $11 $17 0x9350
# 0x3e24
mthi $10
# 0x3e28
lui $9 0x0a1d
# 0x3e2c
sllv $16 $25 $15
# 0x3e30
sra $22 $17 30
# 0x3e34
lh $15 24($0)
# 0x3e38
sh $14 14($0)
# 0x3e3c
ori $19 $21 0x206c
# 0x3e40
lw $18 4($0)
# 0x3e44
lw $16 8($0)
# 0x3e48
sw $1 80($0)
# 0x3e4c
mult $1 $23
# 0x3e50
mfhi $20
# 0x3e54
mfhi $31
# 0x3e58
sllv $6 $21 $12
# 0x3e5c
srl $17 $22 25
# 0x3e60
lw $20 16($0)
# 0x3e64
mflo $20
# 0x3e68
sw $4 0($0)
# 0x3e6c
lbu $19 2($0)
# 0x3e70
or $21 $10 $22
# 0x3e74
xor $20 $13 $13
# 0x3e78
lhu $9 14($0)
# 0x3e7c
addi $8 $14 -6569
# 0x3e80
sltu $4 $21 $12
# 0x3e84
nor $31 $8 $20
# 0x3e88
sllv $25 $27 $19
# 0x3e8c
ori $27 $3 0xd594
# 0x3e90
sh $11 38($0)
# 0x3e94
and $25 $31 $23
# 0x3e98
sb $20 20($0)
# 0x3e9c
sub $18 $12 $20
# 0x3ea0
addiu $21 $1 2615
# 0x3ea4
slti $5 $22 32657
# 0x3ea8
addiu $7 $27 21806
# 0x3eac
lb $22 27($0)
# 0x3eb0
mtlo $24
# 0x3eb4
mfhi $1
# 0x3eb8
sltu $10 $19 $3
# 0x3ebc
srlv $9 $30 $17
# 0x3ec0
sltu $31 $3 $11
# 0x3ec4
lh $24 4($0)
# 0x3ec8
sllv $6 $12 $11
# 0x3ecc
sllv $20 $17 $17
# 0x3ed0
lw $21 116($0)
# 0x3ed4
xor $19 $26 $20
# 0x3ed8
xori $27 $4 0xed6b
# 0x3edc
sll $26 $6 12
# 0x3ee0
andi $24 $1 0x5fd0
# 0x3ee4
mult $4 $24
# 0x3ee8
mfhi $23
# 0x3eec
sb $7 19($0)
# 0x3ef0
mfhi $8
# 0x3ef4
ori $2 $31 0x0cd4
# 0x3ef8
lw $7 16($0)
# 0x3efc
sra $16 $23 17
# 0x3f00
nor $8 $9 $19
# 0x3f04
sw $27 16($0)
# 0x3f08
sw $21 0($0)
# 0x3f0c
sllv $4 $19 $6
# 0x3f10
addu $4 $31 $15
# 0x3f14
xori $1 $19 0x7a47
# 0x3f18
mthi $5
# 0x3f1c
sll $26 $19 14
# 0x3f20
addi $10 $1 -17838
# 0x3f24
sll $5 $25 27
# 0x3f28
mthi $1
# 0x3f2c
or $27 $10 $31
# 0x3f30
sltiu $12 $8 29005
# 0x3f34
sll $24 $31 9
# 0x3f38
sh $7 54($0)
# 0x3f3c
lb $11 15($0)
# 0x3f40
mult $15 $13
# 0x3f44
lh $15 14($0)
# 0x3f48
slt $3 $24 $1
# 0x3f4c
lui $17 0xf797
# 0x3f50
add $8 $31 $11
# 0x3f54
ori $10 $6 0xa0f1
# 0x3f58
multu $15 $13
# 0x3f5c
sllv $5 $26 $2
# 0x3f60
lb $23 23($0)
# 0x3f64
nor $30 $23 $3
# 0x3f68
sllv $25 $15 $1
# 0x3f6c
sub $11 $20 $12
# 0x3f70
srlv $20 $24 $12
# 0x3f74
slti $12 $24 -14079
# 0x3f78
sltu $3 $27 $8
# 0x3f7c
sh $16 60($0)
# 0x3f80
sh $2 14($0)
# 0x3f84
lb $11 10($0)
# 0x3f88
sllv $16 $21 $26
# 0x3f8c
lw $6 0($0)
# 0x3f90
sra $14 $13 9
# 0x3f94
sw $8 56($0)
# 0x3f98
sh $4 2($0)
# 0x3f9c
mfhi $21
# 0x3fa0
or $25 $4 $11

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop