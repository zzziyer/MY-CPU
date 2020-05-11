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
addiu $27 $23 26095
# 0x3008
and $13 $25 $18
# 0x300c
lh $30 48($0)
# 0x3010
mtlo $14
# 0x3014
lh $17 12($0)
# 0x3018
xor $12 $20 $1
# 0x301c
sllv $5 $17 $2
# 0x3020
sh $19 26($0)
# 0x3024
nor $9 $1 $12
# 0x3028
lhu $30 16($0)
# 0x302c
sub $15 $11 $4
# 0x3030
mult $30 $4
# 0x3034
lbu $16 12($0)
# 0x3038
xor $27 $18 $14
# 0x303c
sh $10 10($0)
# 0x3040
mfhi $18
# 0x3044
add $7 $2 $2
# 0x3048
add $10 $14 $22
# 0x304c
lw $24 16($0)
# 0x3050
add $30 $10 $9
# 0x3054
add $22 $27 $20
# 0x3058
ori $20 $23 0x2e86
# 0x305c
or $25 $1 $17
# 0x3060
sra $19 $21 16
# 0x3064
sltiu $27 $9 24266
# 0x3068
slt $13 $30 $9
# 0x306c
and $26 $11 $31
# 0x3070
srlv $24 $31 $16
# 0x3074
subu $12 $9 $18
# 0x3078
srl $11 $23 26
# 0x307c
mtlo $16
# 0x3080
mfhi $4
# 0x3084
sh $11 26($0)
# 0x3088
sh $19 16($0)
# 0x308c
sub $15 $9 $15
# 0x3090
addiu $26 $18 11723
# 0x3094
addi $1 $22 -25307
# 0x3098
mflo $9
# 0x309c
lb $9 7($0)
# 0x30a0
lbu $5 20($0)
# 0x30a4
mfhi $1
# 0x30a8
slti $4 $11 -17514
# 0x30ac
lui $4 0x47b0
# 0x30b0
slti $11 $1 -3576
# 0x30b4
addiu $17 $21 22168
# 0x30b8
lui $31 0x1a14
# 0x30bc
sltiu $9 $20 5396
# 0x30c0
lbu $20 0($0)
# 0x30c4
slti $2 $8 31799
# 0x30c8
or $16 $19 $12
# 0x30cc
slti $30 $3 -5065
# 0x30d0
addu $19 $10 $30
# 0x30d4
nor $20 $23 $8
# 0x30d8
or $10 $18 $8
# 0x30dc
sra $26 $17 4
# 0x30e0
or $31 $9 $17
# 0x30e4
lw $5 76($0)
# 0x30e8
sll $22 $31 6
# 0x30ec
sb $22 18($0)
# 0x30f0
mthi $15
# 0x30f4
add $23 $8 $7
# 0x30f8
lb $9 29($0)
# 0x30fc
lw $23 48($0)
# 0x3100
mflo $27
# 0x3104
slt $6 $7 $27
# 0x3108
mtlo $19
# 0x310c
xori $7 $5 0xf687
# 0x3110
addiu $27 $19 297
# 0x3114
multu $1 $10
# 0x3118
lui $14 0x85a4
# 0x311c
srl $13 $18 12
# 0x3120
sll $25 $24 7
# 0x3124
slti $5 $3 14849
# 0x3128
sh $15 6($0)
# 0x312c
sh $30 4($0)
# 0x3130
add $2 $11 $20
# 0x3134
srl $10 $20 31
# 0x3138
lw $8 4($0)
# 0x313c
srl $13 $7 25
# 0x3140
addu $31 $23 $18
# 0x3144
subu $25 $22 $24
# 0x3148
and $25 $10 $8
# 0x314c
lb $23 4($0)
# 0x3150
srl $3 $20 31
# 0x3154
mflo $25
# 0x3158
sw $22 80($0)
# 0x315c
ori $16 $5 0xf458
# 0x3160
xor $15 $17 $31
# 0x3164
lh $5 24($0)
# 0x3168
mflo $7
# 0x316c
lh $20 58($0)
# 0x3170
lh $1 12($0)
# 0x3174
lbu $18 2($0)
# 0x3178
lb $7 22($0)
# 0x317c
mflo $27
# 0x3180
mflo $10
# 0x3184
subu $5 $27 $6
# 0x3188
addi $2 $26 20570
# 0x318c
addiu $15 $24 8496
# 0x3190
addu $4 $8 $4
# 0x3194
mflo $22
# 0x3198
lh $1 22($0)
# 0x319c
and $20 $17 $22
# 0x31a0
ori $23 $8 0x905b
# 0x31a4
ori $30 $13 0x207f
# 0x31a8
or $4 $30 $22
# 0x31ac
lh $22 48($0)
# 0x31b0
lh $19 34($0)
# 0x31b4
addi $4 $7 -16138
# 0x31b8
lw $26 8($0)
# 0x31bc
sub $21 $16 $13
# 0x31c0
mult $22 $11
# 0x31c4
mult $1 $4
# 0x31c8
sltiu $1 $14 2370
# 0x31cc
mflo $4
# 0x31d0
add $22 $27 $22
# 0x31d4
sllv $18 $24 $1
# 0x31d8
subu $20 $20 $6
# 0x31dc
mflo $7
# 0x31e0
xor $6 $9 $10
# 0x31e4
andi $26 $20 0xc60e
# 0x31e8
addi $23 $6 27924
# 0x31ec
slt $15 $12 $21
# 0x31f0
xori $16 $17 0xe2a2
# 0x31f4
sh $6 6($0)
# 0x31f8
mthi $5
# 0x31fc
slti $22 $1 23753
# 0x3200
slt $22 $2 $25
# 0x3204
slti $9 $21 -31087
# 0x3208
subu $19 $17 $5
# 0x320c
slti $11 $18 2321
# 0x3210
addu $6 $3 $1
# 0x3214
lbu $8 0($0)
# 0x3218
sllv $11 $12 $10
# 0x321c
sh $5 8($0)
# 0x3220
and $24 $11 $10
# 0x3224
mthi $8
# 0x3228
lhu $7 20($0)
# 0x322c
sllv $4 $17 $7
# 0x3230
mult $7 $2
# 0x3234
mtlo $8
# 0x3238
andi $11 $26 0x2356
# 0x323c
slt $8 $20 $31
# 0x3240
srlv $1 $9 $12
# 0x3244
srlv $25 $20 $10
# 0x3248
sll $1 $5 22
# 0x324c
slt $12 $31 $12
# 0x3250
lhu $13 12($0)
# 0x3254
multu $10 $19
# 0x3258
ori $6 $16 0x6ca6
# 0x325c
mult $16 $5
# 0x3260
multu $1 $25
# 0x3264
addiu $3 $21 16903
# 0x3268
or $11 $27 $26
# 0x326c
slt $24 $25 $26
# 0x3270
lhu $10 20($0)
# 0x3274
lbu $6 17($0)
# 0x3278
add $23 $7 $12
# 0x327c
or $2 $8 $11
# 0x3280
lw $19 0($0)
# 0x3284
addiu $10 $13 5218
# 0x3288
addiu $24 $10 29383
# 0x328c
lw $1 8($0)
# 0x3290
srav $18 $9 $12
# 0x3294
lh $18 22($0)
# 0x3298
sllv $8 $24 $3
# 0x329c
sh $1 0($0)
# 0x32a0
sh $17 30($0)
# 0x32a4
sh $4 12($0)
# 0x32a8
lbu $19 14($0)
# 0x32ac
multu $3 $10
# 0x32b0
addi $14 $3 -31786
# 0x32b4
sllv $31 $16 $27
# 0x32b8
sltiu $5 $1 29074
# 0x32bc
lui $17 0x5a81
# 0x32c0
mflo $6
# 0x32c4
multu $13 $13
# 0x32c8
lw $13 8($0)
# 0x32cc
addi $30 $19 26103
# 0x32d0
slti $11 $26 -25054
# 0x32d4
sra $27 $1 25
# 0x32d8
addu $18 $27 $8
# 0x32dc
addu $25 $27 $21
# 0x32e0
lw $27 12($0)
# 0x32e4
xori $13 $23 0x7f66
# 0x32e8
sllv $11 $25 $30
# 0x32ec
multu $17 $23
# 0x32f0
nor $7 $15 $7
# 0x32f4
lbu $26 20($0)
# 0x32f8
lb $18 13($0)
# 0x32fc
sh $5 52($0)
# 0x3300
add $14 $23 $26
# 0x3304
subu $1 $9 $9
# 0x3308
multu $15 $9
# 0x330c
sub $8 $15 $18
# 0x3310
srlv $15 $6 $31
# 0x3314
addiu $17 $20 46
# 0x3318
lh $8 30($0)
# 0x331c
lbu $15 26($0)
# 0x3320
lh $17 22($0)
# 0x3324
multu $4 $15
# 0x3328
mult $15 $9
# 0x332c
xori $5 $9 0xebf4
# 0x3330
sb $26 20($0)
# 0x3334
sb $2 27($0)
# 0x3338
nor $12 $15 $3
# 0x333c
sh $5 6($0)
# 0x3340
sllv $26 $4 $26
# 0x3344
addiu $12 $3 31831
# 0x3348
sw $23 4($0)
# 0x334c
slti $14 $11 18211
# 0x3350
sra $10 $1 28
# 0x3354
multu $2 $20
# 0x3358
addu $14 $13 $22
# 0x335c
multu $7 $10
# 0x3360
add $1 $21 $9
# 0x3364
srl $7 $24 23
# 0x3368
addiu $4 $12 11427
# 0x336c
mfhi $18
# 0x3370
sh $4 16($0)
# 0x3374
srav $9 $25 $5
# 0x3378
addu $23 $25 $1
# 0x337c
sllv $10 $19 $5
# 0x3380
xor $5 $5 $3
# 0x3384
addi $4 $17 20229
# 0x3388
multu $26 $16
# 0x338c
sll $27 $5 5
# 0x3390
addiu $4 $6 7566
# 0x3394
lbu $10 20($0)
# 0x3398
lhu $19 30($0)
# 0x339c
srav $5 $8 $7
# 0x33a0
mflo $16
# 0x33a4
lh $2 18($0)
# 0x33a8
and $7 $13 $25
# 0x33ac
lb $22 2($0)
# 0x33b0
sh $18 56($0)
# 0x33b4
sb $13 2($0)
# 0x33b8
sub $6 $6 $22
# 0x33bc
sra $19 $12 7
# 0x33c0
sllv $6 $22 $11
# 0x33c4
slti $3 $19 -22869
# 0x33c8
srav $22 $22 $22
# 0x33cc
slt $31 $24 $4
# 0x33d0
ori $2 $5 0x971c
# 0x33d4
xori $8 $13 0x6f81
# 0x33d8
srlv $1 $20 $27
# 0x33dc
sllv $30 $19 $8
# 0x33e0
sra $4 $20 28
# 0x33e4
sb $16 17($0)
# 0x33e8
lh $12 58($0)
# 0x33ec
addiu $14 $2 26681
# 0x33f0
mtlo $13
# 0x33f4
slti $16 $31 4728
# 0x33f8
srl $3 $7 14
# 0x33fc
sw $1 68($0)
# 0x3400
mtlo $9
# 0x3404
addu $9 $25 $18
# 0x3408
mult $3 $6
# 0x340c
lb $3 26($0)
# 0x3410
nor $19 $18 $15
# 0x3414
sub $22 $20 $31
# 0x3418
sltiu $21 $14 10165
# 0x341c
add $15 $26 $5
# 0x3420
slt $14 $31 $13
# 0x3424
addu $12 $27 $22
# 0x3428
sllv $16 $4 $22
# 0x342c
lh $8 34($0)
# 0x3430
lhu $19 18($0)
# 0x3434
srl $16 $25 17
# 0x3438
sltu $20 $13 $9
# 0x343c
lh $16 2($0)
# 0x3440
srlv $3 $13 $15
# 0x3444
subu $19 $4 $20
# 0x3448
lh $10 22($0)
# 0x344c
srav $16 $17 $6
# 0x3450
lb $6 3($0)
# 0x3454
mflo $15
# 0x3458
sub $19 $10 $10
# 0x345c
sb $15 6($0)
# 0x3460
mfhi $6
# 0x3464
mtlo $11
# 0x3468
addiu $5 $25 18547
# 0x346c
or $3 $30 $24
# 0x3470
mfhi $18
# 0x3474
lbu $22 13($0)
# 0x3478
lui $20 0x23ae
# 0x347c
mult $2 $23
# 0x3480
sltu $17 $7 $23
# 0x3484
lb $31 21($0)
# 0x3488
mflo $2
# 0x348c
sw $13 20($0)
# 0x3490
lh $1 54($0)
# 0x3494
srav $19 $5 $25
# 0x3498
lui $17 0x393a
# 0x349c
srl $20 $15 13
# 0x34a0
addiu $23 $19 15501
# 0x34a4
lbu $23 13($0)
# 0x34a8
lh $15 40($0)
# 0x34ac
xori $31 $30 0xf002
# 0x34b0
sb $23 2($0)
# 0x34b4
sra $6 $30 25
# 0x34b8
and $13 $5 $13
# 0x34bc
lh $18 32($0)
# 0x34c0
lw $11 120($0)
# 0x34c4
sb $23 27($0)
# 0x34c8
srlv $18 $22 $1
# 0x34cc
sh $26 24($0)
# 0x34d0
ori $26 $15 0x18d7
# 0x34d4
sltiu $8 $27 21968
# 0x34d8
sh $20 52($0)
# 0x34dc
mflo $22
# 0x34e0
mflo $13
# 0x34e4
lbu $21 19($0)
# 0x34e8
sw $16 36($0)
# 0x34ec
lui $13 0x10ae
# 0x34f0
sltu $26 $22 $23
# 0x34f4
xor $27 $3 $13
# 0x34f8
mult $13 $21
# 0x34fc
mult $21 $3
# 0x3500
sh $26 24($0)
# 0x3504
nor $14 $13 $25
# 0x3508
sllv $17 $31 $10
# 0x350c
srl $2 $8 2
# 0x3510
sub $6 $6 $3
# 0x3514
srl $10 $25 4
# 0x3518
lh $25 0($0)
# 0x351c
andi $16 $13 0x49d2
# 0x3520
mfhi $21
# 0x3524
mtlo $31
# 0x3528
sll $16 $4 24
# 0x352c
lbu $19 13($0)
# 0x3530
slti $16 $8 10713
# 0x3534
lw $25 100($0)
# 0x3538
lw $4 72($0)
# 0x353c
ori $6 $18 0xd08f
# 0x3540
sll $4 $6 20
# 0x3544
addu $30 $21 $2
# 0x3548
andi $16 $30 0x832b
# 0x354c
or $27 $13 $31
# 0x3550
mtlo $23
# 0x3554
subu $8 $14 $15
# 0x3558
add $19 $2 $27
# 0x355c
sw $5 52($0)
# 0x3560
sltiu $22 $24 15263
# 0x3564
sltu $14 $13 $12
# 0x3568
sllv $24 $19 $12
# 0x356c
andi $31 $10 0x265a
# 0x3570
mthi $19
# 0x3574
sltiu $3 $8 20554
# 0x3578
ori $23 $25 0x740c
# 0x357c
and $4 $19 $11
# 0x3580
srav $1 $31 $2
# 0x3584
or $11 $27 $11
# 0x3588
nor $16 $12 $14
# 0x358c
sltiu $18 $4 21007
# 0x3590
lhu $11 12($0)
# 0x3594
ori $30 $22 0x3d96
# 0x3598
sb $25 12($0)
# 0x359c
multu $20 $20
# 0x35a0
sub $20 $2 $31
# 0x35a4
mtlo $22
# 0x35a8
sub $6 $7 $3
# 0x35ac
mflo $13
# 0x35b0
mthi $1
# 0x35b4
sltiu $10 $23 1062
# 0x35b8
nor $27 $15 $5
# 0x35bc
slti $13 $10 15962
# 0x35c0
srlv $11 $21 $13
# 0x35c4
and $17 $1 $14
# 0x35c8
nor $21 $1 $8
# 0x35cc
and $14 $23 $12
# 0x35d0
mflo $12
# 0x35d4
sh $21 16($0)
# 0x35d8
addiu $30 $3 31302
# 0x35dc
or $4 $12 $9
# 0x35e0
srlv $10 $3 $10
# 0x35e4
addi $18 $26 7738
# 0x35e8
lw $26 108($0)
# 0x35ec
mfhi $24
# 0x35f0
lbu $26 16($0)
# 0x35f4
lw $30 16($0)
# 0x35f8
srav $14 $15 $17
# 0x35fc
sh $6 4($0)
# 0x3600
subu $19 $23 $19
# 0x3604
srav $14 $17 $25
# 0x3608
srl $13 $15 16
# 0x360c
or $11 $18 $22
# 0x3610
sltiu $23 $23 17502
# 0x3614
multu $27 $8
# 0x3618
sb $22 26($0)
# 0x361c
xor $19 $11 $6
# 0x3620
srl $17 $24 22
# 0x3624
addi $3 $23 -12607
# 0x3628
lw $1 0($0)
# 0x362c
lh $2 26($0)
# 0x3630
lhu $4 8($0)
# 0x3634
sltu $21 $19 $11
# 0x3638
mthi $27
# 0x363c
lbu $30 7($0)
# 0x3640
and $9 $6 $16
# 0x3644
slt $12 $19 $23
# 0x3648
addiu $11 $24 27463
# 0x364c
xor $23 $14 $30
# 0x3650
sra $15 $22 22
# 0x3654
sltu $13 $11 $23
# 0x3658
multu $19 $17
# 0x365c
mthi $15
# 0x3660
multu $22 $25
# 0x3664
mfhi $17
# 0x3668
lui $20 0x3554
# 0x366c
sra $4 $27 8
# 0x3670
mtlo $3
# 0x3674
lb $15 17($0)
# 0x3678
lw $15 12($0)
# 0x367c
mult $18 $12
# 0x3680
sra $26 $25 4
# 0x3684
ori $31 $15 0x8244
# 0x3688
mfhi $17
# 0x368c
sub $18 $14 $7
# 0x3690
subu $1 $27 $4
# 0x3694
srav $5 $26 $15
# 0x3698
lh $25 18($0)
# 0x369c
xor $1 $22 $17
# 0x36a0
srl $24 $8 3
# 0x36a4
sh $16 14($0)
# 0x36a8
sra $25 $20 5
# 0x36ac
add $27 $20 $12
# 0x36b0
sltu $14 $9 $25
# 0x36b4
srlv $31 $20 $16
# 0x36b8
slt $16 $16 $25
# 0x36bc
slti $22 $6 -26123
# 0x36c0
sra $9 $9 31
# 0x36c4
ori $26 $10 0x8353
# 0x36c8
mtlo $17
# 0x36cc
mthi $14
# 0x36d0
mfhi $27
# 0x36d4
srlv $25 $2 $9
# 0x36d8
lui $10 0x63be
# 0x36dc
mflo $10
# 0x36e0
lw $31 20($0)
# 0x36e4
sw $18 44($0)
# 0x36e8
nor $15 $7 $20
# 0x36ec
slt $17 $7 $20
# 0x36f0
andi $30 $7 0xdb37
# 0x36f4
sb $11 13($0)
# 0x36f8
lbu $7 24($0)
# 0x36fc
sllv $1 $17 $4
# 0x3700
lh $1 38($0)
# 0x3704
srav $1 $25 $23
# 0x3708
addiu $13 $4 16497
# 0x370c
sb $15 17($0)
# 0x3710
srlv $19 $13 $20
# 0x3714
mthi $6
# 0x3718
lw $25 120($0)
# 0x371c
lbu $25 3($0)
# 0x3720
sll $19 $13 6
# 0x3724
mtlo $31
# 0x3728
sll $10 $10 21
# 0x372c
sw $5 20($0)
# 0x3730
lw $1 28($0)
# 0x3734
addiu $24 $26 23134
# 0x3738
sltu $1 $26 $12
# 0x373c
lw $16 48($0)
# 0x3740
nor $22 $30 $20
# 0x3744
sw $9 76($0)
# 0x3748
addiu $19 $9 20370
# 0x374c
sltiu $17 $7 1831
# 0x3750
xori $2 $8 0xbd68
# 0x3754
slt $9 $5 $23
# 0x3758
multu $3 $7
# 0x375c
sra $31 $31 11
# 0x3760
mult $27 $25
# 0x3764
lh $7 30($0)
# 0x3768
multu $3 $23
# 0x376c
mult $9 $1
# 0x3770
lui $27 0x3999
# 0x3774
multu $11 $5
# 0x3778
mflo $18
# 0x377c
lhu $1 22($0)
# 0x3780
multu $6 $21
# 0x3784
srlv $25 $17 $20
# 0x3788
multu $15 $16
# 0x378c
xori $2 $4 0x02e6
# 0x3790
srlv $25 $20 $8
# 0x3794
mflo $22
# 0x3798
sltu $30 $20 $6
# 0x379c
ori $16 $27 0xc045
# 0x37a0
mult $20 $17
# 0x37a4
sh $6 22($0)
# 0x37a8
sub $18 $24 $8
# 0x37ac
slti $11 $1 -24488
# 0x37b0
srlv $1 $17 $5
# 0x37b4
xori $9 $3 0x97ec
# 0x37b8
mfhi $10
# 0x37bc
srav $25 $9 $4
# 0x37c0
sra $13 $1 1
# 0x37c4
srav $12 $16 $21
# 0x37c8
lh $6 30($0)
# 0x37cc
mflo $7
# 0x37d0
sra $26 $19 18
# 0x37d4
srlv $5 $12 $12
# 0x37d8
addi $12 $18 16547
# 0x37dc
lhu $7 6($0)
# 0x37e0
lh $2 6($0)
# 0x37e4
lbu $1 12($0)
# 0x37e8
srl $5 $12 15
# 0x37ec
lb $24 14($0)
# 0x37f0
sllv $16 $10 $31
# 0x37f4
sltu $4 $16 $21
# 0x37f8
or $24 $3 $19
# 0x37fc
lb $1 6($0)
# 0x3800
multu $20 $6
# 0x3804
or $22 $5 $10
# 0x3808
xor $4 $23 $18
# 0x380c
mfhi $27
# 0x3810
and $11 $30 $1
# 0x3814
sw $19 24($0)
# 0x3818
sllv $23 $23 $2
# 0x381c
and $6 $7 $2
# 0x3820
sb $16 11($0)
# 0x3824
mfhi $2
# 0x3828
sra $23 $1 3
# 0x382c
sllv $31 $1 $12
# 0x3830
sh $27 18($0)
# 0x3834
mthi $4
# 0x3838
lb $27 1($0)
# 0x383c
sll $11 $20 4
# 0x3840
andi $26 $18 0x1945
# 0x3844
sllv $30 $2 $25
# 0x3848
addi $25 $23 -1117
# 0x384c
sh $10 36($0)
# 0x3850
addiu $24 $18 3287
# 0x3854
addiu $23 $11 7885
# 0x3858
lh $1 34($0)
# 0x385c
lh $22 30($0)
# 0x3860
addu $21 $8 $1
# 0x3864
mtlo $27
# 0x3868
sh $12 36($0)
# 0x386c
sh $2 10($0)
# 0x3870
xori $3 $27 0x32fe
# 0x3874
srl $26 $17 21
# 0x3878
sub $2 $16 $9
# 0x387c
sra $21 $20 10
# 0x3880
lbu $19 22($0)
# 0x3884
sh $26 28($0)
# 0x3888
mtlo $11
# 0x388c
sltiu $5 $12 32518
# 0x3890
and $16 $22 $8
# 0x3894
sra $24 $15 3
# 0x3898
lw $11 108($0)
# 0x389c
srav $20 $15 $8
# 0x38a0
lhu $21 2($0)
# 0x38a4
nor $24 $6 $9
# 0x38a8
slt $8 $16 $24
# 0x38ac
mult $31 $6
# 0x38b0
sll $15 $13 4
# 0x38b4
sh $10 2($0)
# 0x38b8
and $18 $16 $11
# 0x38bc
xori $21 $19 0x7e3b
# 0x38c0
srl $3 $15 24
# 0x38c4
multu $3 $17
# 0x38c8
srl $5 $13 22
# 0x38cc
sub $22 $14 $31
# 0x38d0
lui $22 0xd1c8
# 0x38d4
mtlo $31
# 0x38d8
sh $16 26($0)
# 0x38dc
slti $17 $18 16246
# 0x38e0
srav $3 $10 $15
# 0x38e4
addu $15 $13 $5
# 0x38e8
ori $22 $15 0x950a
# 0x38ec
srlv $30 $30 $11
# 0x38f0
sw $27 72($0)
# 0x38f4
subu $5 $4 $21
# 0x38f8
multu $6 $16
# 0x38fc
add $24 $14 $31
# 0x3900
andi $22 $14 0x8512
# 0x3904
ori $4 $9 0xbc54
# 0x3908
multu $30 $3
# 0x390c
sh $4 22($0)
# 0x3910
sra $7 $18 13
# 0x3914
multu $8 $30
# 0x3918
lw $10 124($0)
# 0x391c
or $12 $25 $4
# 0x3920
sh $19 40($0)
# 0x3924
and $24 $17 $2
# 0x3928
mult $27 $13
# 0x392c
subu $20 $13 $2
# 0x3930
multu $30 $3
# 0x3934
mfhi $20
# 0x3938
sltu $1 $16 $3
# 0x393c
lb $8 1($0)
# 0x3940
mtlo $3
# 0x3944
mthi $12
# 0x3948
mtlo $4
# 0x394c
lw $8 28($0)
# 0x3950
sh $15 22($0)
# 0x3954
sh $30 10($0)
# 0x3958
lh $1 30($0)
# 0x395c
multu $24 $30
# 0x3960
ori $13 $6 0x9b64
# 0x3964
sw $22 0($0)
# 0x3968
lh $9 30($0)
# 0x396c
sub $17 $18 $2
# 0x3970
addu $12 $27 $7
# 0x3974
mult $23 $14
# 0x3978
subu $12 $17 $4
# 0x397c
srav $8 $5 $26
# 0x3980
mult $9 $6
# 0x3984
and $27 $20 $25
# 0x3988
ori $8 $3 0xd254
# 0x398c
lb $20 17($0)
# 0x3990
xor $7 $7 $4
# 0x3994
xori $25 $17 0x68c4
# 0x3998
sh $16 30($0)
# 0x399c
nor $23 $27 $14
# 0x39a0
mult $20 $2
# 0x39a4
srav $22 $6 $17
# 0x39a8
subu $20 $19 $22
# 0x39ac
srlv $4 $13 $23
# 0x39b0
lh $13 24($0)
# 0x39b4
lbu $23 21($0)
# 0x39b8
mthi $5
# 0x39bc
nor $12 $3 $3
# 0x39c0
mfhi $2
# 0x39c4
addi $24 $7 25286
# 0x39c8
sll $7 $11 23
# 0x39cc
lbu $22 19($0)
# 0x39d0
srl $13 $2 14
# 0x39d4
subu $20 $21 $27
# 0x39d8
sb $24 22($0)
# 0x39dc
mthi $25
# 0x39e0
sw $3 28($0)
# 0x39e4
lw $15 8($0)
# 0x39e8
sllv $13 $2 $14
# 0x39ec
sltiu $18 $4 3215
# 0x39f0
sllv $24 $7 $11
# 0x39f4
mult $13 $3
# 0x39f8
sb $3 20($0)
# 0x39fc
sllv $9 $1 $18
# 0x3a00
sb $17 5($0)
# 0x3a04
lh $25 8($0)
# 0x3a08
lw $10 20($0)
# 0x3a0c
nor $19 $14 $27
# 0x3a10
sra $12 $13 8
# 0x3a14
andi $26 $12 0x3334
# 0x3a18
sltiu $1 $24 10932
# 0x3a1c
slt $23 $22 $25
# 0x3a20
lhu $15 6($0)
# 0x3a24
sb $14 25($0)
# 0x3a28
addu $20 $2 $17
# 0x3a2c
sw $26 0($0)
# 0x3a30
mtlo $22
# 0x3a34
mfhi $15
# 0x3a38
sra $21 $2 13
# 0x3a3c
sltu $24 $16 $24
# 0x3a40
sh $27 16($0)
# 0x3a44
sra $7 $23 28
# 0x3a48
and $15 $30 $14
# 0x3a4c
sh $27 8($0)
# 0x3a50
addiu $19 $3 30761
# 0x3a54
subu $3 $4 $2
# 0x3a58
andi $17 $24 0xc8dd
# 0x3a5c
sh $5 16($0)
# 0x3a60
slti $24 $7 7502
# 0x3a64
addiu $16 $13 816
# 0x3a68
sh $9 30($0)
# 0x3a6c
mthi $21
# 0x3a70
addu $25 $25 $25
# 0x3a74
lbu $21 2($0)
# 0x3a78
slti $5 $9 23477
# 0x3a7c
xori $19 $27 0x49de
# 0x3a80
sw $15 0($0)
# 0x3a84
lw $10 24($0)
# 0x3a88
xor $7 $22 $3
# 0x3a8c
sra $13 $4 16
# 0x3a90
sb $18 30($0)
# 0x3a94
srav $13 $21 $21
# 0x3a98
lb $31 20($0)
# 0x3a9c
mflo $27
# 0x3aa0
lb $20 3($0)
# 0x3aa4
or $19 $7 $6
# 0x3aa8
ori $13 $19 0xaf81
# 0x3aac
or $8 $20 $19
# 0x3ab0
lui $1 0x5815
# 0x3ab4
and $1 $8 $4
# 0x3ab8
add $10 $21 $12
# 0x3abc
sra $23 $22 19
# 0x3ac0
andi $7 $4 0xf16f
# 0x3ac4
ori $30 $14 0xd319
# 0x3ac8
and $23 $27 $11
# 0x3acc
sub $8 $4 $16
# 0x3ad0
sltu $21 $15 $6
# 0x3ad4
srlv $18 $18 $3
# 0x3ad8
slt $1 $12 $7
# 0x3adc
lw $5 8($0)
# 0x3ae0
mfhi $24
# 0x3ae4
mflo $7
# 0x3ae8
lb $25 0($0)
# 0x3aec
sub $17 $3 $19
# 0x3af0
sh $25 40($0)
# 0x3af4
slti $4 $27 1549
# 0x3af8
mtlo $2
# 0x3afc
srlv $26 $3 $20
# 0x3b00
sub $22 $24 $18
# 0x3b04
andi $14 $15 0xc7b7
# 0x3b08
lb $9 6($0)
# 0x3b0c
sltiu $15 $1 22463
# 0x3b10
lh $27 22($0)
# 0x3b14
addiu $15 $3 20057
# 0x3b18
sb $20 23($0)
# 0x3b1c
sub $15 $6 $1
# 0x3b20
sb $23 23($0)
# 0x3b24
slti $22 $4 -14133
# 0x3b28
and $18 $21 $21
# 0x3b2c
addu $19 $7 $22
# 0x3b30
add $20 $31 $27
# 0x3b34
add $22 $1 $9
# 0x3b38
slt $7 $4 $7
# 0x3b3c
lh $6 20($0)
# 0x3b40
or $17 $27 $4
# 0x3b44
sw $17 20($0)
# 0x3b48
sb $22 21($0)
# 0x3b4c
srl $11 $20 17
# 0x3b50
sub $27 $17 $31
# 0x3b54
mfhi $30
# 0x3b58
sra $9 $20 11
# 0x3b5c
sltu $23 $15 $10
# 0x3b60
srlv $8 $21 $12
# 0x3b64
mfhi $4
# 0x3b68
sub $10 $30 $27
# 0x3b6c
sltiu $6 $14 22389
# 0x3b70
srl $12 $16 30
# 0x3b74
srl $8 $25 1
# 0x3b78
sllv $18 $10 $8
# 0x3b7c
sw $11 20($0)
# 0x3b80
sra $8 $30 26
# 0x3b84
lhu $23 28($0)
# 0x3b88
sw $30 108($0)
# 0x3b8c
sll $3 $11 23
# 0x3b90
sllv $20 $2 $6
# 0x3b94
addiu $11 $1 2431
# 0x3b98
lui $12 0xd274
# 0x3b9c
srl $25 $21 0
# 0x3ba0
mfhi $25
# 0x3ba4
ori $22 $26 0xa6df
# 0x3ba8
subu $2 $9 $15
# 0x3bac
sw $12 84($0)
# 0x3bb0
mult $27 $25
# 0x3bb4
subu $6 $6 $16
# 0x3bb8
add $30 $21 $5
# 0x3bbc
mthi $13
# 0x3bc0
lh $13 20($0)
# 0x3bc4
multu $4 $30
# 0x3bc8
slt $2 $31 $6
# 0x3bcc
sh $25 8($0)
# 0x3bd0
and $31 $31 $31
# 0x3bd4
sra $13 $4 19
# 0x3bd8
mthi $9
# 0x3bdc
lbu $8 11($0)
# 0x3be0
sltiu $5 $11 30873
# 0x3be4
addiu $18 $14 24
# 0x3be8
ori $2 $30 0x179e
# 0x3bec
srl $31 $30 0
# 0x3bf0
srav $6 $22 $22
# 0x3bf4
xori $17 $19 0xaab2
# 0x3bf8
subu $5 $2 $25
# 0x3bfc
lw $30 44($0)
# 0x3c00
mflo $9
# 0x3c04
and $1 $24 $10
# 0x3c08
srlv $26 $11 $6
# 0x3c0c
sw $1 4($0)
# 0x3c10
addu $4 $5 $27
# 0x3c14
lbu $17 31($0)
# 0x3c18
lb $16 1($0)
# 0x3c1c
sh $22 2($0)
# 0x3c20
multu $21 $15
# 0x3c24
sb $11 29($0)
# 0x3c28
lb $22 16($0)
# 0x3c2c
slti $11 $19 22258
# 0x3c30
or $6 $18 $27
# 0x3c34
addiu $7 $24 15879
# 0x3c38
lui $21 0x2f13
# 0x3c3c
sh $11 62($0)
# 0x3c40
sltu $31 $3 $15
# 0x3c44
slti $21 $17 -9170
# 0x3c48
sw $4 0($0)
# 0x3c4c
mult $11 $2
# 0x3c50
sh $12 58($0)
# 0x3c54
sw $18 24($0)
# 0x3c58
sra $26 $16 3
# 0x3c5c
slti $14 $31 -5492
# 0x3c60
nor $19 $20 $21
# 0x3c64
slt $16 $19 $7
# 0x3c68
and $9 $20 $10
# 0x3c6c
addi $25 $18 16651
# 0x3c70
xor $7 $27 $22
# 0x3c74
mfhi $8
# 0x3c78
slt $2 $4 $22
# 0x3c7c
lh $2 32($0)
# 0x3c80
mfhi $9
# 0x3c84
sltu $19 $17 $25
# 0x3c88
mthi $17
# 0x3c8c
andi $19 $26 0xea65
# 0x3c90
mthi $9
# 0x3c94
mthi $18
# 0x3c98
srav $24 $12 $8
# 0x3c9c
mthi $7
# 0x3ca0
multu $12 $4
# 0x3ca4
multu $31 $3
# 0x3ca8
xori $21 $11 0x43cc
# 0x3cac
sw $7 20($0)
# 0x3cb0
sub $27 $15 $3
# 0x3cb4
sub $8 $11 $1
# 0x3cb8
addi $31 $6 -470
# 0x3cbc
sra $10 $27 25
# 0x3cc0
srlv $14 $14 $22
# 0x3cc4
srl $1 $3 29
# 0x3cc8
lw $25 12($0)
# 0x3ccc
or $18 $27 $17
# 0x3cd0
slti $8 $10 24365
# 0x3cd4
mtlo $20
# 0x3cd8
sltu $30 $19 $5
# 0x3cdc
and $14 $22 $23
# 0x3ce0
nor $24 $20 $26
# 0x3ce4
multu $4 $2
# 0x3ce8
xor $12 $13 $11
# 0x3cec
mtlo $13
# 0x3cf0
lui $12 0x8a62
# 0x3cf4
sub $21 $25 $13
# 0x3cf8
addi $16 $9 -11499
# 0x3cfc
mfhi $24
# 0x3d00
mthi $17
# 0x3d04
and $11 $24 $2
# 0x3d08
nor $17 $30 $11
# 0x3d0c
sltiu $30 $2 4985
# 0x3d10
sltiu $20 $26 7641
# 0x3d14
nor $21 $13 $9
# 0x3d18
multu $19 $30
# 0x3d1c
mflo $13
# 0x3d20
slt $16 $21 $3
# 0x3d24
sub $18 $4 $18
# 0x3d28
srlv $12 $25 $19
# 0x3d2c
sll $8 $22 15
# 0x3d30
slt $2 $8 $13
# 0x3d34
addi $27 $14 -17348
# 0x3d38
ori $15 $25 0x9027
# 0x3d3c
xor $11 $23 $15
# 0x3d40
lw $23 24($0)
# 0x3d44
lui $15 0xbb2d
# 0x3d48
lh $18 6($0)
# 0x3d4c
srav $2 $10 $22
# 0x3d50
sltu $16 $4 $16
# 0x3d54
srlv $7 $16 $17
# 0x3d58
mthi $19
# 0x3d5c
subu $14 $25 $14
# 0x3d60
subu $30 $4 $26
# 0x3d64
lhu $15 14($0)
# 0x3d68
mult $31 $10
# 0x3d6c
sra $13 $21 13
# 0x3d70
xor $20 $6 $6
# 0x3d74
lhu $7 10($0)
# 0x3d78
sll $4 $22 21
# 0x3d7c
addiu $22 $5 29925
# 0x3d80
srlv $12 $3 $19
# 0x3d84
srav $23 $22 $22
# 0x3d88
subu $20 $3 $8
# 0x3d8c
sll $23 $5 1
# 0x3d90
lh $5 0($0)
# 0x3d94
sh $19 32($0)
# 0x3d98
addu $13 $22 $18
# 0x3d9c
sh $20 52($0)
# 0x3da0
nor $17 $26 $26
# 0x3da4
lhu $15 8($0)
# 0x3da8
sra $20 $5 25
# 0x3dac
sll $24 $27 3
# 0x3db0
slti $6 $4 9160
# 0x3db4
sra $30 $6 16
# 0x3db8
mthi $9
# 0x3dbc
lw $30 24($0)
# 0x3dc0
mthi $24
# 0x3dc4
andi $2 $31 0xd32a
# 0x3dc8
sllv $15 $2 $7
# 0x3dcc
andi $2 $19 0xead1
# 0x3dd0
addu $25 $10 $12
# 0x3dd4
mult $9 $14
# 0x3dd8
srlv $13 $2 $25
# 0x3ddc
and $23 $2 $21
# 0x3de0
sub $12 $24 $3
# 0x3de4
or $18 $14 $20
# 0x3de8
addu $12 $23 $3
# 0x3dec
srav $22 $25 $30
# 0x3df0
sll $4 $30 21
# 0x3df4
mtlo $18
# 0x3df8
sll $2 $4 2
# 0x3dfc
srl $15 $23 1
# 0x3e00
multu $14 $13
# 0x3e04
srlv $19 $22 $19
# 0x3e08
lbu $16 14($0)
# 0x3e0c
sltu $3 $8 $8
# 0x3e10
addu $20 $8 $4
# 0x3e14
lhu $20 0($0)
# 0x3e18
sb $22 22($0)
# 0x3e1c
addiu $26 $30 31969
# 0x3e20
sh $3 20($0)
# 0x3e24
mtlo $21
# 0x3e28
lui $21 0x2de8
# 0x3e2c
srlv $4 $21 $19
# 0x3e30
mult $4 $3
# 0x3e34
xor $19 $25 $23
# 0x3e38
sh $25 0($0)
# 0x3e3c
lh $13 36($0)
# 0x3e40
lhu $21 18($0)
# 0x3e44
mfhi $14
# 0x3e48
sltiu $8 $21 24433
# 0x3e4c
lh $7 32($0)
# 0x3e50
addi $8 $8 19537
# 0x3e54
and $15 $25 $16
# 0x3e58
mfhi $23
# 0x3e5c
sll $13 $23 5
# 0x3e60
srav $7 $2 $30
# 0x3e64
lhu $27 26($0)
# 0x3e68
add $1 $13 $26
# 0x3e6c
sub $26 $7 $25
# 0x3e70
lh $17 14($0)
# 0x3e74
lw $15 84($0)
# 0x3e78
srlv $21 $5 $21
# 0x3e7c
lh $31 28($0)
# 0x3e80
sh $7 24($0)
# 0x3e84
lhu $7 8($0)
# 0x3e88
add $25 $31 $21
# 0x3e8c
srlv $26 $19 $1
# 0x3e90
xori $12 $6 0x31e2
# 0x3e94
lh $8 14($0)
# 0x3e98
xori $12 $2 0x1473
# 0x3e9c
lui $24 0x404f
# 0x3ea0
mthi $22
# 0x3ea4
sltu $26 $10 $31
# 0x3ea8
sra $31 $11 22
# 0x3eac
lhu $2 20($0)
# 0x3eb0
lw $7 8($0)
# 0x3eb4
xori $10 $17 0x5766
# 0x3eb8
lbu $20 28($0)
# 0x3ebc
sh $6 42($0)
# 0x3ec0
srlv $8 $9 $7
# 0x3ec4
sltu $3 $3 $14
# 0x3ec8
lhu $6 6($0)
# 0x3ecc
slti $13 $12 27852
# 0x3ed0
addiu $26 $27 29563
# 0x3ed4
slti $3 $30 -16911
# 0x3ed8
nor $7 $25 $22
# 0x3edc
andi $6 $11 0xa0fb
# 0x3ee0
mult $22 $5
# 0x3ee4
ori $13 $22 0x7731
# 0x3ee8
lb $25 11($0)
# 0x3eec
srav $10 $18 $22
# 0x3ef0
xori $9 $17 0x191c
# 0x3ef4
lui $25 0x7a83
# 0x3ef8
subu $17 $19 $30
# 0x3efc
sh $10 12($0)
# 0x3f00
sll $15 $14 2
# 0x3f04
lw $23 16($0)
# 0x3f08
lb $11 20($0)
# 0x3f0c
slt $16 $2 $7
# 0x3f10
sltiu $4 $13 7517
# 0x3f14
or $26 $25 $11
# 0x3f18
sub $8 $15 $14
# 0x3f1c
andi $2 $8 0x1652
# 0x3f20
srav $31 $2 $9
# 0x3f24
sw $31 104($0)
# 0x3f28
sll $22 $31 30
# 0x3f2c
mthi $7
# 0x3f30
srl $19 $23 24
# 0x3f34
lui $14 0xb456
# 0x3f38
addiu $11 $27 1099
# 0x3f3c
lw $22 24($0)
# 0x3f40
mflo $10
# 0x3f44
lh $15 14($0)
# 0x3f48
sra $3 $18 31
# 0x3f4c
ori $14 $10 0x1a45
# 0x3f50
subu $22 $21 $13
# 0x3f54
mfhi $5
# 0x3f58
lh $4 28($0)
# 0x3f5c
mfhi $19
# 0x3f60
sw $23 116($0)
# 0x3f64
xori $13 $20 0x2b41
# 0x3f68
lw $18 16($0)
# 0x3f6c
ori $26 $26 0x3794
# 0x3f70
lh $26 26($0)
# 0x3f74
subu $21 $25 $11
# 0x3f78
xori $19 $7 0x4243
# 0x3f7c
sllv $24 $22 $10
# 0x3f80
lbu $4 4($0)
# 0x3f84
lhu $30 28($0)
# 0x3f88
xori $3 $2 0x2096
# 0x3f8c
andi $13 $14 0xfdca
# 0x3f90
add $3 $26 $19
# 0x3f94
sh $23 8($0)
# 0x3f98
slt $22 $21 $21
# 0x3f9c
multu $3 $30
# 0x3fa0
lw $17 0($0)

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop