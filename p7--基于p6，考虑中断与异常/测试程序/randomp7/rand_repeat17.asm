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
sra $23 $30 1
# 0x3008
xori $10 $23 0xaa85
# 0x300c
lb $21 18($0)
# 0x3010
lh $9 26($0)
# 0x3014
slti $31 $22 18497
# 0x3018
mflo $5
# 0x301c
add $27 $12 $21
# 0x3020
lh $23 20($0)
# 0x3024
mtlo $9
# 0x3028
andi $1 $22 0x4d37
# 0x302c
slt $7 $2 $9
# 0x3030
sb $10 4($0)
# 0x3034
sh $13 6($0)
# 0x3038
lh $21 12($0)
# 0x303c
lb $7 31($0)
# 0x3040
srlv $3 $1 $31
# 0x3044
xori $22 $21 0xe185
# 0x3048
mflo $5
# 0x304c
srlv $18 $30 $4
# 0x3050
nor $30 $19 $14
# 0x3054
sltiu $7 $12 1493
# 0x3058
xori $8 $15 0xce80
# 0x305c
lw $30 20($0)
# 0x3060
sll $31 $22 25
# 0x3064
addi $13 $23 3994
# 0x3068
and $16 $31 $7
# 0x306c
addiu $8 $6 19055
# 0x3070
sltu $4 $10 $21
# 0x3074
sltiu $30 $8 16193
# 0x3078
lui $22 0x8706
# 0x307c
slt $30 $17 $14
# 0x3080
addu $5 $24 $2
# 0x3084
add $31 $31 $1
# 0x3088
lw $6 0($0)
# 0x308c
addu $2 $6 $23
# 0x3090
nor $23 $26 $17
# 0x3094
addiu $25 $22 3442
# 0x3098
slti $23 $16 -11897
# 0x309c
multu $6 $31
# 0x30a0
sw $31 28($0)
# 0x30a4
lh $24 62($0)
# 0x30a8
mflo $6
# 0x30ac
addu $13 $18 $27
# 0x30b0
sltiu $13 $9 1143
# 0x30b4
or $24 $8 $15
# 0x30b8
lbu $22 30($0)
# 0x30bc
mult $8 $17
# 0x30c0
slti $10 $30 17458
# 0x30c4
sh $9 30($0)
# 0x30c8
lw $19 8($0)
# 0x30cc
sltiu $6 $13 29896
# 0x30d0
mtlo $17
# 0x30d4
sltu $21 $1 $8
# 0x30d8
sltiu $11 $9 7193
# 0x30dc
mfhi $3
# 0x30e0
sw $26 24($0)
# 0x30e4
addu $8 $15 $11
# 0x30e8
lb $15 28($0)
# 0x30ec
sw $24 8($0)
# 0x30f0
sltiu $24 $2 2394
# 0x30f4
sltiu $27 $5 5095
# 0x30f8
or $7 $9 $2
# 0x30fc
mtlo $7
# 0x3100
multu $10 $11
# 0x3104
mult $24 $20
# 0x3108
lh $17 22($0)
# 0x310c
xori $20 $22 0x9734
# 0x3110
mthi $21
# 0x3114
sra $21 $8 16
# 0x3118
sltiu $6 $23 6255
# 0x311c
sra $5 $8 25
# 0x3120
sltu $15 $26 $22
# 0x3124
addi $7 $8 -22639
# 0x3128
srl $19 $19 29
# 0x312c
sh $23 0($0)
# 0x3130
or $12 $26 $26
# 0x3134
slt $19 $14 $3
# 0x3138
mthi $24
# 0x313c
xori $16 $18 0x4e98
# 0x3140
addu $10 $21 $6
# 0x3144
andi $8 $5 0x2e49
# 0x3148
mtlo $8
# 0x314c
lhu $25 22($0)
# 0x3150
addiu $23 $27 13310
# 0x3154
xori $21 $2 0xb924
# 0x3158
and $1 $15 $13
# 0x315c
addiu $8 $24 7152
# 0x3160
slti $7 $6 16450
# 0x3164
lh $1 12($0)
# 0x3168
sllv $31 $25 $7
# 0x316c
xori $20 $22 0x0ab5
# 0x3170
srav $22 $18 $24
# 0x3174
sll $13 $12 11
# 0x3178
xori $15 $19 0xef3e
# 0x317c
subu $26 $24 $13
# 0x3180
lw $2 8($0)
# 0x3184
lw $7 56($0)
# 0x3188
lui $8 0xcb9b
# 0x318c
sw $26 28($0)
# 0x3190
or $30 $7 $2
# 0x3194
lw $1 8($0)
# 0x3198
xori $16 $4 0x2193
# 0x319c
addi $3 $23 24632
# 0x31a0
sra $3 $7 25
# 0x31a4
lhu $13 20($0)
# 0x31a8
sltiu $24 $5 16985
# 0x31ac
sw $27 100($0)
# 0x31b0
lui $23 0xfa75
# 0x31b4
lh $13 2($0)
# 0x31b8
add $20 $23 $9
# 0x31bc
or $10 $3 $6
# 0x31c0
lbu $13 27($0)
# 0x31c4
srav $12 $14 $2
# 0x31c8
srlv $12 $24 $10
# 0x31cc
ori $8 $16 0xe8c5
# 0x31d0
sll $30 $2 16
# 0x31d4
sw $10 44($0)
# 0x31d8
srlv $13 $20 $31
# 0x31dc
addu $2 $11 $3
# 0x31e0
slti $4 $27 32657
# 0x31e4
subu $14 $8 $20
# 0x31e8
andi $30 $16 0x4c1c
# 0x31ec
lui $12 0x2010
# 0x31f0
xor $16 $15 $25
# 0x31f4
sw $16 4($0)
# 0x31f8
andi $11 $13 0xdc52
# 0x31fc
sll $14 $14 24
# 0x3200
mflo $1
# 0x3204
lbu $30 13($0)
# 0x3208
lw $2 68($0)
# 0x320c
addiu $26 $20 30491
# 0x3210
lui $19 0x612b
# 0x3214
sh $15 22($0)
# 0x3218
sll $30 $4 27
# 0x321c
lh $1 2($0)
# 0x3220
sb $18 6($0)
# 0x3224
sll $18 $5 2
# 0x3228
multu $15 $12
# 0x322c
sllv $1 $20 $27
# 0x3230
sh $2 14($0)
# 0x3234
sw $17 0($0)
# 0x3238
subu $24 $18 $11
# 0x323c
sh $5 8($0)
# 0x3240
srl $14 $24 28
# 0x3244
srlv $22 $23 $17
# 0x3248
slt $17 $19 $19
# 0x324c
slti $21 $3 -30229
# 0x3250
sh $24 22($0)
# 0x3254
lhu $14 18($0)
# 0x3258
sh $14 2($0)
# 0x325c
lui $26 0x660b
# 0x3260
slt $18 $20 $25
# 0x3264
sb $12 31($0)
# 0x3268
slt $31 $9 $1
# 0x326c
addi $1 $22 4833
# 0x3270
lbu $18 12($0)
# 0x3274
add $31 $3 $21
# 0x3278
lui $18 0x845b
# 0x327c
or $25 $15 $11
# 0x3280
multu $5 $2
# 0x3284
ori $19 $24 0xc703
# 0x3288
xor $15 $17 $7
# 0x328c
sw $3 40($0)
# 0x3290
mtlo $18
# 0x3294
add $21 $13 $15
# 0x3298
xor $1 $3 $31
# 0x329c
srl $6 $16 2
# 0x32a0
sltu $21 $26 $31
# 0x32a4
slti $11 $21 -14536
# 0x32a8
srl $15 $6 26
# 0x32ac
lui $8 0x0917
# 0x32b0
or $15 $3 $13
# 0x32b4
slti $22 $9 -23318
# 0x32b8
srav $9 $8 $30
# 0x32bc
sllv $12 $25 $26
# 0x32c0
srl $16 $30 26
# 0x32c4
lb $2 9($0)
# 0x32c8
sll $8 $4 3
# 0x32cc
lui $27 0xab17
# 0x32d0
lui $20 0x6c82
# 0x32d4
mthi $12
# 0x32d8
lb $27 12($0)
# 0x32dc
and $11 $13 $14
# 0x32e0
srav $22 $30 $18
# 0x32e4
nor $20 $12 $24
# 0x32e8
multu $19 $16
# 0x32ec
lb $24 1($0)
# 0x32f0
srl $7 $6 14
# 0x32f4
sltiu $23 $2 9932
# 0x32f8
srl $31 $4 18
# 0x32fc
srlv $11 $19 $31
# 0x3300
mtlo $19
# 0x3304
xor $14 $24 $18
# 0x3308
slt $17 $26 $15
# 0x330c
srl $24 $18 27
# 0x3310
nor $20 $2 $22
# 0x3314
nor $13 $23 $21
# 0x3318
sltiu $21 $7 27068
# 0x331c
srav $22 $7 $5
# 0x3320
xor $24 $13 $25
# 0x3324
multu $30 $12
# 0x3328
mtlo $23
# 0x332c
lw $16 48($0)
# 0x3330
ori $18 $8 0xaf7a
# 0x3334
lh $1 8($0)
# 0x3338
add $31 $23 $31
# 0x333c
subu $4 $16 $8
# 0x3340
sh $1 10($0)
# 0x3344
srl $18 $24 5
# 0x3348
or $17 $17 $15
# 0x334c
sh $30 0($0)
# 0x3350
lui $24 0xafee
# 0x3354
sw $24 20($0)
# 0x3358
or $16 $1 $9
# 0x335c
slt $9 $23 $5
# 0x3360
xor $23 $13 $3
# 0x3364
lhu $13 6($0)
# 0x3368
sb $17 25($0)
# 0x336c
lh $2 4($0)
# 0x3370
lw $1 20($0)
# 0x3374
addiu $6 $2 4779
# 0x3378
or $10 $25 $2
# 0x337c
mflo $2
# 0x3380
slt $12 $12 $25
# 0x3384
lb $23 1($0)
# 0x3388
lw $26 56($0)
# 0x338c
subu $19 $12 $8
# 0x3390
addu $2 $17 $25
# 0x3394
lbu $1 1($0)
# 0x3398
lui $5 0x339a
# 0x339c
sh $1 4($0)
# 0x33a0
srav $17 $24 $24
# 0x33a4
sw $4 52($0)
# 0x33a8
xor $30 $30 $30
# 0x33ac
sllv $24 $10 $14
# 0x33b0
lh $9 22($0)
# 0x33b4
addi $25 $18 -6694
# 0x33b8
or $17 $8 $24
# 0x33bc
mflo $18
# 0x33c0
slt $2 $17 $3
# 0x33c4
ori $7 $27 0x1ecc
# 0x33c8
sra $26 $20 16
# 0x33cc
lw $12 20($0)
# 0x33d0
srlv $13 $10 $5
# 0x33d4
subu $23 $6 $24
# 0x33d8
mtlo $5
# 0x33dc
mfhi $23
# 0x33e0
mfhi $14
# 0x33e4
nor $26 $22 $7
# 0x33e8
subu $27 $20 $22
# 0x33ec
subu $1 $2 $31
# 0x33f0
srl $15 $19 25
# 0x33f4
sb $10 22($0)
# 0x33f8
sub $19 $7 $30
# 0x33fc
sb $20 26($0)
# 0x3400
nor $4 $11 $24
# 0x3404
lw $20 20($0)
# 0x3408
mtlo $17
# 0x340c
lw $24 24($0)
# 0x3410
mtlo $11
# 0x3414
sh $1 10($0)
# 0x3418
mthi $26
# 0x341c
lui $19 0x80e0
# 0x3420
slti $25 $8 -30698
# 0x3424
mtlo $14
# 0x3428
sh $19 62($0)
# 0x342c
sltiu $8 $5 21751
# 0x3430
srlv $2 $9 $22
# 0x3434
slti $31 $19 11000
# 0x3438
lh $1 32($0)
# 0x343c
slt $27 $8 $18
# 0x3440
slt $4 $21 $27
# 0x3444
lw $31 4($0)
# 0x3448
mthi $24
# 0x344c
multu $5 $9
# 0x3450
mthi $16
# 0x3454
nor $19 $10 $6
# 0x3458
lw $10 72($0)
# 0x345c
mthi $19
# 0x3460
lw $5 64($0)
# 0x3464
lw $13 96($0)
# 0x3468
sw $31 124($0)
# 0x346c
lb $23 17($0)
# 0x3470
multu $16 $30
# 0x3474
sll $27 $4 3
# 0x3478
add $11 $15 $8
# 0x347c
sllv $31 $13 $4
# 0x3480
xori $21 $30 0xa197
# 0x3484
addi $30 $31 -14660
# 0x3488
lhu $9 16($0)
# 0x348c
sw $1 20($0)
# 0x3490
addiu $30 $15 9034
# 0x3494
sltu $17 $3 $15
# 0x3498
lh $23 24($0)
# 0x349c
xori $24 $17 0x4fc6
# 0x34a0
srl $5 $10 10
# 0x34a4
lhu $14 30($0)
# 0x34a8
mflo $5
# 0x34ac
sltu $16 $21 $9
# 0x34b0
multu $6 $1
# 0x34b4
srlv $30 $31 $11
# 0x34b8
xori $24 $14 0xa07c
# 0x34bc
sltiu $26 $30 22219
# 0x34c0
addiu $19 $1 3045
# 0x34c4
lbu $23 16($0)
# 0x34c8
lh $21 12($0)
# 0x34cc
nor $3 $1 $2
# 0x34d0
lh $12 24($0)
# 0x34d4
srlv $8 $31 $2
# 0x34d8
or $3 $8 $21
# 0x34dc
sb $22 0($0)
# 0x34e0
mult $27 $26
# 0x34e4
mtlo $17
# 0x34e8
lh $30 20($0)
# 0x34ec
sb $2 18($0)
# 0x34f0
andi $18 $3 0xece6
# 0x34f4
sltiu $3 $19 6460
# 0x34f8
xori $17 $5 0xd4af
# 0x34fc
and $27 $8 $7
# 0x3500
lbu $9 29($0)
# 0x3504
andi $4 $10 0xb9f2
# 0x3508
lb $17 20($0)
# 0x350c
slt $4 $1 $19
# 0x3510
andi $3 $2 0xfdf8
# 0x3514
sll $3 $9 0
# 0x3518
xor $5 $18 $19
# 0x351c
lb $17 15($0)
# 0x3520
mfhi $16
# 0x3524
slti $15 $23 -3447
# 0x3528
lbu $25 14($0)
# 0x352c
lb $5 5($0)
# 0x3530
mthi $7
# 0x3534
lb $19 18($0)
# 0x3538
mfhi $21
# 0x353c
andi $1 $17 0x1aa8
# 0x3540
addiu $16 $22 17196
# 0x3544
and $10 $5 $1
# 0x3548
nor $19 $5 $31
# 0x354c
lhu $24 30($0)
# 0x3550
srav $8 $27 $7
# 0x3554
sub $17 $11 $23
# 0x3558
lui $9 0xad28
# 0x355c
lh $10 16($0)
# 0x3560
add $17 $27 $22
# 0x3564
addu $31 $26 $23
# 0x3568
sll $24 $19 10
# 0x356c
sw $3 68($0)
# 0x3570
sub $1 $9 $26
# 0x3574
andi $12 $23 0xa474
# 0x3578
and $2 $25 $7
# 0x357c
srav $16 $17 $30
# 0x3580
sh $25 28($0)
# 0x3584
slti $25 $7 18030
# 0x3588
multu $10 $24
# 0x358c
multu $26 $8
# 0x3590
mthi $5
# 0x3594
sw $12 24($0)
# 0x3598
lh $10 28($0)
# 0x359c
lw $27 48($0)
# 0x35a0
sh $3 6($0)
# 0x35a4
add $31 $5 $27
# 0x35a8
andi $12 $18 0x2f1f
# 0x35ac
mtlo $16
# 0x35b0
sw $31 28($0)
# 0x35b4
sh $8 28($0)
# 0x35b8
add $20 $3 $10
# 0x35bc
sh $31 48($0)
# 0x35c0
addiu $9 $19 13325
# 0x35c4
sb $31 8($0)
# 0x35c8
srlv $6 $26 $1
# 0x35cc
nor $6 $2 $30
# 0x35d0
nor $24 $18 $21
# 0x35d4
lh $2 14($0)
# 0x35d8
slt $20 $10 $22
# 0x35dc
slt $30 $3 $3
# 0x35e0
lui $17 0x9c9d
# 0x35e4
sw $30 36($0)
# 0x35e8
mfhi $27
# 0x35ec
lh $15 24($0)
# 0x35f0
mfhi $9
# 0x35f4
addi $14 $27 -22177
# 0x35f8
srav $17 $22 $31
# 0x35fc
add $22 $24 $30
# 0x3600
or $27 $1 $4
# 0x3604
sb $20 11($0)
# 0x3608
mfhi $24
# 0x360c
lw $3 20($0)
# 0x3610
addiu $13 $15 22457
# 0x3614
sh $15 4($0)
# 0x3618
andi $9 $9 0x2b7f
# 0x361c
sub $13 $9 $18
# 0x3620
xor $26 $23 $24
# 0x3624
slt $31 $2 $7
# 0x3628
lw $3 12($0)
# 0x362c
lh $6 30($0)
# 0x3630
mtlo $17
# 0x3634
subu $10 $9 $10
# 0x3638
add $16 $24 $22
# 0x363c
mthi $31
# 0x3640
sw $23 28($0)
# 0x3644
or $3 $20 $22
# 0x3648
srl $7 $12 12
# 0x364c
sw $27 76($0)
# 0x3650
addi $9 $5 21524
# 0x3654
sra $22 $23 21
# 0x3658
lw $19 104($0)
# 0x365c
sw $12 44($0)
# 0x3660
srlv $4 $16 $26
# 0x3664
mult $30 $25
# 0x3668
sh $31 6($0)
# 0x366c
addi $30 $22 22270
# 0x3670
lhu $17 6($0)
# 0x3674
lw $21 12($0)
# 0x3678
xori $7 $12 0x19b0
# 0x367c
lbu $13 1($0)
# 0x3680
sw $1 0($0)
# 0x3684
andi $8 $13 0x8df0
# 0x3688
add $22 $11 $19
# 0x368c
sllv $30 $21 $16
# 0x3690
multu $26 $17
# 0x3694
lh $4 18($0)
# 0x3698
sh $8 4($0)
# 0x369c
or $11 $15 $1
# 0x36a0
subu $2 $25 $22
# 0x36a4
multu $27 $20
# 0x36a8
sltiu $2 $26 23074
# 0x36ac
mult $8 $23
# 0x36b0
sh $12 26($0)
# 0x36b4
xor $24 $19 $13
# 0x36b8
sub $1 $14 $9
# 0x36bc
sub $21 $12 $13
# 0x36c0
nor $9 $21 $6
# 0x36c4
sb $11 23($0)
# 0x36c8
lh $8 12($0)
# 0x36cc
slti $5 $16 21039
# 0x36d0
sltiu $7 $20 26642
# 0x36d4
slti $15 $4 14115
# 0x36d8
lhu $30 14($0)
# 0x36dc
mtlo $17
# 0x36e0
mult $25 $4
# 0x36e4
sub $19 $23 $2
# 0x36e8
ori $25 $31 0x0391
# 0x36ec
lh $5 14($0)
# 0x36f0
sub $19 $4 $23
# 0x36f4
ori $4 $24 0x4194
# 0x36f8
sltiu $31 $26 14256
# 0x36fc
lh $10 6($0)
# 0x3700
lh $17 50($0)
# 0x3704
sll $25 $27 16
# 0x3708
sub $12 $4 $21
# 0x370c
sll $5 $9 14
# 0x3710
sh $5 26($0)
# 0x3714
ori $18 $1 0x87b7
# 0x3718
sltu $23 $18 $30
# 0x371c
sb $5 3($0)
# 0x3720
subu $3 $30 $11
# 0x3724
addi $20 $17 -2202
# 0x3728
sll $13 $6 2
# 0x372c
sltu $11 $17 $2
# 0x3730
srav $9 $24 $3
# 0x3734
sltiu $10 $22 20610
# 0x3738
slti $9 $11 22639
# 0x373c
lhu $4 0($0)
# 0x3740
addi $11 $8 -23825
# 0x3744
ori $10 $10 0x8092
# 0x3748
multu $26 $15
# 0x374c
sltu $13 $20 $20
# 0x3750
mthi $11
# 0x3754
addi $1 $15 21026
# 0x3758
lh $7 30($0)
# 0x375c
sra $17 $24 27
# 0x3760
mflo $5
# 0x3764
sra $5 $16 23
# 0x3768
lhu $2 6($0)
# 0x376c
lw $12 16($0)
# 0x3770
sltiu $18 $6 28651
# 0x3774
mflo $30
# 0x3778
sw $2 8($0)
# 0x377c
sltu $26 $10 $11
# 0x3780
mflo $5
# 0x3784
multu $3 $12
# 0x3788
slt $8 $8 $20
# 0x378c
lw $23 20($0)
# 0x3790
mtlo $24
# 0x3794
lh $7 60($0)
# 0x3798
slti $21 $21 22466
# 0x379c
sub $4 $23 $10
# 0x37a0
lhu $20 24($0)
# 0x37a4
slt $18 $30 $19
# 0x37a8
sb $4 11($0)
# 0x37ac
andi $2 $27 0x9a14
# 0x37b0
mflo $22
# 0x37b4
sub $11 $24 $23
# 0x37b8
sh $21 36($0)
# 0x37bc
sh $5 46($0)
# 0x37c0
srav $7 $30 $21
# 0x37c4
subu $14 $1 $4
# 0x37c8
mfhi $19
# 0x37cc
srl $13 $17 13
# 0x37d0
add $10 $16 $25
# 0x37d4
ori $19 $18 0xf431
# 0x37d8
addiu $4 $20 6091
# 0x37dc
sltu $3 $27 $1
# 0x37e0
lbu $2 16($0)
# 0x37e4
addu $3 $11 $6
# 0x37e8
or $17 $20 $3
# 0x37ec
lh $25 16($0)
# 0x37f0
sltu $5 $14 $26
# 0x37f4
mflo $9
# 0x37f8
sub $4 $31 $31
# 0x37fc
sltu $5 $4 $8
# 0x3800
sllv $11 $14 $4
# 0x3804
xor $6 $12 $22
# 0x3808
addi $23 $4 -7581
# 0x380c
mtlo $21
# 0x3810
xori $24 $12 0x0ca0
# 0x3814
andi $9 $25 0xc9c3
# 0x3818
sb $18 25($0)
# 0x381c
lui $7 0x18f2
# 0x3820
sltiu $18 $1 27401
# 0x3824
add $1 $9 $14
# 0x3828
and $5 $11 $25
# 0x382c
sra $30 $15 6
# 0x3830
slti $10 $12 -17511
# 0x3834
sw $4 28($0)
# 0x3838
ori $30 $26 0xd0b1
# 0x383c
andi $15 $17 0x708f
# 0x3840
nor $15 $13 $30
# 0x3844
slti $4 $26 -31025
# 0x3848
lb $15 24($0)
# 0x384c
mthi $13
# 0x3850
addu $6 $17 $30
# 0x3854
xor $6 $31 $10
# 0x3858
slt $20 $27 $24
# 0x385c
xori $17 $24 0xe74c
# 0x3860
lh $9 6($0)
# 0x3864
add $11 $31 $7
# 0x3868
sll $25 $26 24
# 0x386c
sw $6 0($0)
# 0x3870
slt $12 $27 $2
# 0x3874
lhu $21 28($0)
# 0x3878
srav $4 $11 $17
# 0x387c
sllv $5 $8 $22
# 0x3880
sra $20 $19 14
# 0x3884
add $18 $4 $2
# 0x3888
lw $18 20($0)
# 0x388c
lb $15 23($0)
# 0x3890
slti $22 $24 -18721
# 0x3894
lh $18 18($0)
# 0x3898
srl $8 $26 17
# 0x389c
sh $25 4($0)
# 0x38a0
or $11 $30 $11
# 0x38a4
subu $2 $3 $1
# 0x38a8
slt $20 $31 $10
# 0x38ac
sub $10 $16 $25
# 0x38b0
lw $8 32($0)
# 0x38b4
addiu $18 $30 30386
# 0x38b8
sub $5 $19 $11
# 0x38bc
multu $12 $31
# 0x38c0
mfhi $19
# 0x38c4
lhu $15 16($0)
# 0x38c8
sb $23 10($0)
# 0x38cc
lh $18 30($0)
# 0x38d0
lb $13 16($0)
# 0x38d4
sh $24 4($0)
# 0x38d8
lw $19 76($0)
# 0x38dc
multu $25 $30
# 0x38e0
xori $6 $11 0xe707
# 0x38e4
xor $21 $14 $31
# 0x38e8
or $6 $27 $18
# 0x38ec
sltu $20 $1 $12
# 0x38f0
sltiu $22 $2 13636
# 0x38f4
sb $19 2($0)
# 0x38f8
sh $7 28($0)
# 0x38fc
sh $19 4($0)
# 0x3900
mfhi $19
# 0x3904
addiu $27 $15 20224
# 0x3908
or $11 $13 $18
# 0x390c
lh $17 16($0)
# 0x3910
xori $17 $12 0x5e48
# 0x3914
lh $3 30($0)
# 0x3918
lui $17 0xf386
# 0x391c
sh $1 16($0)
# 0x3920
sll $23 $7 25
# 0x3924
sllv $19 $10 $6
# 0x3928
or $12 $5 $31
# 0x392c
lh $10 46($0)
# 0x3930
sw $24 92($0)
# 0x3934
srl $5 $23 8
# 0x3938
slti $3 $21 6103
# 0x393c
lui $2 0xa87c
# 0x3940
lh $7 14($0)
# 0x3944
multu $14 $16
# 0x3948
sub $15 $17 $26
# 0x394c
add $7 $17 $15
# 0x3950
sra $17 $18 18
# 0x3954
srav $4 $2 $1
# 0x3958
addiu $11 $2 15653
# 0x395c
mtlo $20
# 0x3960
addi $21 $21 -22816
# 0x3964
lh $27 0($0)
# 0x3968
ori $14 $22 0x86c4
# 0x396c
slt $6 $16 $15
# 0x3970
sw $12 16($0)
# 0x3974
mult $26 $14
# 0x3978
andi $19 $11 0xb7d4
# 0x397c
sh $16 36($0)
# 0x3980
srlv $30 $8 $23
# 0x3984
sltiu $30 $1 9650
# 0x3988
xor $18 $11 $31
# 0x398c
mthi $22
# 0x3990
multu $11 $22
# 0x3994
addiu $21 $24 5974
# 0x3998
lb $11 10($0)
# 0x399c
addu $11 $25 $8
# 0x39a0
sh $31 6($0)
# 0x39a4
xor $20 $7 $22
# 0x39a8
lbu $2 25($0)
# 0x39ac
addiu $8 $14 25527
# 0x39b0
lhu $6 10($0)
# 0x39b4
addiu $24 $20 15900
# 0x39b8
lbu $2 27($0)
# 0x39bc
srl $25 $4 21
# 0x39c0
sw $25 24($0)
# 0x39c4
sltiu $6 $16 8208
# 0x39c8
sh $30 2($0)
# 0x39cc
ori $4 $13 0x6210
# 0x39d0
slti $20 $27 6143
# 0x39d4
subu $24 $7 $30
# 0x39d8
mflo $4
# 0x39dc
lw $2 112($0)
# 0x39e0
addu $31 $31 $26
# 0x39e4
addu $27 $8 $5
# 0x39e8
sub $2 $23 $12
# 0x39ec
mthi $17
# 0x39f0
addu $14 $10 $23
# 0x39f4
sra $24 $15 7
# 0x39f8
lw $7 80($0)
# 0x39fc
sh $12 6($0)
# 0x3a00
mult $15 $8
# 0x3a04
lh $31 14($0)
# 0x3a08
sllv $13 $7 $16
# 0x3a0c
lhu $21 30($0)
# 0x3a10
and $14 $8 $24
# 0x3a14
addiu $6 $16 13095
# 0x3a18
lh $24 46($0)
# 0x3a1c
mtlo $7
# 0x3a20
lui $19 0xb125
# 0x3a24
sb $30 0($0)
# 0x3a28
mult $4 $16
# 0x3a2c
lhu $27 14($0)
# 0x3a30
sw $20 40($0)
# 0x3a34
lw $20 56($0)
# 0x3a38
multu $12 $21
# 0x3a3c
lui $6 0x0359
# 0x3a40
srlv $11 $7 $4
# 0x3a44
slt $20 $15 $21
# 0x3a48
multu $3 $17
# 0x3a4c
srav $12 $16 $13
# 0x3a50
sh $17 52($0)
# 0x3a54
sub $25 $1 $30
# 0x3a58
lw $24 12($0)
# 0x3a5c
lw $16 96($0)
# 0x3a60
addiu $3 $9 24081
# 0x3a64
srlv $20 $4 $6
# 0x3a68
srl $2 $3 21
# 0x3a6c
sll $20 $1 3
# 0x3a70
srl $24 $14 30
# 0x3a74
sll $15 $31 6
# 0x3a78
lh $17 46($0)
# 0x3a7c
sll $26 $1 30
# 0x3a80
addiu $18 $10 14645
# 0x3a84
slti $17 $3 -1950
# 0x3a88
mtlo $10
# 0x3a8c
sh $27 20($0)
# 0x3a90
sub $30 $13 $26
# 0x3a94
sllv $9 $27 $8
# 0x3a98
lh $4 28($0)
# 0x3a9c
addi $18 $5 23632
# 0x3aa0
sll $8 $2 23
# 0x3aa4
sub $1 $13 $9
# 0x3aa8
mfhi $23
# 0x3aac
subu $4 $21 $10
# 0x3ab0
mtlo $13
# 0x3ab4
srlv $4 $16 $6
# 0x3ab8
mult $3 $21
# 0x3abc
addi $23 $16 -10503
# 0x3ac0
sh $2 10($0)
# 0x3ac4
sra $26 $3 26
# 0x3ac8
sllv $7 $23 $22
# 0x3acc
multu $22 $2
# 0x3ad0
nor $21 $27 $4
# 0x3ad4
lb $15 1($0)
# 0x3ad8
lbu $23 11($0)
# 0x3adc
sllv $23 $23 $30
# 0x3ae0
sw $16 64($0)
# 0x3ae4
sub $7 $20 $31
# 0x3ae8
sub $23 $31 $5
# 0x3aec
lhu $7 2($0)
# 0x3af0
addu $5 $15 $17
# 0x3af4
sw $6 0($0)
# 0x3af8
lbu $26 22($0)
# 0x3afc
lh $25 46($0)
# 0x3b00
slti $6 $19 -15710
# 0x3b04
lh $30 6($0)
# 0x3b08
add $19 $27 $14
# 0x3b0c
mfhi $21
# 0x3b10
mult $30 $31
# 0x3b14
sllv $17 $15 $1
# 0x3b18
srl $24 $23 23
# 0x3b1c
mflo $8
# 0x3b20
lb $22 14($0)
# 0x3b24
sll $12 $30 9
# 0x3b28
sltu $9 $18 $23
# 0x3b2c
or $26 $31 $27
# 0x3b30
lbu $19 19($0)
# 0x3b34
sll $2 $4 29
# 0x3b38
srl $30 $24 10
# 0x3b3c
mult $16 $12
# 0x3b40
lw $26 20($0)
# 0x3b44
srl $14 $15 11
# 0x3b48
lui $23 0xfeed
# 0x3b4c
sra $17 $24 17
# 0x3b50
lh $16 10($0)
# 0x3b54
and $12 $20 $4
# 0x3b58
lw $27 16($0)
# 0x3b5c
add $15 $13 $22
# 0x3b60
slti $11 $3 -32660
# 0x3b64
sw $9 116($0)
# 0x3b68
mtlo $26
# 0x3b6c
lw $31 36($0)
# 0x3b70
addiu $21 $9 16789
# 0x3b74
sltiu $2 $26 7715
# 0x3b78
srl $5 $31 3
# 0x3b7c
add $19 $4 $3
# 0x3b80
lw $25 0($0)
# 0x3b84
srlv $4 $21 $15
# 0x3b88
sw $17 64($0)
# 0x3b8c
srl $17 $15 5
# 0x3b90
sub $8 $1 $4
# 0x3b94
or $4 $18 $14
# 0x3b98
xori $9 $31 0x0be1
# 0x3b9c
lbu $11 30($0)
# 0x3ba0
sll $31 $26 22
# 0x3ba4
nor $10 $11 $17
# 0x3ba8
srlv $4 $23 $19
# 0x3bac
lw $23 52($0)
# 0x3bb0
subu $19 $25 $8
# 0x3bb4
sh $18 32($0)
# 0x3bb8
lw $26 60($0)
# 0x3bbc
multu $31 $7
# 0x3bc0
srlv $15 $11 $9
# 0x3bc4
sw $5 4($0)
# 0x3bc8
or $15 $27 $31
# 0x3bcc
mflo $23
# 0x3bd0
lui $12 0x5490
# 0x3bd4
mflo $21
# 0x3bd8
sh $27 14($0)
# 0x3bdc
mtlo $11
# 0x3be0
lui $17 0x075c
# 0x3be4
ori $26 $9 0xdfd1
# 0x3be8
sub $22 $13 $8
# 0x3bec
sll $25 $23 14
# 0x3bf0
srl $31 $4 24
# 0x3bf4
andi $5 $17 0xaf16
# 0x3bf8
lh $27 60($0)
# 0x3bfc
lhu $4 26($0)
# 0x3c00
addiu $8 $14 12186
# 0x3c04
subu $4 $30 $9
# 0x3c08
lh $7 54($0)
# 0x3c0c
sub $24 $1 $23
# 0x3c10
lw $11 84($0)
# 0x3c14
ori $24 $30 0xd228
# 0x3c18
add $2 $1 $11
# 0x3c1c
lw $31 8($0)
# 0x3c20
mult $26 $4
# 0x3c24
sra $17 $18 4
# 0x3c28
sltu $12 $6 $24
# 0x3c2c
lb $9 24($0)
# 0x3c30
add $20 $4 $21
# 0x3c34
lh $24 16($0)
# 0x3c38
or $3 $9 $6
# 0x3c3c
and $13 $22 $12
# 0x3c40
lh $19 22($0)
# 0x3c44
sh $4 10($0)
# 0x3c48
lh $20 14($0)
# 0x3c4c
add $11 $27 $13
# 0x3c50
addi $18 $7 24738
# 0x3c54
xori $9 $30 0x2cb0
# 0x3c58
slt $9 $25 $31
# 0x3c5c
lw $3 96($0)
# 0x3c60
add $27 $22 $31
# 0x3c64
sll $16 $2 6
# 0x3c68
sub $14 $10 $26
# 0x3c6c
and $25 $20 $15
# 0x3c70
sb $21 27($0)
# 0x3c74
sub $20 $21 $22
# 0x3c78
sh $2 60($0)
# 0x3c7c
addu $13 $6 $6
# 0x3c80
addu $31 $15 $8
# 0x3c84
sra $13 $21 2
# 0x3c88
sra $4 $19 16
# 0x3c8c
slti $16 $20 -6076
# 0x3c90
slt $14 $31 $21
# 0x3c94
slti $22 $20 27185
# 0x3c98
lw $5 0($0)
# 0x3c9c
addiu $8 $27 16028
# 0x3ca0
sw $16 20($0)
# 0x3ca4
sltu $21 $23 $4
# 0x3ca8
lhu $6 26($0)
# 0x3cac
lb $15 17($0)
# 0x3cb0
lb $31 19($0)
# 0x3cb4
srav $17 $22 $31
# 0x3cb8
sb $31 23($0)
# 0x3cbc
sll $5 $17 17
# 0x3cc0
mthi $14
# 0x3cc4
mthi $23
# 0x3cc8
nor $8 $13 $2
# 0x3ccc
sltiu $14 $3 3251
# 0x3cd0
add $31 $13 $24
# 0x3cd4
mfhi $1
# 0x3cd8
addiu $11 $31 6466
# 0x3cdc
lh $30 26($0)
# 0x3ce0
sll $3 $11 30
# 0x3ce4
sllv $23 $4 $11
# 0x3ce8
mthi $22
# 0x3cec
sw $7 8($0)
# 0x3cf0
sll $21 $19 7
# 0x3cf4
sll $13 $1 5
# 0x3cf8
addiu $15 $27 23648
# 0x3cfc
lh $27 28($0)
# 0x3d00
sh $1 4($0)
# 0x3d04
lui $24 0x0502
# 0x3d08
xor $1 $6 $26
# 0x3d0c
mult $8 $4
# 0x3d10
srlv $16 $20 $13
# 0x3d14
lw $11 28($0)
# 0x3d18
lh $5 24($0)
# 0x3d1c
mthi $8
# 0x3d20
slti $16 $11 8151
# 0x3d24
ori $17 $31 0x1ede
# 0x3d28
add $2 $12 $15
# 0x3d2c
mfhi $2
# 0x3d30
sub $21 $17 $5
# 0x3d34
srav $3 $4 $7
# 0x3d38
sw $24 28($0)
# 0x3d3c
lbu $23 18($0)
# 0x3d40
mthi $23
# 0x3d44
sub $27 $14 $7
# 0x3d48
mthi $12
# 0x3d4c
srlv $27 $3 $31
# 0x3d50
sh $10 14($0)
# 0x3d54
sltiu $5 $7 15605
# 0x3d58
lhu $21 14($0)
# 0x3d5c
sra $18 $23 22
# 0x3d60
or $27 $30 $8
# 0x3d64
ori $11 $24 0xbf2c
# 0x3d68
nor $27 $12 $3
# 0x3d6c
xor $16 $21 $23
# 0x3d70
lbu $19 26($0)
# 0x3d74
sw $31 28($0)
# 0x3d78
srlv $9 $25 $9
# 0x3d7c
lui $7 0x84f3
# 0x3d80
srl $6 $14 29
# 0x3d84
sll $24 $25 12
# 0x3d88
lh $13 36($0)
# 0x3d8c
mflo $25
# 0x3d90
lhu $6 12($0)
# 0x3d94
ori $16 $16 0xf0e6
# 0x3d98
nor $16 $23 $1
# 0x3d9c
nor $27 $22 $24
# 0x3da0
slt $24 $25 $9
# 0x3da4
srl $20 $4 6
# 0x3da8
sh $24 30($0)
# 0x3dac
sll $11 $14 16
# 0x3db0
sll $11 $25 22
# 0x3db4
sh $7 34($0)
# 0x3db8
lw $16 16($0)
# 0x3dbc
sw $19 4($0)
# 0x3dc0
lui $1 0xbdaf
# 0x3dc4
sb $18 29($0)
# 0x3dc8
sw $27 16($0)
# 0x3dcc
mult $24 $24
# 0x3dd0
srav $5 $19 $24
# 0x3dd4
nor $30 $30 $2
# 0x3dd8
lb $16 6($0)
# 0x3ddc
mfhi $5
# 0x3de0
subu $13 $10 $18
# 0x3de4
sltu $31 $19 $31
# 0x3de8
lh $8 8($0)
# 0x3dec
xori $11 $5 0xf591
# 0x3df0
mult $17 $26
# 0x3df4
lh $18 24($0)
# 0x3df8
lh $7 52($0)
# 0x3dfc
sll $1 $10 11
# 0x3e00
sb $10 12($0)
# 0x3e04
lw $31 20($0)
# 0x3e08
addiu $11 $20 4346
# 0x3e0c
mflo $2
# 0x3e10
sw $30 12($0)
# 0x3e14
lh $20 34($0)
# 0x3e18
sh $6 18($0)
# 0x3e1c
sllv $24 $18 $21
# 0x3e20
sll $13 $16 26
# 0x3e24
mtlo $1
# 0x3e28
slt $14 $23 $22
# 0x3e2c
ori $26 $13 0xe611
# 0x3e30
lh $25 6($0)
# 0x3e34
mtlo $26
# 0x3e38
lw $18 24($0)
# 0x3e3c
sub $26 $22 $24
# 0x3e40
sub $11 $17 $19
# 0x3e44
andi $14 $3 0xdf1d
# 0x3e48
mfhi $22
# 0x3e4c
slt $23 $10 $16
# 0x3e50
or $26 $25 $4
# 0x3e54
sltu $10 $17 $3
# 0x3e58
srl $17 $21 15
# 0x3e5c
sw $14 4($0)
# 0x3e60
lw $7 20($0)
# 0x3e64
slt $17 $12 $12
# 0x3e68
mtlo $31
# 0x3e6c
lhu $9 8($0)
# 0x3e70
mflo $9
# 0x3e74
nor $10 $17 $18
# 0x3e78
addiu $10 $22 14545
# 0x3e7c
and $20 $18 $26
# 0x3e80
mthi $7
# 0x3e84
lw $20 4($0)
# 0x3e88
sll $21 $10 10
# 0x3e8c
slt $7 $31 $27
# 0x3e90
nor $9 $17 $23
# 0x3e94
xori $22 $27 0x45fc
# 0x3e98
addi $14 $4 -1272
# 0x3e9c
xori $19 $12 0xfa60
# 0x3ea0
mtlo $31
# 0x3ea4
sltiu $12 $10 19376
# 0x3ea8
mflo $14
# 0x3eac
lbu $3 8($0)
# 0x3eb0
lb $1 16($0)
# 0x3eb4
sw $5 0($0)
# 0x3eb8
ori $25 $11 0xf471
# 0x3ebc
lui $24 0xb000
# 0x3ec0
lh $9 20($0)
# 0x3ec4
or $18 $16 $3
# 0x3ec8
mult $4 $8
# 0x3ecc
addi $4 $14 -15466
# 0x3ed0
mflo $26
# 0x3ed4
addu $3 $18 $25
# 0x3ed8
mtlo $19
# 0x3edc
mult $15 $5
# 0x3ee0
mfhi $4
# 0x3ee4
lui $9 0xa338
# 0x3ee8
sh $20 60($0)
# 0x3eec
sb $22 0($0)
# 0x3ef0
lb $5 0($0)
# 0x3ef4
sw $23 4($0)
# 0x3ef8
slti $16 $30 -27813
# 0x3efc
andi $8 $17 0x1ff3
# 0x3f00
xori $19 $9 0xcba5
# 0x3f04
addiu $9 $12 11460
# 0x3f08
multu $2 $23
# 0x3f0c
addiu $3 $27 14675
# 0x3f10
sltu $8 $30 $15
# 0x3f14
lw $21 28($0)
# 0x3f18
lh $10 2($0)
# 0x3f1c
sh $25 22($0)
# 0x3f20
lh $13 30($0)
# 0x3f24
slti $21 $25 -31519
# 0x3f28
or $21 $10 $10
# 0x3f2c
addi $18 $15 -11844
# 0x3f30
addiu $21 $25 28045
# 0x3f34
slt $18 $9 $25
# 0x3f38
and $11 $6 $25
# 0x3f3c
srl $2 $30 16
# 0x3f40
subu $2 $9 $5
# 0x3f44
sh $7 22($0)
# 0x3f48
multu $17 $21
# 0x3f4c
slt $9 $12 $13
# 0x3f50
sllv $5 $12 $16
# 0x3f54
lh $12 54($0)
# 0x3f58
addu $16 $27 $22
# 0x3f5c
add $7 $23 $9
# 0x3f60
srlv $18 $5 $3
# 0x3f64
sra $14 $23 9
# 0x3f68
srlv $7 $27 $25
# 0x3f6c
srl $15 $12 16
# 0x3f70
mult $10 $6
# 0x3f74
sub $2 $14 $13
# 0x3f78
lui $14 0xa368
# 0x3f7c
mthi $24
# 0x3f80
srav $2 $10 $12
# 0x3f84
and $7 $4 $1
# 0x3f88
or $26 $21 $22
# 0x3f8c
sw $13 28($0)
# 0x3f90
slti $7 $10 -25977
# 0x3f94
and $10 $9 $21
# 0x3f98
slt $23 $19 $19
# 0x3f9c
sra $15 $27 5
# 0x3fa0
srl $23 $9 20

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop