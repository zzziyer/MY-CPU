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
lh $19 6($0)
# 0x3008
sh $2 24($0)
# 0x300c
multu $15 $20
# 0x3010
sh $4 38($0)
# 0x3014
sb $17 31($0)
# 0x3018
subu $12 $3 $1
# 0x301c
xori $26 $5 0x0d14
# 0x3020
addi $22 $25 -31524
# 0x3024
lbu $21 11($0)
# 0x3028
slti $7 $22 13311
# 0x302c
sb $15 20($0)
# 0x3030
srlv $31 $22 $10
# 0x3034
or $13 $10 $25
# 0x3038
sub $13 $19 $9
# 0x303c
sub $6 $5 $5
# 0x3040
addiu $19 $16 19326
# 0x3044
lh $13 30($0)
# 0x3048
and $1 $18 $15
# 0x304c
slt $3 $14 $22
# 0x3050
xor $3 $5 $20
# 0x3054
sw $19 4($0)
# 0x3058
addi $14 $19 -18652
# 0x305c
slt $17 $5 $23
# 0x3060
lh $15 30($0)
# 0x3064
lh $16 16($0)
# 0x3068
mflo $2
# 0x306c
mtlo $11
# 0x3070
addi $11 $27 -19248
# 0x3074
mflo $24
# 0x3078
sltiu $14 $24 7295
# 0x307c
lw $27 20($0)
# 0x3080
or $30 $11 $3
# 0x3084
srl $30 $9 14
# 0x3088
lhu $1 16($0)
# 0x308c
and $22 $1 $27
# 0x3090
nor $20 $26 $30
# 0x3094
lw $9 24($0)
# 0x3098
lh $7 28($0)
# 0x309c
andi $1 $30 0xe6c3
# 0x30a0
sllv $26 $21 $21
# 0x30a4
lh $10 6($0)
# 0x30a8
sltiu $11 $1 27510
# 0x30ac
lbu $24 25($0)
# 0x30b0
addu $4 $9 $14
# 0x30b4
addu $23 $17 $11
# 0x30b8
srlv $21 $21 $5
# 0x30bc
lh $24 30($0)
# 0x30c0
ori $4 $25 0xe89b
# 0x30c4
sra $2 $9 27
# 0x30c8
lw $26 16($0)
# 0x30cc
lui $22 0xdf2c
# 0x30d0
lh $2 26($0)
# 0x30d4
add $24 $30 $4
# 0x30d8
sltiu $16 $15 10849
# 0x30dc
srav $3 $22 $11
# 0x30e0
or $7 $23 $4
# 0x30e4
lhu $8 16($0)
# 0x30e8
mflo $7
# 0x30ec
sw $13 112($0)
# 0x30f0
addiu $19 $31 24136
# 0x30f4
lhu $27 26($0)
# 0x30f8
sh $26 24($0)
# 0x30fc
or $14 $12 $14
# 0x3100
lw $26 104($0)
# 0x3104
srlv $4 $17 $11
# 0x3108
sb $18 27($0)
# 0x310c
sllv $1 $4 $1
# 0x3110
sllv $20 $5 $25
# 0x3114
mflo $19
# 0x3118
multu $5 $14
# 0x311c
srlv $21 $23 $7
# 0x3120
nor $6 $26 $19
# 0x3124
nor $11 $11 $18
# 0x3128
mult $9 $13
# 0x312c
andi $16 $27 0x58ec
# 0x3130
xori $13 $6 0xf840
# 0x3134
sllv $6 $13 $18
# 0x3138
sw $16 104($0)
# 0x313c
and $26 $31 $18
# 0x3140
lb $13 0($0)
# 0x3144
sltiu $19 $14 25909
# 0x3148
lbu $19 31($0)
# 0x314c
mfhi $13
# 0x3150
mflo $23
# 0x3154
lbu $23 12($0)
# 0x3158
lui $19 0xa660
# 0x315c
mflo $8
# 0x3160
addiu $26 $8 14967
# 0x3164
slti $12 $15 -6791
# 0x3168
subu $23 $7 $9
# 0x316c
andi $9 $26 0xdbae
# 0x3170
sra $23 $22 25
# 0x3174
lbu $22 31($0)
# 0x3178
lw $4 20($0)
# 0x317c
lh $15 16($0)
# 0x3180
xor $14 $12 $26
# 0x3184
nor $9 $9 $12
# 0x3188
addu $18 $9 $30
# 0x318c
mtlo $14
# 0x3190
sb $9 2($0)
# 0x3194
sub $19 $1 $23
# 0x3198
slti $18 $23 28578
# 0x319c
sub $31 $17 $31
# 0x31a0
xor $20 $27 $30
# 0x31a4
addi $4 $13 16401
# 0x31a8
addiu $23 $18 10725
# 0x31ac
slti $2 $11 15510
# 0x31b0
sw $14 16($0)
# 0x31b4
sltiu $15 $5 19911
# 0x31b8
mfhi $2
# 0x31bc
mflo $13
# 0x31c0
srav $21 $21 $4
# 0x31c4
slt $2 $19 $13
# 0x31c8
xor $27 $3 $31
# 0x31cc
sb $1 3($0)
# 0x31d0
lw $3 16($0)
# 0x31d4
sb $7 4($0)
# 0x31d8
or $14 $9 $21
# 0x31dc
lh $24 30($0)
# 0x31e0
sw $2 4($0)
# 0x31e4
mflo $9
# 0x31e8
subu $27 $6 $4
# 0x31ec
srav $1 $15 $2
# 0x31f0
or $25 $26 $13
# 0x31f4
nor $13 $6 $8
# 0x31f8
subu $4 $16 $31
# 0x31fc
mtlo $3
# 0x3200
sltiu $18 $19 9342
# 0x3204
lw $11 12($0)
# 0x3208
sw $17 24($0)
# 0x320c
sllv $30 $21 $19
# 0x3210
srlv $26 $23 $16
# 0x3214
addiu $1 $5 5114
# 0x3218
mfhi $5
# 0x321c
lbu $9 24($0)
# 0x3220
sll $30 $6 31
# 0x3224
xori $24 $22 0x9de1
# 0x3228
lbu $30 26($0)
# 0x322c
nor $20 $27 $4
# 0x3230
sb $25 14($0)
# 0x3234
sllv $5 $19 $8
# 0x3238
ori $26 $15 0xdd16
# 0x323c
multu $13 $30
# 0x3240
sra $20 $17 3
# 0x3244
srl $16 $13 20
# 0x3248
sltu $19 $15 $24
# 0x324c
andi $3 $5 0x7529
# 0x3250
addiu $9 $9 25939
# 0x3254
sra $12 $8 18
# 0x3258
addi $10 $30 -6899
# 0x325c
lh $8 2($0)
# 0x3260
sll $23 $5 23
# 0x3264
mult $4 $30
# 0x3268
mflo $16
# 0x326c
slti $14 $5 -18447
# 0x3270
mtlo $5
# 0x3274
xori $10 $22 0x1699
# 0x3278
sra $27 $9 31
# 0x327c
or $24 $25 $24
# 0x3280
lb $4 3($0)
# 0x3284
add $26 $23 $2
# 0x3288
sltu $5 $14 $25
# 0x328c
slt $21 $15 $18
# 0x3290
sra $2 $19 4
# 0x3294
lhu $8 22($0)
# 0x3298
srav $6 $14 $7
# 0x329c
and $2 $2 $3
# 0x32a0
multu $24 $19
# 0x32a4
lh $19 34($0)
# 0x32a8
lh $23 42($0)
# 0x32ac
ori $16 $2 0xa95c
# 0x32b0
sra $23 $16 20
# 0x32b4
sb $13 1($0)
# 0x32b8
subu $4 $27 $24
# 0x32bc
mfhi $4
# 0x32c0
sltiu $22 $30 773
# 0x32c4
add $1 $21 $16
# 0x32c8
lhu $18 16($0)
# 0x32cc
sltiu $25 $17 19241
# 0x32d0
mfhi $27
# 0x32d4
addiu $6 $17 5552
# 0x32d8
lui $21 0x13e9
# 0x32dc
sh $4 16($0)
# 0x32e0
and $3 $10 $3
# 0x32e4
sllv $14 $9 $18
# 0x32e8
andi $22 $27 0xa378
# 0x32ec
addiu $18 $21 12040
# 0x32f0
nor $26 $17 $10
# 0x32f4
sb $25 26($0)
# 0x32f8
lh $2 58($0)
# 0x32fc
multu $7 $12
# 0x3300
lui $31 0x2515
# 0x3304
xor $13 $22 $12
# 0x3308
sll $22 $21 10
# 0x330c
lh $14 42($0)
# 0x3310
srav $7 $19 $24
# 0x3314
addu $24 $19 $7
# 0x3318
and $30 $4 $5
# 0x331c
lw $26 12($0)
# 0x3320
sltiu $11 $3 5266
# 0x3324
sub $6 $7 $14
# 0x3328
sltu $13 $24 $16
# 0x332c
lh $22 0($0)
# 0x3330
sb $19 1($0)
# 0x3334
sh $22 62($0)
# 0x3338
lw $6 108($0)
# 0x333c
addi $12 $4 6106
# 0x3340
sll $30 $20 2
# 0x3344
add $10 $8 $23
# 0x3348
ori $15 $2 0x3143
# 0x334c
lb $20 30($0)
# 0x3350
sub $27 $2 $21
# 0x3354
sw $5 8($0)
# 0x3358
sh $8 16($0)
# 0x335c
andi $16 $5 0x63b1
# 0x3360
mflo $22
# 0x3364
lh $9 4($0)
# 0x3368
subu $6 $27 $31
# 0x336c
and $3 $17 $11
# 0x3370
srav $23 $5 $25
# 0x3374
lbu $18 17($0)
# 0x3378
mtlo $15
# 0x337c
lb $15 26($0)
# 0x3380
slti $30 $8 11239
# 0x3384
sltiu $14 $10 23735
# 0x3388
lui $25 0x7509
# 0x338c
sltiu $24 $27 20997
# 0x3390
srl $7 $25 11
# 0x3394
sltiu $20 $18 29785
# 0x3398
sllv $18 $19 $12
# 0x339c
xori $16 $22 0xa948
# 0x33a0
mfhi $18
# 0x33a4
mult $21 $25
# 0x33a8
sh $4 2($0)
# 0x33ac
add $15 $24 $30
# 0x33b0
xor $16 $6 $23
# 0x33b4
sw $12 36($0)
# 0x33b8
nor $23 $30 $27
# 0x33bc
lui $23 0x50d0
# 0x33c0
lb $5 27($0)
# 0x33c4
lh $22 30($0)
# 0x33c8
addu $15 $5 $10
# 0x33cc
ori $12 $2 0x6cfe
# 0x33d0
and $3 $30 $13
# 0x33d4
sltiu $1 $17 4216
# 0x33d8
sb $11 22($0)
# 0x33dc
lh $22 30($0)
# 0x33e0
mthi $13
# 0x33e4
srav $13 $14 $1
# 0x33e8
sw $24 88($0)
# 0x33ec
slti $10 $12 621
# 0x33f0
slti $22 $4 19921
# 0x33f4
lh $22 46($0)
# 0x33f8
xor $22 $3 $11
# 0x33fc
sh $14 52($0)
# 0x3400
nor $12 $16 $19
# 0x3404
ori $8 $7 0x1a14
# 0x3408
and $31 $18 $27
# 0x340c
xori $2 $2 0xfa98
# 0x3410
slti $2 $10 18267
# 0x3414
lb $20 2($0)
# 0x3418
xori $13 $24 0x46ff
# 0x341c
sh $25 2($0)
# 0x3420
sw $23 48($0)
# 0x3424
mult $1 $19
# 0x3428
sra $14 $9 28
# 0x342c
sub $23 $27 $16
# 0x3430
sllv $26 $14 $31
# 0x3434
andi $11 $3 0xd628
# 0x3438
multu $9 $31
# 0x343c
lw $11 4($0)
# 0x3440
xori $23 $6 0x9295
# 0x3444
slti $26 $17 -17292
# 0x3448
sltiu $18 $27 28938
# 0x344c
lhu $20 20($0)
# 0x3450
mflo $8
# 0x3454
addu $7 $16 $15
# 0x3458
lw $27 0($0)
# 0x345c
multu $31 $11
# 0x3460
subu $8 $18 $22
# 0x3464
sh $21 0($0)
# 0x3468
or $7 $16 $24
# 0x346c
lw $10 0($0)
# 0x3470
ori $11 $5 0x8a06
# 0x3474
sll $17 $14 27
# 0x3478
lbu $9 3($0)
# 0x347c
nor $11 $25 $20
# 0x3480
lb $24 15($0)
# 0x3484
add $21 $27 $1
# 0x3488
lb $1 26($0)
# 0x348c
srav $2 $1 $14
# 0x3490
lui $5 0x3303
# 0x3494
lui $3 0x04ec
# 0x3498
lui $1 0x1f96
# 0x349c
mfhi $21
# 0x34a0
sllv $18 $18 $10
# 0x34a4
sra $10 $8 18
# 0x34a8
sub $7 $22 $5
# 0x34ac
sll $10 $31 15
# 0x34b0
andi $20 $30 0xe36f
# 0x34b4
sh $30 12($0)
# 0x34b8
or $5 $6 $18
# 0x34bc
and $5 $5 $31
# 0x34c0
srav $24 $3 $14
# 0x34c4
lhu $26 6($0)
# 0x34c8
lb $2 8($0)
# 0x34cc
mthi $27
# 0x34d0
slti $21 $2 -7823
# 0x34d4
sw $21 12($0)
# 0x34d8
subu $25 $17 $25
# 0x34dc
lw $11 40($0)
# 0x34e0
slt $12 $14 $10
# 0x34e4
slti $10 $20 -19663
# 0x34e8
sb $23 24($0)
# 0x34ec
mult $12 $27
# 0x34f0
lb $30 8($0)
# 0x34f4
sub $1 $3 $21
# 0x34f8
lui $31 0x093d
# 0x34fc
sra $15 $2 1
# 0x3500
lbu $8 18($0)
# 0x3504
nor $24 $6 $2
# 0x3508
ori $22 $8 0xddd6
# 0x350c
lb $22 28($0)
# 0x3510
mfhi $22
# 0x3514
lh $6 14($0)
# 0x3518
slti $12 $31 6888
# 0x351c
nor $18 $25 $10
# 0x3520
mthi $26
# 0x3524
slt $10 $27 $13
# 0x3528
subu $24 $4 $16
# 0x352c
addiu $1 $24 8839
# 0x3530
slti $9 $17 -2094
# 0x3534
or $11 $18 $21
# 0x3538
lb $19 24($0)
# 0x353c
sh $11 60($0)
# 0x3540
sllv $20 $1 $1
# 0x3544
andi $12 $20 0x7400
# 0x3548
lb $17 27($0)
# 0x354c
sh $7 36($0)
# 0x3550
lw $15 28($0)
# 0x3554
slti $27 $21 14596
# 0x3558
lhu $11 6($0)
# 0x355c
lw $9 0($0)
# 0x3560
ori $4 $17 0x800e
# 0x3564
lbu $23 25($0)
# 0x3568
sltu $22 $3 $10
# 0x356c
mult $1 $6
# 0x3570
sra $18 $19 23
# 0x3574
lb $30 20($0)
# 0x3578
mfhi $26
# 0x357c
nor $2 $21 $16
# 0x3580
multu $14 $14
# 0x3584
slt $22 $31 $31
# 0x3588
lw $3 4($0)
# 0x358c
lb $16 20($0)
# 0x3590
sltu $31 $24 $21
# 0x3594
lb $22 19($0)
# 0x3598
sw $21 100($0)
# 0x359c
lw $7 20($0)
# 0x35a0
lb $6 22($0)
# 0x35a4
sh $14 14($0)
# 0x35a8
mthi $23
# 0x35ac
subu $3 $19 $17
# 0x35b0
sltiu $11 $30 13601
# 0x35b4
add $10 $12 $30
# 0x35b8
slti $9 $10 5620
# 0x35bc
mult $16 $11
# 0x35c0
xori $3 $17 0xf305
# 0x35c4
sb $27 6($0)
# 0x35c8
addu $11 $26 $21
# 0x35cc
addi $19 $13 -10271
# 0x35d0
nor $1 $20 $17
# 0x35d4
and $26 $19 $18
# 0x35d8
andi $22 $13 0x8502
# 0x35dc
lb $20 29($0)
# 0x35e0
lh $6 12($0)
# 0x35e4
mthi $2
# 0x35e8
mflo $21
# 0x35ec
sra $11 $21 27
# 0x35f0
srl $20 $11 7
# 0x35f4
lhu $27 6($0)
# 0x35f8
xori $8 $1 0xbdb8
# 0x35fc
mflo $21
# 0x3600
andi $30 $23 0x4e1d
# 0x3604
or $11 $27 $19
# 0x3608
sll $8 $14 12
# 0x360c
ori $17 $20 0x5680
# 0x3610
mthi $31
# 0x3614
mflo $24
# 0x3618
srlv $24 $7 $20
# 0x361c
nor $27 $17 $14
# 0x3620
sw $15 68($0)
# 0x3624
mflo $24
# 0x3628
addu $3 $17 $21
# 0x362c
mflo $10
# 0x3630
lh $7 8($0)
# 0x3634
ori $17 $4 0x740f
# 0x3638
sltiu $13 $4 8750
# 0x363c
sh $24 18($0)
# 0x3640
lb $13 12($0)
# 0x3644
sll $10 $9 13
# 0x3648
xori $4 $30 0x0ea7
# 0x364c
srlv $14 $22 $5
# 0x3650
lh $21 8($0)
# 0x3654
xori $18 $21 0xd9f3
# 0x3658
lw $10 116($0)
# 0x365c
srl $1 $31 28
# 0x3660
sllv $24 $13 $26
# 0x3664
multu $6 $18
# 0x3668
ori $16 $2 0x0889
# 0x366c
lh $12 18($0)
# 0x3670
lb $27 10($0)
# 0x3674
addi $11 $21 25383
# 0x3678
slt $27 $30 $27
# 0x367c
lw $26 124($0)
# 0x3680
sw $24 60($0)
# 0x3684
ori $17 $27 0x6b39
# 0x3688
srlv $11 $30 $8
# 0x368c
xori $9 $7 0x3597
# 0x3690
sub $25 $18 $24
# 0x3694
sw $10 112($0)
# 0x3698
mfhi $25
# 0x369c
lh $16 18($0)
# 0x36a0
sub $4 $11 $16
# 0x36a4
nor $21 $9 $18
# 0x36a8
lw $10 76($0)
# 0x36ac
multu $13 $16
# 0x36b0
add $4 $21 $16
# 0x36b4
sh $15 0($0)
# 0x36b8
sltiu $10 $4 17604
# 0x36bc
srav $17 $24 $1
# 0x36c0
sb $23 2($0)
# 0x36c4
sh $18 6($0)
# 0x36c8
sll $9 $30 21
# 0x36cc
addiu $10 $21 8756
# 0x36d0
srl $27 $22 8
# 0x36d4
lh $16 28($0)
# 0x36d8
multu $4 $1
# 0x36dc
sw $13 12($0)
# 0x36e0
sh $20 50($0)
# 0x36e4
addu $2 $17 $4
# 0x36e8
xor $6 $26 $17
# 0x36ec
andi $10 $13 0x7bd3
# 0x36f0
xori $27 $22 0x31df
# 0x36f4
sh $8 40($0)
# 0x36f8
add $10 $1 $21
# 0x36fc
lb $26 15($0)
# 0x3700
mflo $7
# 0x3704
slti $5 $27 -6675
# 0x3708
lbu $31 1($0)
# 0x370c
sub $2 $4 $23
# 0x3710
mthi $25
# 0x3714
xor $5 $8 $4
# 0x3718
mfhi $22
# 0x371c
lw $13 8($0)
# 0x3720
slti $25 $30 19003
# 0x3724
sb $14 26($0)
# 0x3728
addu $21 $26 $27
# 0x372c
lhu $30 14($0)
# 0x3730
lhu $14 6($0)
# 0x3734
slt $21 $10 $15
# 0x3738
slt $24 $8 $5
# 0x373c
addiu $20 $24 13893
# 0x3740
sw $5 60($0)
# 0x3744
lbu $7 21($0)
# 0x3748
sltiu $21 $3 6153
# 0x374c
sub $26 $6 $19
# 0x3750
slt $9 $12 $25
# 0x3754
lw $13 40($0)
# 0x3758
sh $2 16($0)
# 0x375c
mult $23 $12
# 0x3760
addi $6 $4 -18998
# 0x3764
mthi $5
# 0x3768
sltu $5 $15 $5
# 0x376c
nor $23 $2 $6
# 0x3770
or $8 $9 $4
# 0x3774
mthi $4
# 0x3778
addu $17 $12 $31
# 0x377c
sw $22 36($0)
# 0x3780
mult $18 $30
# 0x3784
slti $1 $24 -13654
# 0x3788
addu $13 $1 $19
# 0x378c
addi $4 $17 -23559
# 0x3790
sb $24 14($0)
# 0x3794
addiu $4 $24 15487
# 0x3798
nor $26 $25 $31
# 0x379c
ori $13 $9 0x41e7
# 0x37a0
srlv $13 $26 $2
# 0x37a4
sh $8 6($0)
# 0x37a8
and $21 $16 $30
# 0x37ac
srav $13 $2 $16
# 0x37b0
lb $2 15($0)
# 0x37b4
lh $11 10($0)
# 0x37b8
sw $20 28($0)
# 0x37bc
sh $27 0($0)
# 0x37c0
srlv $21 $4 $3
# 0x37c4
or $10 $26 $18
# 0x37c8
lh $25 28($0)
# 0x37cc
addi $20 $23 3901
# 0x37d0
xori $31 $12 0x405c
# 0x37d4
sltiu $6 $31 15536
# 0x37d8
lw $13 8($0)
# 0x37dc
sb $9 16($0)
# 0x37e0
subu $12 $25 $17
# 0x37e4
srl $27 $7 18
# 0x37e8
slt $23 $19 $12
# 0x37ec
slti $21 $20 -28881
# 0x37f0
addi $11 $26 19231
# 0x37f4
and $8 $17 $17
# 0x37f8
lbu $8 11($0)
# 0x37fc
lb $15 9($0)
# 0x3800
sll $13 $31 22
# 0x3804
or $3 $22 $20
# 0x3808
sllv $6 $2 $5
# 0x380c
subu $6 $9 $20
# 0x3810
mtlo $20
# 0x3814
lh $21 24($0)
# 0x3818
xori $12 $15 0x1014
# 0x381c
or $24 $17 $22
# 0x3820
sb $20 3($0)
# 0x3824
lh $26 6($0)
# 0x3828
ori $6 $14 0x10f1
# 0x382c
mfhi $9
# 0x3830
srlv $14 $6 $21
# 0x3834
xori $22 $10 0xa975
# 0x3838
lbu $22 26($0)
# 0x383c
nor $5 $10 $23
# 0x3840
addi $9 $17 -11624
# 0x3844
lw $8 24($0)
# 0x3848
mfhi $10
# 0x384c
multu $2 $15
# 0x3850
srl $10 $11 26
# 0x3854
lw $27 88($0)
# 0x3858
srav $10 $21 $3
# 0x385c
mthi $21
# 0x3860
sh $17 24($0)
# 0x3864
nor $2 $17 $21
# 0x3868
addi $27 $1 1382
# 0x386c
sw $7 60($0)
# 0x3870
sb $20 8($0)
# 0x3874
mfhi $18
# 0x3878
sra $6 $4 2
# 0x387c
lw $2 16($0)
# 0x3880
addu $27 $8 $12
# 0x3884
addi $9 $20 23133
# 0x3888
sltiu $22 $1 2094
# 0x388c
lh $7 16($0)
# 0x3890
subu $22 $2 $24
# 0x3894
mtlo $13
# 0x3898
sltiu $5 $19 11195
# 0x389c
sb $16 1($0)
# 0x38a0
ori $11 $21 0x1405
# 0x38a4
mtlo $25
# 0x38a8
nor $12 $31 $16
# 0x38ac
sltiu $20 $5 29777
# 0x38b0
mthi $3
# 0x38b4
lh $20 40($0)
# 0x38b8
addi $20 $7 -12956
# 0x38bc
multu $31 $24
# 0x38c0
lh $1 26($0)
# 0x38c4
addu $15 $9 $24
# 0x38c8
andi $14 $25 0x5f17
# 0x38cc
lbu $15 11($0)
# 0x38d0
sll $15 $25 31
# 0x38d4
lw $9 24($0)
# 0x38d8
mflo $11
# 0x38dc
sh $11 22($0)
# 0x38e0
andi $1 $26 0x7328
# 0x38e4
lhu $27 8($0)
# 0x38e8
lui $7 0xf0b9
# 0x38ec
lh $13 0($0)
# 0x38f0
sh $2 24($0)
# 0x38f4
srav $24 $31 $12
# 0x38f8
sllv $3 $24 $6
# 0x38fc
lw $13 28($0)
# 0x3900
sh $2 30($0)
# 0x3904
lh $21 16($0)
# 0x3908
multu $5 $17
# 0x390c
srl $11 $9 16
# 0x3910
lbu $12 2($0)
# 0x3914
add $20 $30 $20
# 0x3918
sltu $1 $5 $8
# 0x391c
ori $30 $18 0x7143
# 0x3920
addu $26 $14 $7
# 0x3924
sub $22 $13 $21
# 0x3928
lb $26 14($0)
# 0x392c
lh $25 44($0)
# 0x3930
srlv $25 $1 $16
# 0x3934
srlv $5 $30 $16
# 0x3938
srl $17 $30 27
# 0x393c
lb $7 3($0)
# 0x3940
lhu $8 14($0)
# 0x3944
sh $27 30($0)
# 0x3948
sw $6 20($0)
# 0x394c
add $7 $23 $10
# 0x3950
sltiu $9 $24 10668
# 0x3954
slti $31 $1 10484
# 0x3958
subu $2 $11 $8
# 0x395c
mfhi $26
# 0x3960
sra $25 $27 10
# 0x3964
andi $21 $31 0xc3b2
# 0x3968
addu $9 $25 $24
# 0x396c
lbu $19 20($0)
# 0x3970
srl $23 $24 7
# 0x3974
nor $4 $3 $26
# 0x3978
lw $15 28($0)
# 0x397c
and $31 $27 $18
# 0x3980
srl $12 $15 19
# 0x3984
lh $16 16($0)
# 0x3988
multu $31 $7
# 0x398c
xori $12 $9 0x978c
# 0x3990
lui $8 0xba1a
# 0x3994
lhu $15 24($0)
# 0x3998
srav $31 $2 $22
# 0x399c
slt $30 $24 $1
# 0x39a0
addi $15 $7 26328
# 0x39a4
sllv $1 $2 $4
# 0x39a8
add $23 $10 $6
# 0x39ac
mtlo $31
# 0x39b0
mfhi $17
# 0x39b4
addu $16 $11 $12
# 0x39b8
srl $21 $13 28
# 0x39bc
nor $18 $26 $13
# 0x39c0
mthi $31
# 0x39c4
lb $9 29($0)
# 0x39c8
add $20 $7 $4
# 0x39cc
sh $20 22($0)
# 0x39d0
sllv $22 $25 $16
# 0x39d4
srav $10 $18 $15
# 0x39d8
sll $4 $30 10
# 0x39dc
sw $14 0($0)
# 0x39e0
lui $24 0xceab
# 0x39e4
addu $18 $2 $1
# 0x39e8
lui $15 0x61de
# 0x39ec
lbu $10 24($0)
# 0x39f0
lbu $17 1($0)
# 0x39f4
sh $8 16($0)
# 0x39f8
sltu $31 $4 $24
# 0x39fc
addu $26 $6 $8
# 0x3a00
srlv $18 $25 $13
# 0x3a04
lw $4 52($0)
# 0x3a08
sh $20 38($0)
# 0x3a0c
addu $22 $21 $12
# 0x3a10
multu $31 $24
# 0x3a14
add $21 $11 $25
# 0x3a18
addu $16 $17 $9
# 0x3a1c
srlv $25 $31 $11
# 0x3a20
lhu $17 20($0)
# 0x3a24
ori $26 $16 0x338b
# 0x3a28
ori $30 $18 0x9f0e
# 0x3a2c
mfhi $11
# 0x3a30
sll $20 $16 17
# 0x3a34
lhu $25 2($0)
# 0x3a38
multu $24 $3
# 0x3a3c
addi $20 $11 -17857
# 0x3a40
lh $27 26($0)
# 0x3a44
lui $19 0x949e
# 0x3a48
sub $26 $8 $7
# 0x3a4c
lh $5 30($0)
# 0x3a50
and $14 $18 $1
# 0x3a54
sll $1 $2 2
# 0x3a58
mtlo $31
# 0x3a5c
addu $9 $8 $6
# 0x3a60
sllv $6 $7 $2
# 0x3a64
mflo $24
# 0x3a68
ori $14 $9 0xff93
# 0x3a6c
sb $3 28($0)
# 0x3a70
sra $3 $8 16
# 0x3a74
addiu $21 $5 32612
# 0x3a78
sra $7 $31 11
# 0x3a7c
lw $18 12($0)
# 0x3a80
lui $8 0x5ae3
# 0x3a84
slti $1 $21 -30358
# 0x3a88
lbu $26 9($0)
# 0x3a8c
xori $18 $27 0xabe9
# 0x3a90
sllv $13 $22 $21
# 0x3a94
lh $21 32($0)
# 0x3a98
ori $30 $6 0xd535
# 0x3a9c
nor $9 $4 $9
# 0x3aa0
srl $23 $19 3
# 0x3aa4
lui $25 0x1465
# 0x3aa8
sb $1 21($0)
# 0x3aac
multu $6 $17
# 0x3ab0
srav $22 $8 $4
# 0x3ab4
lui $19 0xdabb
# 0x3ab8
lui $11 0xd0ce
# 0x3abc
mthi $9
# 0x3ac0
sw $11 0($0)
# 0x3ac4
add $27 $9 $5
# 0x3ac8
lw $4 4($0)
# 0x3acc
lui $11 0xad04
# 0x3ad0
mult $8 $18
# 0x3ad4
mthi $5
# 0x3ad8
sh $14 30($0)
# 0x3adc
slt $16 $26 $30
# 0x3ae0
lhu $20 20($0)
# 0x3ae4
lh $15 10($0)
# 0x3ae8
andi $16 $24 0xaea8
# 0x3aec
sub $30 $10 $25
# 0x3af0
mtlo $5
# 0x3af4
lbu $22 29($0)
# 0x3af8
mult $2 $18
# 0x3afc
mult $6 $6
# 0x3b00
lui $18 0xde31
# 0x3b04
sh $7 42($0)
# 0x3b08
lh $3 40($0)
# 0x3b0c
addiu $5 $20 1682
# 0x3b10
lh $31 8($0)
# 0x3b14
srl $1 $24 4
# 0x3b18
lhu $9 24($0)
# 0x3b1c
sw $19 12($0)
# 0x3b20
mult $19 $25
# 0x3b24
or $5 $30 $22
# 0x3b28
srlv $20 $20 $27
# 0x3b2c
sw $21 108($0)
# 0x3b30
andi $7 $25 0xc566
# 0x3b34
sh $8 12($0)
# 0x3b38
sll $13 $26 25
# 0x3b3c
sw $25 28($0)
# 0x3b40
add $30 $31 $11
# 0x3b44
sra $5 $27 15
# 0x3b48
srlv $21 $21 $4
# 0x3b4c
sltu $5 $1 $12
# 0x3b50
sltu $27 $9 $2
# 0x3b54
sh $18 18($0)
# 0x3b58
addi $26 $27 1255
# 0x3b5c
lb $22 23($0)
# 0x3b60
sb $20 29($0)
# 0x3b64
lh $2 54($0)
# 0x3b68
xori $7 $31 0x3ca5
# 0x3b6c
sw $26 12($0)
# 0x3b70
xori $26 $10 0xb9bc
# 0x3b74
or $9 $4 $7
# 0x3b78
srlv $22 $27 $20
# 0x3b7c
addu $24 $16 $30
# 0x3b80
subu $1 $8 $26
# 0x3b84
lh $11 60($0)
# 0x3b88
lw $1 112($0)
# 0x3b8c
sll $27 $23 1
# 0x3b90
sub $5 $14 $31
# 0x3b94
xori $20 $12 0xef78
# 0x3b98
sb $5 7($0)
# 0x3b9c
sra $15 $14 2
# 0x3ba0
xor $24 $30 $26
# 0x3ba4
mult $1 $31
# 0x3ba8
lw $20 52($0)
# 0x3bac
multu $8 $22
# 0x3bb0
ori $31 $14 0xf299
# 0x3bb4
srav $6 $1 $6
# 0x3bb8
sh $16 2($0)
# 0x3bbc
add $7 $6 $10
# 0x3bc0
sb $6 3($0)
# 0x3bc4
addu $26 $14 $14
# 0x3bc8
sub $10 $2 $20
# 0x3bcc
sllv $24 $10 $3
# 0x3bd0
subu $11 $13 $31
# 0x3bd4
mfhi $20
# 0x3bd8
mtlo $2
# 0x3bdc
slt $8 $2 $24
# 0x3be0
srav $14 $2 $25
# 0x3be4
add $7 $8 $31
# 0x3be8
sll $5 $25 15
# 0x3bec
srlv $8 $7 $19
# 0x3bf0
xor $18 $31 $24
# 0x3bf4
add $14 $21 $12
# 0x3bf8
sllv $31 $25 $5
# 0x3bfc
mult $22 $26
# 0x3c00
lb $6 13($0)
# 0x3c04
lb $6 3($0)
# 0x3c08
sub $23 $7 $16
# 0x3c0c
addi $2 $5 -1910
# 0x3c10
mflo $23
# 0x3c14
mthi $21
# 0x3c18
lhu $3 0($0)
# 0x3c1c
andi $1 $14 0x3f07
# 0x3c20
sh $22 54($0)
# 0x3c24
lhu $4 26($0)
# 0x3c28
xor $16 $27 $11
# 0x3c2c
add $5 $13 $26
# 0x3c30
lhu $30 6($0)
# 0x3c34
xor $3 $3 $9
# 0x3c38
sub $22 $23 $22
# 0x3c3c
xori $5 $9 0x1531
# 0x3c40
srl $8 $12 0
# 0x3c44
mult $14 $23
# 0x3c48
sub $19 $26 $31
# 0x3c4c
ori $22 $24 0x42be
# 0x3c50
sb $26 18($0)
# 0x3c54
mfhi $14
# 0x3c58
lb $9 29($0)
# 0x3c5c
xor $14 $22 $26
# 0x3c60
lui $20 0x2fa0
# 0x3c64
addi $25 $11 -18947
# 0x3c68
addi $5 $27 20213
# 0x3c6c
lhu $16 16($0)
# 0x3c70
slti $7 $12 -19562
# 0x3c74
lhu $26 2($0)
# 0x3c78
sb $16 27($0)
# 0x3c7c
srav $13 $17 $14
# 0x3c80
lh $1 42($0)
# 0x3c84
addi $26 $10 11755
# 0x3c88
addu $26 $4 $18
# 0x3c8c
lui $9 0x08c8
# 0x3c90
xor $22 $21 $23
# 0x3c94
andi $1 $15 0x1f4d
# 0x3c98
sltiu $23 $21 5698
# 0x3c9c
srl $1 $3 30
# 0x3ca0
slti $12 $12 32037
# 0x3ca4
slti $1 $11 -26480
# 0x3ca8
lhu $4 14($0)
# 0x3cac
sb $13 2($0)
# 0x3cb0
sb $21 24($0)
# 0x3cb4
lh $1 58($0)
# 0x3cb8
lh $20 14($0)
# 0x3cbc
lw $2 28($0)
# 0x3cc0
lui $25 0x8a5d
# 0x3cc4
srav $11 $5 $26
# 0x3cc8
lh $13 26($0)
# 0x3ccc
sw $30 28($0)
# 0x3cd0
srav $27 $31 $11
# 0x3cd4
sltu $1 $11 $26
# 0x3cd8
sw $30 104($0)
# 0x3cdc
xor $16 $6 $24
# 0x3ce0
xor $3 $22 $20
# 0x3ce4
mthi $21
# 0x3ce8
addu $20 $19 $19
# 0x3cec
sra $15 $9 1
# 0x3cf0
addi $12 $9 -31432
# 0x3cf4
addiu $3 $6 20212
# 0x3cf8
lhu $21 24($0)
# 0x3cfc
srlv $15 $22 $31
# 0x3d00
sw $5 84($0)
# 0x3d04
lh $17 4($0)
# 0x3d08
sh $7 0($0)
# 0x3d0c
srav $14 $20 $17
# 0x3d10
sb $9 18($0)
# 0x3d14
mtlo $23
# 0x3d18
and $15 $18 $23
# 0x3d1c
sw $27 76($0)
# 0x3d20
addi $17 $3 -20544
# 0x3d24
multu $19 $6
# 0x3d28
lh $16 46($0)
# 0x3d2c
sh $7 24($0)
# 0x3d30
sltu $7 $18 $17
# 0x3d34
andi $24 $3 0xb26c
# 0x3d38
sh $16 22($0)
# 0x3d3c
lh $20 40($0)
# 0x3d40
lhu $11 10($0)
# 0x3d44
or $26 $7 $18
# 0x3d48
addi $21 $7 -26779
# 0x3d4c
xor $5 $3 $30
# 0x3d50
srl $30 $9 15
# 0x3d54
sw $25 88($0)
# 0x3d58
lw $6 12($0)
# 0x3d5c
lh $12 20($0)
# 0x3d60
sw $31 4($0)
# 0x3d64
sltu $2 $17 $8
# 0x3d68
nor $6 $23 $21
# 0x3d6c
mult $12 $6
# 0x3d70
mult $19 $30
# 0x3d74
lw $17 24($0)
# 0x3d78
lb $5 12($0)
# 0x3d7c
srav $31 $3 $21
# 0x3d80
lw $13 24($0)
# 0x3d84
sub $9 $24 $2
# 0x3d88
nor $31 $14 $26
# 0x3d8c
multu $12 $26
# 0x3d90
sub $7 $19 $19
# 0x3d94
lh $8 24($0)
# 0x3d98
srlv $30 $9 $18
# 0x3d9c
lh $24 38($0)
# 0x3da0
mult $18 $5
# 0x3da4
mthi $24
# 0x3da8
sltiu $12 $5 17606
# 0x3dac
sw $16 84($0)
# 0x3db0
srl $1 $7 21
# 0x3db4
sw $22 44($0)
# 0x3db8
sra $15 $17 13
# 0x3dbc
sw $31 28($0)
# 0x3dc0
sw $24 72($0)
# 0x3dc4
sra $24 $8 13
# 0x3dc8
xor $23 $1 $9
# 0x3dcc
sll $22 $31 22
# 0x3dd0
sh $5 36($0)
# 0x3dd4
subu $26 $3 $5
# 0x3dd8
sra $9 $9 11
# 0x3ddc
sllv $26 $6 $16
# 0x3de0
xor $30 $19 $6
# 0x3de4
sub $14 $22 $16
# 0x3de8
xor $7 $14 $30
# 0x3dec
lb $4 8($0)
# 0x3df0
sw $14 112($0)
# 0x3df4
sltu $21 $2 $12
# 0x3df8
lui $5 0xfa11
# 0x3dfc
lb $30 7($0)
# 0x3e00
lhu $4 20($0)
# 0x3e04
sllv $21 $23 $7
# 0x3e08
sw $27 60($0)
# 0x3e0c
sh $24 8($0)
# 0x3e10
sltiu $23 $20 14401
# 0x3e14
slt $16 $13 $3
# 0x3e18
srlv $18 $7 $19
# 0x3e1c
sh $21 60($0)
# 0x3e20
addiu $2 $7 23009
# 0x3e24
mtlo $7
# 0x3e28
xor $25 $25 $1
# 0x3e2c
mflo $7
# 0x3e30
lh $26 62($0)
# 0x3e34
lui $18 0xd4f2
# 0x3e38
ori $24 $10 0x4d0b
# 0x3e3c
mflo $23
# 0x3e40
subu $6 $20 $13
# 0x3e44
lh $26 14($0)
# 0x3e48
sh $1 24($0)
# 0x3e4c
sllv $8 $22 $20
# 0x3e50
sltu $23 $2 $15
# 0x3e54
and $6 $8 $7
# 0x3e58
lw $22 64($0)
# 0x3e5c
lbu $30 6($0)
# 0x3e60
ori $7 $19 0x6a42
# 0x3e64
and $18 $8 $23
# 0x3e68
lui $25 0x7c04
# 0x3e6c
lh $20 0($0)
# 0x3e70
add $20 $24 $1
# 0x3e74
addi $31 $4 -13296
# 0x3e78
mfhi $10
# 0x3e7c
and $19 $3 $16
# 0x3e80
add $8 $31 $25
# 0x3e84
sllv $8 $17 $11
# 0x3e88
sw $16 12($0)
# 0x3e8c
sw $19 36($0)
# 0x3e90
lh $4 0($0)
# 0x3e94
srav $11 $22 $4
# 0x3e98
mult $13 $25
# 0x3e9c
multu $15 $20
# 0x3ea0
sub $4 $23 $26
# 0x3ea4
xori $20 $5 0xeeef
# 0x3ea8
add $1 $21 $26
# 0x3eac
mult $8 $23
# 0x3eb0
sw $20 28($0)
# 0x3eb4
xori $27 $30 0xa91b
# 0x3eb8
lbu $18 2($0)
# 0x3ebc
addiu $15 $25 15962
# 0x3ec0
lb $25 15($0)
# 0x3ec4
lw $12 28($0)
# 0x3ec8
mtlo $24
# 0x3ecc
mtlo $2
# 0x3ed0
xori $31 $8 0xabc9
# 0x3ed4
add $30 $2 $16
# 0x3ed8
sll $27 $25 2
# 0x3edc
subu $11 $8 $22
# 0x3ee0
srav $22 $25 $19
# 0x3ee4
sw $18 8($0)
# 0x3ee8
srlv $25 $13 $8
# 0x3eec
add $1 $8 $31
# 0x3ef0
lw $31 12($0)
# 0x3ef4
lh $17 20($0)
# 0x3ef8
lh $17 24($0)
# 0x3efc
addi $11 $27 29343
# 0x3f00
addi $1 $26 26668
# 0x3f04
lui $27 0xad69
# 0x3f08
sltu $24 $6 $7
# 0x3f0c
addu $11 $10 $18
# 0x3f10
addu $27 $31 $1
# 0x3f14
multu $23 $11
# 0x3f18
sh $16 10($0)
# 0x3f1c
sw $2 4($0)
# 0x3f20
lhu $27 6($0)
# 0x3f24
nor $20 $16 $22
# 0x3f28
lh $31 40($0)
# 0x3f2c
mthi $25
# 0x3f30
srlv $11 $31 $13
# 0x3f34
lhu $20 6($0)
# 0x3f38
addi $23 $12 17940
# 0x3f3c
ori $26 $26 0xb3f2
# 0x3f40
slt $19 $18 $23
# 0x3f44
sh $27 16($0)
# 0x3f48
lhu $22 14($0)
# 0x3f4c
mflo $2
# 0x3f50
xor $10 $19 $17
# 0x3f54
xor $15 $26 $2
# 0x3f58
sh $12 30($0)
# 0x3f5c
srl $3 $7 13
# 0x3f60
subu $26 $14 $26
# 0x3f64
lui $27 0x798e
# 0x3f68
lb $2 11($0)
# 0x3f6c
srlv $24 $22 $22
# 0x3f70
lhu $12 8($0)
# 0x3f74
sltiu $21 $10 23253
# 0x3f78
lw $21 12($0)
# 0x3f7c
sltiu $24 $18 21683
# 0x3f80
srlv $10 $14 $21
# 0x3f84
andi $8 $25 0xb337
# 0x3f88
sub $20 $5 $26
# 0x3f8c
addiu $21 $30 3850
# 0x3f90
lbu $13 19($0)
# 0x3f94
lh $11 6($0)
# 0x3f98
sw $30 16($0)
# 0x3f9c
ori $5 $14 0xece1
# 0x3fa0
multu $17 $23

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop