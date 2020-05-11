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
xori $8 $24 0xf732
# 0x3008
subu $31 $5 $3
# 0x300c
add $31 $13 $1
# 0x3010
multu $11 $13
# 0x3014
lw $14 96($0)
# 0x3018
sw $27 16($0)
# 0x301c
nor $20 $30 $24
# 0x3020
and $3 $31 $20
# 0x3024
addu $18 $20 $10
# 0x3028
xor $18 $2 $26
# 0x302c
addi $8 $20 -19701
# 0x3030
srav $8 $3 $3
# 0x3034
addiu $16 $8 23962
# 0x3038
lw $15 88($0)
# 0x303c
sh $31 14($0)
# 0x3040
multu $20 $20
# 0x3044
or $13 $30 $13
# 0x3048
srlv $2 $9 $22
# 0x304c
lh $4 12($0)
# 0x3050
srl $8 $5 7
# 0x3054
sllv $24 $13 $10
# 0x3058
lui $16 0xbe6d
# 0x305c
lui $10 0x8eab
# 0x3060
srav $27 $11 $5
# 0x3064
mthi $16
# 0x3068
mthi $11
# 0x306c
and $25 $8 $25
# 0x3070
lh $26 2($0)
# 0x3074
lui $21 0x525f
# 0x3078
sw $14 28($0)
# 0x307c
lui $16 0xf385
# 0x3080
lbu $18 31($0)
# 0x3084
slti $27 $14 -10438
# 0x3088
srl $11 $24 14
# 0x308c
lbu $2 30($0)
# 0x3090
lb $6 14($0)
# 0x3094
sh $21 40($0)
# 0x3098
srlv $13 $15 $3
# 0x309c
sw $13 28($0)
# 0x30a0
sh $16 6($0)
# 0x30a4
sltu $6 $16 $31
# 0x30a8
xor $7 $5 $8
# 0x30ac
srlv $17 $27 $27
# 0x30b0
sh $30 60($0)
# 0x30b4
or $10 $9 $2
# 0x30b8
srl $13 $1 7
# 0x30bc
sw $9 28($0)
# 0x30c0
multu $2 $16
# 0x30c4
mfhi $18
# 0x30c8
sb $20 16($0)
# 0x30cc
addiu $1 $1 15813
# 0x30d0
lbu $5 3($0)
# 0x30d4
addi $3 $31 -23281
# 0x30d8
lbu $18 2($0)
# 0x30dc
slt $19 $13 $25
# 0x30e0
mflo $15
# 0x30e4
lh $26 48($0)
# 0x30e8
addi $10 $20 375
# 0x30ec
and $30 $13 $3
# 0x30f0
and $6 $27 $30
# 0x30f4
lb $16 2($0)
# 0x30f8
sh $6 24($0)
# 0x30fc
lui $11 0x908d
# 0x3100
slti $9 $27 414
# 0x3104
addi $4 $16 -13571
# 0x3108
sh $24 60($0)
# 0x310c
sh $6 8($0)
# 0x3110
sh $30 4($0)
# 0x3114
sra $7 $14 5
# 0x3118
sra $12 $24 31
# 0x311c
lui $27 0x8c7f
# 0x3120
sb $4 8($0)
# 0x3124
sllv $13 $25 $6
# 0x3128
mtlo $13
# 0x312c
or $14 $15 $12
# 0x3130
sh $9 0($0)
# 0x3134
sra $25 $20 8
# 0x3138
sw $3 0($0)
# 0x313c
add $11 $16 $1
# 0x3140
ori $24 $7 0x922b
# 0x3144
add $8 $2 $2
# 0x3148
lhu $19 8($0)
# 0x314c
ori $26 $6 0x06d9
# 0x3150
xori $14 $15 0xd4b2
# 0x3154
addu $22 $27 $23
# 0x3158
sh $26 48($0)
# 0x315c
sb $2 3($0)
# 0x3160
lh $7 4($0)
# 0x3164
lh $23 30($0)
# 0x3168
lhu $7 22($0)
# 0x316c
sh $9 18($0)
# 0x3170
lw $27 8($0)
# 0x3174
sll $31 $2 29
# 0x3178
srlv $27 $9 $11
# 0x317c
addu $22 $22 $10
# 0x3180
addu $7 $2 $1
# 0x3184
sltiu $11 $31 20628
# 0x3188
sra $13 $17 26
# 0x318c
andi $10 $25 0x0774
# 0x3190
mult $5 $22
# 0x3194
and $16 $30 $1
# 0x3198
lw $26 100($0)
# 0x319c
sllv $10 $16 $27
# 0x31a0
lw $11 84($0)
# 0x31a4
ori $10 $17 0x9a27
# 0x31a8
slti $30 $16 -2528
# 0x31ac
lh $22 4($0)
# 0x31b0
sw $12 12($0)
# 0x31b4
lw $5 8($0)
# 0x31b8
mfhi $21
# 0x31bc
lb $26 21($0)
# 0x31c0
addi $1 $10 28252
# 0x31c4
mtlo $19
# 0x31c8
lh $20 10($0)
# 0x31cc
sh $4 28($0)
# 0x31d0
multu $10 $18
# 0x31d4
srl $1 $30 22
# 0x31d8
lbu $18 25($0)
# 0x31dc
multu $22 $7
# 0x31e0
slti $25 $8 -1373
# 0x31e4
sb $11 24($0)
# 0x31e8
xori $22 $14 0x4984
# 0x31ec
sh $31 20($0)
# 0x31f0
sltiu $12 $8 9284
# 0x31f4
srlv $4 $26 $22
# 0x31f8
sb $6 4($0)
# 0x31fc
lhu $2 0($0)
# 0x3200
xori $4 $13 0x1243
# 0x3204
srl $15 $24 13
# 0x3208
xori $6 $27 0x77ad
# 0x320c
sltiu $4 $9 29801
# 0x3210
addi $17 $16 7682
# 0x3214
lb $26 22($0)
# 0x3218
sltu $25 $20 $10
# 0x321c
srlv $8 $10 $30
# 0x3220
lh $9 22($0)
# 0x3224
sh $12 8($0)
# 0x3228
andi $21 $20 0xd975
# 0x322c
sllv $31 $20 $7
# 0x3230
mflo $5
# 0x3234
mtlo $27
# 0x3238
xor $8 $23 $23
# 0x323c
sltu $18 $21 $10
# 0x3240
sllv $22 $6 $18
# 0x3244
mthi $8
# 0x3248
sra $26 $9 16
# 0x324c
sw $7 112($0)
# 0x3250
sw $24 100($0)
# 0x3254
lw $14 8($0)
# 0x3258
srav $4 $17 $21
# 0x325c
sub $31 $1 $16
# 0x3260
and $14 $17 $8
# 0x3264
lh $6 24($0)
# 0x3268
addi $25 $30 -25836
# 0x326c
or $9 $13 $24
# 0x3270
addu $30 $10 $3
# 0x3274
lhu $21 2($0)
# 0x3278
srlv $17 $1 $2
# 0x327c
srlv $12 $13 $7
# 0x3280
sub $6 $31 $26
# 0x3284
lh $13 12($0)
# 0x3288
sll $11 $7 14
# 0x328c
slti $18 $2 25086
# 0x3290
addu $17 $19 $17
# 0x3294
lw $4 84($0)
# 0x3298
lw $9 120($0)
# 0x329c
addi $8 $15 1391
# 0x32a0
sltu $26 $19 $26
# 0x32a4
slt $2 $4 $4
# 0x32a8
sw $2 100($0)
# 0x32ac
andi $16 $5 0x7be5
# 0x32b0
srlv $22 $27 $23
# 0x32b4
and $11 $23 $10
# 0x32b8
multu $22 $26
# 0x32bc
srlv $27 $8 $7
# 0x32c0
lw $2 4($0)
# 0x32c4
lh $18 4($0)
# 0x32c8
multu $18 $31
# 0x32cc
lh $3 2($0)
# 0x32d0
lui $14 0x78b3
# 0x32d4
andi $12 $6 0x9afc
# 0x32d8
nor $1 $7 $4
# 0x32dc
nor $10 $25 $15
# 0x32e0
srav $27 $2 $8
# 0x32e4
lh $31 28($0)
# 0x32e8
xor $1 $26 $9
# 0x32ec
ori $6 $22 0xe970
# 0x32f0
lw $3 8($0)
# 0x32f4
lb $3 0($0)
# 0x32f8
slti $25 $2 3195
# 0x32fc
multu $16 $15
# 0x3300
mfhi $27
# 0x3304
sw $23 28($0)
# 0x3308
and $4 $23 $3
# 0x330c
mthi $19
# 0x3310
xori $23 $22 0x77ba
# 0x3314
sllv $10 $6 $5
# 0x3318
lw $26 24($0)
# 0x331c
sw $27 44($0)
# 0x3320
mult $12 $17
# 0x3324
lh $24 4($0)
# 0x3328
and $13 $21 $8
# 0x332c
mult $30 $8
# 0x3330
sw $3 88($0)
# 0x3334
or $18 $26 $26
# 0x3338
xor $11 $27 $17
# 0x333c
srl $26 $23 22
# 0x3340
slt $3 $18 $17
# 0x3344
mfhi $24
# 0x3348
sh $23 36($0)
# 0x334c
subu $24 $5 $18
# 0x3350
sra $8 $24 19
# 0x3354
mult $31 $30
# 0x3358
lui $31 0x00f0
# 0x335c
sll $16 $15 30
# 0x3360
addi $19 $13 -24818
# 0x3364
lw $14 120($0)
# 0x3368
sw $16 28($0)
# 0x336c
sb $23 30($0)
# 0x3370
sltu $13 $18 $14
# 0x3374
sh $26 30($0)
# 0x3378
multu $3 $2
# 0x337c
sub $13 $23 $20
# 0x3380
addiu $22 $31 24633
# 0x3384
xori $23 $1 0x3c07
# 0x3388
lhu $13 10($0)
# 0x338c
lh $25 26($0)
# 0x3390
lui $8 0xff3b
# 0x3394
sra $11 $2 1
# 0x3398
xori $8 $19 0x4858
# 0x339c
srav $7 $14 $1
# 0x33a0
or $30 $8 $30
# 0x33a4
mult $19 $20
# 0x33a8
addu $14 $26 $2
# 0x33ac
sh $8 24($0)
# 0x33b0
sllv $18 $6 $25
# 0x33b4
srlv $24 $26 $14
# 0x33b8
mult $31 $23
# 0x33bc
sllv $27 $2 $25
# 0x33c0
sra $22 $25 1
# 0x33c4
srlv $8 $12 $14
# 0x33c8
multu $15 $15
# 0x33cc
mthi $1
# 0x33d0
slti $25 $20 8326
# 0x33d4
sw $11 64($0)
# 0x33d8
sw $14 92($0)
# 0x33dc
addiu $6 $19 24788
# 0x33e0
multu $27 $5
# 0x33e4
nor $4 $11 $23
# 0x33e8
xori $2 $9 0x2aa1
# 0x33ec
srlv $23 $1 $21
# 0x33f0
sub $15 $26 $10
# 0x33f4
ori $26 $27 0x8d75
# 0x33f8
sh $14 10($0)
# 0x33fc
lw $22 68($0)
# 0x3400
sllv $24 $21 $1
# 0x3404
and $25 $5 $6
# 0x3408
sw $22 24($0)
# 0x340c
sw $1 4($0)
# 0x3410
mtlo $6
# 0x3414
srav $11 $17 $26
# 0x3418
xori $18 $3 0x7fd1
# 0x341c
sll $24 $13 31
# 0x3420
sub $23 $8 $15
# 0x3424
sb $10 22($0)
# 0x3428
andi $1 $2 0x8eeb
# 0x342c
or $4 $20 $8
# 0x3430
lbu $11 19($0)
# 0x3434
mult $16 $16
# 0x3438
sb $5 23($0)
# 0x343c
addi $1 $13 -15663
# 0x3440
lbu $19 15($0)
# 0x3444
sll $6 $21 23
# 0x3448
nor $21 $24 $20
# 0x344c
slti $31 $1 20544
# 0x3450
mult $20 $14
# 0x3454
sw $13 16($0)
# 0x3458
lui $9 0x515c
# 0x345c
multu $27 $8
# 0x3460
sh $19 28($0)
# 0x3464
addi $26 $15 29783
# 0x3468
srl $4 $6 12
# 0x346c
srlv $19 $2 $22
# 0x3470
mtlo $2
# 0x3474
multu $15 $31
# 0x3478
sll $20 $6 0
# 0x347c
or $26 $10 $24
# 0x3480
sb $30 31($0)
# 0x3484
mthi $2
# 0x3488
and $16 $2 $22
# 0x348c
lh $30 6($0)
# 0x3490
lhu $9 14($0)
# 0x3494
slt $31 $2 $18
# 0x3498
sltu $11 $7 $17
# 0x349c
sb $10 28($0)
# 0x34a0
addi $5 $11 -4930
# 0x34a4
sllv $13 $6 $23
# 0x34a8
sh $31 16($0)
# 0x34ac
addi $3 $18 10898
# 0x34b0
add $22 $13 $11
# 0x34b4
multu $7 $27
# 0x34b8
mflo $5
# 0x34bc
xori $5 $10 0xf2a1
# 0x34c0
and $4 $19 $21
# 0x34c4
or $21 $24 $14
# 0x34c8
srl $17 $31 31
# 0x34cc
multu $8 $1
# 0x34d0
sll $24 $27 30
# 0x34d4
subu $23 $30 $31
# 0x34d8
lhu $8 0($0)
# 0x34dc
or $30 $16 $8
# 0x34e0
xor $20 $18 $20
# 0x34e4
sub $2 $11 $23
# 0x34e8
or $13 $31 $13
# 0x34ec
sh $5 26($0)
# 0x34f0
mfhi $18
# 0x34f4
sll $22 $13 24
# 0x34f8
lb $3 6($0)
# 0x34fc
multu $2 $11
# 0x3500
addi $14 $10 3852
# 0x3504
addu $15 $20 $31
# 0x3508
lb $30 15($0)
# 0x350c
xor $18 $8 $4
# 0x3510
andi $30 $16 0x8ed2
# 0x3514
sltiu $6 $3 30062
# 0x3518
mflo $17
# 0x351c
and $18 $19 $27
# 0x3520
sll $15 $13 8
# 0x3524
xori $10 $15 0x2812
# 0x3528
addi $20 $19 18525
# 0x352c
sltiu $31 $2 10539
# 0x3530
ori $21 $11 0x442f
# 0x3534
sh $6 4($0)
# 0x3538
xori $11 $15 0x8db0
# 0x353c
addi $12 $5 21867
# 0x3540
multu $9 $27
# 0x3544
sb $2 20($0)
# 0x3548
lw $18 104($0)
# 0x354c
sw $15 28($0)
# 0x3550
addu $4 $17 $25
# 0x3554
lbu $19 0($0)
# 0x3558
mfhi $5
# 0x355c
lhu $16 24($0)
# 0x3560
slti $24 $6 -20831
# 0x3564
or $5 $26 $21
# 0x3568
lhu $27 22($0)
# 0x356c
mflo $9
# 0x3570
sra $22 $8 13
# 0x3574
lbu $5 17($0)
# 0x3578
mfhi $24
# 0x357c
or $23 $1 $5
# 0x3580
lw $27 12($0)
# 0x3584
lw $17 20($0)
# 0x3588
sltu $31 $15 $23
# 0x358c
mthi $10
# 0x3590
lh $22 44($0)
# 0x3594
andi $1 $21 0x3a32
# 0x3598
sllv $10 $19 $3
# 0x359c
multu $16 $8
# 0x35a0
lw $22 12($0)
# 0x35a4
lui $19 0x6b43
# 0x35a8
lh $8 60($0)
# 0x35ac
mflo $14
# 0x35b0
sll $4 $12 0
# 0x35b4
mtlo $2
# 0x35b8
mtlo $11
# 0x35bc
lui $1 0xae50
# 0x35c0
ori $13 $13 0xff3a
# 0x35c4
lhu $23 28($0)
# 0x35c8
lhu $21 2($0)
# 0x35cc
ori $6 $27 0x5272
# 0x35d0
sll $2 $2 9
# 0x35d4
slti $23 $12 21155
# 0x35d8
lh $2 8($0)
# 0x35dc
sw $1 48($0)
# 0x35e0
lw $18 84($0)
# 0x35e4
lb $13 13($0)
# 0x35e8
mflo $10
# 0x35ec
add $15 $12 $15
# 0x35f0
sh $19 14($0)
# 0x35f4
slti $5 $8 -23660
# 0x35f8
or $24 $16 $8
# 0x35fc
addiu $14 $6 15820
# 0x3600
lh $14 30($0)
# 0x3604
mult $7 $5
# 0x3608
mult $9 $23
# 0x360c
srlv $14 $31 $19
# 0x3610
lh $20 8($0)
# 0x3614
mthi $22
# 0x3618
addiu $7 $25 11867
# 0x361c
sra $24 $3 30
# 0x3620
srl $10 $13 21
# 0x3624
lw $9 96($0)
# 0x3628
lh $25 4($0)
# 0x362c
sh $21 6($0)
# 0x3630
ori $8 $15 0xadc0
# 0x3634
lb $8 28($0)
# 0x3638
xori $8 $15 0x41b5
# 0x363c
srlv $15 $1 $6
# 0x3640
lui $7 0x102a
# 0x3644
sub $3 $16 $14
# 0x3648
sw $25 28($0)
# 0x364c
slt $21 $31 $17
# 0x3650
sll $23 $16 17
# 0x3654
add $11 $30 $17
# 0x3658
multu $8 $19
# 0x365c
srlv $6 $5 $6
# 0x3660
subu $7 $31 $5
# 0x3664
sb $5 1($0)
# 0x3668
sra $1 $21 28
# 0x366c
lh $31 56($0)
# 0x3670
andi $23 $27 0xe0a8
# 0x3674
mthi $16
# 0x3678
sub $9 $11 $12
# 0x367c
sub $19 $31 $15
# 0x3680
and $30 $10 $30
# 0x3684
sh $13 20($0)
# 0x3688
sll $15 $17 22
# 0x368c
subu $16 $13 $4
# 0x3690
sw $23 0($0)
# 0x3694
mthi $24
# 0x3698
lw $12 76($0)
# 0x369c
lh $3 40($0)
# 0x36a0
sw $20 12($0)
# 0x36a4
sw $5 80($0)
# 0x36a8
sra $6 $25 9
# 0x36ac
nor $2 $9 $12
# 0x36b0
sra $25 $5 25
# 0x36b4
mult $16 $22
# 0x36b8
lui $24 0x3276
# 0x36bc
xor $10 $16 $22
# 0x36c0
xor $3 $20 $14
# 0x36c4
add $30 $1 $30
# 0x36c8
lh $4 16($0)
# 0x36cc
lw $21 72($0)
# 0x36d0
sra $9 $24 6
# 0x36d4
lh $24 8($0)
# 0x36d8
srav $24 $22 $12
# 0x36dc
sra $16 $26 22
# 0x36e0
lh $3 12($0)
# 0x36e4
sb $26 15($0)
# 0x36e8
xori $6 $25 0xb966
# 0x36ec
sub $31 $7 $19
# 0x36f0
multu $9 $19
# 0x36f4
subu $9 $13 $2
# 0x36f8
subu $7 $30 $3
# 0x36fc
lb $18 22($0)
# 0x3700
lw $30 0($0)
# 0x3704
multu $22 $26
# 0x3708
xor $5 $10 $4
# 0x370c
mfhi $5
# 0x3710
lw $31 116($0)
# 0x3714
mflo $21
# 0x3718
sh $24 34($0)
# 0x371c
lb $5 31($0)
# 0x3720
ori $10 $14 0x9500
# 0x3724
multu $4 $10
# 0x3728
and $20 $12 $27
# 0x372c
sb $20 26($0)
# 0x3730
addu $10 $3 $2
# 0x3734
multu $22 $9
# 0x3738
andi $14 $13 0xd7ed
# 0x373c
xor $21 $19 $8
# 0x3740
mtlo $23
# 0x3744
sltu $13 $14 $27
# 0x3748
addiu $16 $22 21927
# 0x374c
sh $31 62($0)
# 0x3750
xor $13 $9 $30
# 0x3754
lw $26 116($0)
# 0x3758
slti $22 $24 15663
# 0x375c
mflo $10
# 0x3760
mflo $17
# 0x3764
xor $15 $23 $23
# 0x3768
add $25 $4 $9
# 0x376c
lw $25 16($0)
# 0x3770
lh $25 20($0)
# 0x3774
lw $30 84($0)
# 0x3778
mthi $20
# 0x377c
srav $5 $18 $22
# 0x3780
nor $25 $10 $10
# 0x3784
sb $24 4($0)
# 0x3788
xori $27 $26 0xfc87
# 0x378c
and $6 $14 $2
# 0x3790
addu $2 $10 $25
# 0x3794
sltu $14 $23 $30
# 0x3798
mtlo $12
# 0x379c
sw $2 4($0)
# 0x37a0
add $19 $7 $22
# 0x37a4
xori $21 $20 0x607b
# 0x37a8
sw $1 60($0)
# 0x37ac
slti $21 $14 -15836
# 0x37b0
addu $13 $11 $21
# 0x37b4
srlv $25 $6 $24
# 0x37b8
mtlo $20
# 0x37bc
sllv $25 $5 $18
# 0x37c0
srav $31 $26 $6
# 0x37c4
xor $9 $14 $18
# 0x37c8
lh $24 8($0)
# 0x37cc
sh $22 8($0)
# 0x37d0
srl $3 $12 28
# 0x37d4
addiu $27 $13 167
# 0x37d8
mtlo $16
# 0x37dc
srav $15 $16 $2
# 0x37e0
lw $16 16($0)
# 0x37e4
sh $10 0($0)
# 0x37e8
xori $30 $5 0xddbc
# 0x37ec
mtlo $9
# 0x37f0
slti $16 $31 -9768
# 0x37f4
lw $9 76($0)
# 0x37f8
lw $12 12($0)
# 0x37fc
sllv $26 $19 $30
# 0x3800
and $15 $8 $3
# 0x3804
sll $22 $20 24
# 0x3808
sllv $16 $23 $12
# 0x380c
lh $18 4($0)
# 0x3810
sh $1 30($0)
# 0x3814
sll $10 $8 2
# 0x3818
sltu $8 $5 $9
# 0x381c
sra $1 $6 12
# 0x3820
lw $22 24($0)
# 0x3824
srl $9 $19 8
# 0x3828
slt $15 $26 $15
# 0x382c
sw $11 0($0)
# 0x3830
or $23 $10 $25
# 0x3834
srlv $27 $25 $5
# 0x3838
addi $14 $17 -8977
# 0x383c
xori $11 $7 0xa7c9
# 0x3840
sh $15 28($0)
# 0x3844
lh $27 28($0)
# 0x3848
sb $30 27($0)
# 0x384c
sll $24 $27 15
# 0x3850
ori $23 $9 0x99e0
# 0x3854
srav $4 $8 $11
# 0x3858
slti $2 $12 -24021
# 0x385c
lhu $1 30($0)
# 0x3860
lbu $24 31($0)
# 0x3864
lw $13 4($0)
# 0x3868
mthi $26
# 0x386c
sll $30 $14 18
# 0x3870
mflo $14
# 0x3874
sw $19 52($0)
# 0x3878
sllv $12 $9 $26
# 0x387c
mthi $8
# 0x3880
slt $30 $15 $7
# 0x3884
andi $5 $2 0x8672
# 0x3888
sub $6 $18 $21
# 0x388c
slt $2 $23 $23
# 0x3890
nor $24 $4 $5
# 0x3894
lw $13 16($0)
# 0x3898
mtlo $14
# 0x389c
andi $16 $23 0x71b0
# 0x38a0
lui $4 0x3625
# 0x38a4
lb $23 12($0)
# 0x38a8
sh $15 6($0)
# 0x38ac
srlv $3 $27 $5
# 0x38b0
lhu $6 18($0)
# 0x38b4
lh $15 14($0)
# 0x38b8
lui $30 0x1af8
# 0x38bc
lw $4 108($0)
# 0x38c0
addu $8 $1 $14
# 0x38c4
slt $23 $7 $13
# 0x38c8
mfhi $21
# 0x38cc
sw $20 16($0)
# 0x38d0
addi $30 $13 -22073
# 0x38d4
srlv $17 $20 $18
# 0x38d8
srl $3 $1 25
# 0x38dc
srl $31 $18 26
# 0x38e0
mflo $17
# 0x38e4
lhu $30 2($0)
# 0x38e8
srl $24 $31 28
# 0x38ec
addu $11 $3 $13
# 0x38f0
lw $1 92($0)
# 0x38f4
mfhi $4
# 0x38f8
slti $9 $17 7831
# 0x38fc
sb $21 22($0)
# 0x3900
ori $6 $6 0xd209
# 0x3904
addi $20 $13 22077
# 0x3908
sll $2 $3 3
# 0x390c
sw $23 28($0)
# 0x3910
sltiu $19 $27 20408
# 0x3914
mflo $30
# 0x3918
sw $1 0($0)
# 0x391c
lhu $23 14($0)
# 0x3920
sw $9 24($0)
# 0x3924
sh $3 26($0)
# 0x3928
add $2 $5 $2
# 0x392c
lb $5 27($0)
# 0x3930
srlv $13 $18 $31
# 0x3934
lh $25 26($0)
# 0x3938
sh $19 18($0)
# 0x393c
mfhi $14
# 0x3940
sra $10 $19 11
# 0x3944
subu $12 $30 $24
# 0x3948
mthi $21
# 0x394c
addi $12 $20 11783
# 0x3950
subu $30 $24 $23
# 0x3954
addi $19 $5 2669
# 0x3958
sh $24 12($0)
# 0x395c
srlv $27 $12 $4
# 0x3960
mflo $23
# 0x3964
ori $17 $31 0x00f8
# 0x3968
sw $7 60($0)
# 0x396c
ori $5 $19 0x8264
# 0x3970
addi $15 $3 -2410
# 0x3974
lh $11 8($0)
# 0x3978
or $19 $26 $26
# 0x397c
mult $12 $6
# 0x3980
mthi $9
# 0x3984
lb $25 18($0)
# 0x3988
and $23 $3 $13
# 0x398c
sub $3 $16 $24
# 0x3990
mtlo $10
# 0x3994
sw $23 124($0)
# 0x3998
sh $17 26($0)
# 0x399c
sh $19 30($0)
# 0x39a0
subu $21 $18 $21
# 0x39a4
mult $22 $13
# 0x39a8
srlv $16 $16 $20
# 0x39ac
sll $31 $12 7
# 0x39b0
srl $19 $19 23
# 0x39b4
mfhi $31
# 0x39b8
subu $15 $22 $8
# 0x39bc
slti $6 $19 28820
# 0x39c0
lh $21 28($0)
# 0x39c4
srlv $22 $17 $7
# 0x39c8
sb $2 9($0)
# 0x39cc
sltiu $24 $17 16398
# 0x39d0
lw $9 8($0)
# 0x39d4
or $4 $9 $5
# 0x39d8
lhu $8 22($0)
# 0x39dc
sw $15 32($0)
# 0x39e0
srlv $6 $8 $21
# 0x39e4
srl $23 $2 6
# 0x39e8
or $15 $8 $14
# 0x39ec
multu $12 $23
# 0x39f0
mthi $16
# 0x39f4
nor $4 $16 $23
# 0x39f8
subu $24 $23 $30
# 0x39fc
andi $4 $12 0xfe0e
# 0x3a00
multu $6 $21
# 0x3a04
addi $20 $30 8698
# 0x3a08
mtlo $30
# 0x3a0c
sh $18 20($0)
# 0x3a10
mthi $14
# 0x3a14
sh $13 48($0)
# 0x3a18
lh $20 58($0)
# 0x3a1c
lw $24 8($0)
# 0x3a20
and $14 $14 $4
# 0x3a24
xori $16 $7 0x910b
# 0x3a28
lw $25 20($0)
# 0x3a2c
add $22 $20 $8
# 0x3a30
xori $7 $13 0x6e74
# 0x3a34
or $9 $13 $8
# 0x3a38
lw $20 20($0)
# 0x3a3c
mfhi $5
# 0x3a40
sub $2 $20 $17
# 0x3a44
sh $27 4($0)
# 0x3a48
multu $4 $31
# 0x3a4c
addu $25 $10 $1
# 0x3a50
srlv $2 $1 $31
# 0x3a54
xori $1 $7 0x7217
# 0x3a58
sw $5 76($0)
# 0x3a5c
lh $27 6($0)
# 0x3a60
sh $27 24($0)
# 0x3a64
sh $6 30($0)
# 0x3a68
slt $5 $23 $12
# 0x3a6c
mtlo $27
# 0x3a70
sh $24 10($0)
# 0x3a74
xor $25 $11 $11
# 0x3a78
sltiu $8 $19 190
# 0x3a7c
lw $12 0($0)
# 0x3a80
sw $4 12($0)
# 0x3a84
xori $21 $17 0xbb50
# 0x3a88
addi $18 $5 -30278
# 0x3a8c
lb $3 4($0)
# 0x3a90
lui $17 0x2509
# 0x3a94
lw $24 92($0)
# 0x3a98
nor $27 $24 $6
# 0x3a9c
addiu $24 $16 21132
# 0x3aa0
addu $19 $5 $24
# 0x3aa4
add $14 $7 $25
# 0x3aa8
mflo $23
# 0x3aac
mthi $9
# 0x3ab0
multu $2 $25
# 0x3ab4
srlv $23 $17 $16
# 0x3ab8
andi $18 $15 0x45d2
# 0x3abc
slt $26 $18 $16
# 0x3ac0
lb $4 10($0)
# 0x3ac4
andi $2 $14 0x9b42
# 0x3ac8
and $30 $8 $22
# 0x3acc
ori $22 $25 0xe953
# 0x3ad0
srlv $18 $27 $5
# 0x3ad4
sra $25 $4 14
# 0x3ad8
lh $24 6($0)
# 0x3adc
addi $24 $6 -9854
# 0x3ae0
sltiu $12 $2 15278
# 0x3ae4
subu $20 $23 $11
# 0x3ae8
sllv $5 $5 $20
# 0x3aec
sra $23 $26 23
# 0x3af0
lb $22 23($0)
# 0x3af4
srlv $25 $11 $15
# 0x3af8
xor $27 $27 $18
# 0x3afc
addi $26 $13 2526
# 0x3b00
sll $9 $18 9
# 0x3b04
lhu $31 2($0)
# 0x3b08
add $8 $20 $12
# 0x3b0c
lb $3 0($0)
# 0x3b10
srlv $18 $11 $11
# 0x3b14
nor $21 $27 $20
# 0x3b18
mfhi $4
# 0x3b1c
slt $17 $8 $3
# 0x3b20
lui $22 0x8f4b
# 0x3b24
sll $12 $7 1
# 0x3b28
andi $7 $24 0x53ad
# 0x3b2c
sllv $18 $31 $19
# 0x3b30
xori $31 $3 0x8038
# 0x3b34
lbu $2 25($0)
# 0x3b38
sw $5 92($0)
# 0x3b3c
addu $17 $2 $3
# 0x3b40
srlv $13 $26 $5
# 0x3b44
and $9 $31 $13
# 0x3b48
xor $3 $15 $6
# 0x3b4c
subu $22 $7 $31
# 0x3b50
mtlo $14
# 0x3b54
lhu $24 12($0)
# 0x3b58
addu $26 $5 $31
# 0x3b5c
xor $17 $7 $8
# 0x3b60
addi $9 $14 -29578
# 0x3b64
lbu $3 2($0)
# 0x3b68
srl $9 $3 5
# 0x3b6c
add $8 $14 $22
# 0x3b70
mfhi $25
# 0x3b74
lh $11 10($0)
# 0x3b78
sw $21 8($0)
# 0x3b7c
subu $8 $17 $26
# 0x3b80
nor $7 $24 $6
# 0x3b84
andi $24 $17 0x4438
# 0x3b88
lh $16 60($0)
# 0x3b8c
sh $24 10($0)
# 0x3b90
and $7 $15 $25
# 0x3b94
sltu $15 $16 $15
# 0x3b98
lb $21 22($0)
# 0x3b9c
addiu $9 $6 30683
# 0x3ba0
sw $3 8($0)
# 0x3ba4
lhu $31 12($0)
# 0x3ba8
sllv $1 $13 $10
# 0x3bac
sltu $9 $25 $11
# 0x3bb0
add $30 $5 $15
# 0x3bb4
lh $18 58($0)
# 0x3bb8
lhu $20 6($0)
# 0x3bbc
or $18 $16 $12
# 0x3bc0
mflo $24
# 0x3bc4
lbu $1 6($0)
# 0x3bc8
sh $13 28($0)
# 0x3bcc
nor $26 $12 $9
# 0x3bd0
and $19 $20 $24
# 0x3bd4
multu $24 $16
# 0x3bd8
sh $17 28($0)
# 0x3bdc
subu $15 $14 $14
# 0x3be0
lhu $5 20($0)
# 0x3be4
multu $21 $15
# 0x3be8
add $30 $5 $19
# 0x3bec
slti $10 $12 -6864
# 0x3bf0
addi $24 $11 -7261
# 0x3bf4
addu $24 $9 $27
# 0x3bf8
sll $1 $20 27
# 0x3bfc
subu $10 $8 $5
# 0x3c00
sllv $4 $31 $26
# 0x3c04
sllv $11 $21 $11
# 0x3c08
lh $12 26($0)
# 0x3c0c
lh $13 18($0)
# 0x3c10
ori $15 $12 0x3191
# 0x3c14
slti $5 $31 -13369
# 0x3c18
xor $21 $8 $10
# 0x3c1c
andi $20 $8 0x5f23
# 0x3c20
mtlo $24
# 0x3c24
sh $16 2($0)
# 0x3c28
sra $15 $20 8
# 0x3c2c
lhu $30 0($0)
# 0x3c30
srlv $10 $25 $3
# 0x3c34
lh $14 24($0)
# 0x3c38
multu $20 $24
# 0x3c3c
mfhi $11
# 0x3c40
andi $17 $18 0x0079
# 0x3c44
lb $27 20($0)
# 0x3c48
sll $23 $24 23
# 0x3c4c
sh $12 36($0)
# 0x3c50
sra $12 $23 14
# 0x3c54
sh $2 16($0)
# 0x3c58
mfhi $25
# 0x3c5c
or $27 $9 $18
# 0x3c60
mflo $30
# 0x3c64
sllv $3 $4 $5
# 0x3c68
sltiu $13 $15 13983
# 0x3c6c
srl $3 $5 15
# 0x3c70
sw $30 16($0)
# 0x3c74
subu $6 $6 $22
# 0x3c78
addiu $11 $15 22447
# 0x3c7c
lh $26 12($0)
# 0x3c80
lh $12 52($0)
# 0x3c84
lui $5 0x4372
# 0x3c88
sltu $21 $22 $13
# 0x3c8c
or $17 $14 $11
# 0x3c90
and $22 $31 $31
# 0x3c94
sra $13 $15 4
# 0x3c98
srlv $16 $30 $7
# 0x3c9c
sltu $30 $3 $2
# 0x3ca0
and $12 $20 $4
# 0x3ca4
add $5 $31 $6
# 0x3ca8
lw $25 20($0)
# 0x3cac
sh $12 2($0)
# 0x3cb0
slti $15 $22 24195
# 0x3cb4
lh $26 16($0)
# 0x3cb8
sw $17 108($0)
# 0x3cbc
addi $18 $21 -19899
# 0x3cc0
sb $11 0($0)
# 0x3cc4
xori $21 $9 0x37f2
# 0x3cc8
sw $14 72($0)
# 0x3ccc
sltiu $18 $15 2826
# 0x3cd0
sw $9 16($0)
# 0x3cd4
srl $9 $1 7
# 0x3cd8
sh $5 58($0)
# 0x3cdc
srlv $20 $12 $30
# 0x3ce0
sll $16 $17 25
# 0x3ce4
lh $21 16($0)
# 0x3ce8
lw $16 108($0)
# 0x3cec
slt $21 $5 $30
# 0x3cf0
srl $27 $25 0
# 0x3cf4
lbu $25 29($0)
# 0x3cf8
addi $15 $2 13831
# 0x3cfc
lh $14 12($0)
# 0x3d00
srav $20 $31 $21
# 0x3d04
nor $13 $31 $4
# 0x3d08
ori $21 $10 0xc7f7
# 0x3d0c
slt $15 $8 $19
# 0x3d10
lui $4 0x280e
# 0x3d14
sll $12 $8 0
# 0x3d18
sh $22 48($0)
# 0x3d1c
lw $11 108($0)
# 0x3d20
slti $31 $21 18008
# 0x3d24
sltiu $14 $19 21209
# 0x3d28
srlv $21 $6 $2
# 0x3d2c
ori $12 $22 0x051c
# 0x3d30
sb $17 9($0)
# 0x3d34
sllv $8 $30 $12
# 0x3d38
addu $10 $31 $16
# 0x3d3c
slt $15 $26 $20
# 0x3d40
lw $15 0($0)
# 0x3d44
mfhi $4
# 0x3d48
srav $10 $9 $24
# 0x3d4c
sub $3 $25 $18
# 0x3d50
sltiu $11 $6 25680
# 0x3d54
or $3 $26 $7
# 0x3d58
xori $19 $26 0xf1b8
# 0x3d5c
nor $2 $20 $16
# 0x3d60
srav $1 $4 $27
# 0x3d64
mtlo $24
# 0x3d68
sltu $8 $13 $4
# 0x3d6c
nor $2 $27 $5
# 0x3d70
lh $6 14($0)
# 0x3d74
lhu $18 22($0)
# 0x3d78
sra $12 $12 27
# 0x3d7c
sw $21 20($0)
# 0x3d80
lbu $31 1($0)
# 0x3d84
or $27 $9 $11
# 0x3d88
sllv $22 $15 $23
# 0x3d8c
xor $12 $20 $31
# 0x3d90
mfhi $18
# 0x3d94
ori $13 $30 0x5d92
# 0x3d98
sltiu $20 $7 22559
# 0x3d9c
srl $31 $27 7
# 0x3da0
slti $27 $5 26139
# 0x3da4
add $27 $9 $11
# 0x3da8
subu $26 $16 $7
# 0x3dac
sltiu $13 $21 15607
# 0x3db0
and $14 $21 $11
# 0x3db4
sh $27 6($0)
# 0x3db8
sw $7 16($0)
# 0x3dbc
sw $9 4($0)
# 0x3dc0
lw $26 44($0)
# 0x3dc4
lw $13 16($0)
# 0x3dc8
andi $16 $18 0x371e
# 0x3dcc
mflo $26
# 0x3dd0
sw $1 40($0)
# 0x3dd4
lui $24 0xffca
# 0x3dd8
slti $3 $16 -13245
# 0x3ddc
addi $20 $23 24945
# 0x3de0
lh $31 18($0)
# 0x3de4
srl $7 $3 19
# 0x3de8
multu $22 $22
# 0x3dec
sltu $11 $23 $18
# 0x3df0
andi $27 $13 0x6fa8
# 0x3df4
multu $12 $12
# 0x3df8
sw $20 4($0)
# 0x3dfc
sw $20 0($0)
# 0x3e00
slt $8 $3 $22
# 0x3e04
sw $15 16($0)
# 0x3e08
multu $31 $11
# 0x3e0c
lb $4 6($0)
# 0x3e10
nor $22 $30 $14
# 0x3e14
mult $9 $16
# 0x3e18
addi $15 $13 4755
# 0x3e1c
xori $13 $3 0x3ef5
# 0x3e20
addiu $19 $17 18515
# 0x3e24
lw $24 116($0)
# 0x3e28
sll $4 $12 30
# 0x3e2c
multu $7 $25
# 0x3e30
addu $13 $7 $1
# 0x3e34
srlv $10 $30 $18
# 0x3e38
sh $24 18($0)
# 0x3e3c
addiu $8 $20 10209
# 0x3e40
mult $9 $6
# 0x3e44
mfhi $19
# 0x3e48
lh $11 42($0)
# 0x3e4c
sb $4 3($0)
# 0x3e50
subu $14 $10 $7
# 0x3e54
mult $3 $30
# 0x3e58
ori $12 $20 0xa15a
# 0x3e5c
sub $4 $16 $24
# 0x3e60
lhu $8 26($0)
# 0x3e64
sb $18 14($0)
# 0x3e68
multu $18 $30
# 0x3e6c
mtlo $5
# 0x3e70
lw $16 8($0)
# 0x3e74
slti $27 $6 -25034
# 0x3e78
srav $16 $21 $31
# 0x3e7c
sub $6 $18 $4
# 0x3e80
mtlo $3
# 0x3e84
sb $10 19($0)
# 0x3e88
subu $5 $18 $5
# 0x3e8c
srav $19 $16 $13
# 0x3e90
addiu $1 $21 32186
# 0x3e94
sh $2 10($0)
# 0x3e98
srlv $18 $22 $31
# 0x3e9c
addi $19 $24 -12721
# 0x3ea0
sh $17 6($0)
# 0x3ea4
mtlo $25
# 0x3ea8
mflo $13
# 0x3eac
mthi $15
# 0x3eb0
ori $18 $21 0x5a54
# 0x3eb4
multu $14 $22
# 0x3eb8
xori $3 $31 0xabc3
# 0x3ebc
nor $18 $18 $17
# 0x3ec0
srav $12 $2 $16
# 0x3ec4
addi $11 $9 -22741
# 0x3ec8
sltu $25 $2 $7
# 0x3ecc
addiu $1 $3 16452
# 0x3ed0
xor $7 $23 $21
# 0x3ed4
lw $10 24($0)
# 0x3ed8
sw $21 20($0)
# 0x3edc
addiu $26 $11 21662
# 0x3ee0
srlv $11 $6 $10
# 0x3ee4
addu $6 $23 $1
# 0x3ee8
lw $27 24($0)
# 0x3eec
lw $20 8($0)
# 0x3ef0
sltiu $4 $8 11932
# 0x3ef4
and $27 $23 $21
# 0x3ef8
xor $20 $13 $12
# 0x3efc
and $27 $20 $21
# 0x3f00
sh $18 26($0)
# 0x3f04
multu $7 $20
# 0x3f08
lh $15 46($0)
# 0x3f0c
xor $6 $17 $18
# 0x3f10
mthi $11
# 0x3f14
sh $12 8($0)
# 0x3f18
lb $30 9($0)
# 0x3f1c
addi $31 $31 -27171
# 0x3f20
sw $9 12($0)
# 0x3f24
lw $3 32($0)
# 0x3f28
multu $31 $18
# 0x3f2c
andi $24 $3 0xb4ba
# 0x3f30
subu $12 $27 $14
# 0x3f34
sltiu $19 $30 20391
# 0x3f38
lb $1 26($0)
# 0x3f3c
srl $5 $18 20
# 0x3f40
lh $10 46($0)
# 0x3f44
addu $27 $25 $20
# 0x3f48
mthi $23
# 0x3f4c
sra $10 $25 22
# 0x3f50
ori $5 $3 0x1be0
# 0x3f54
andi $5 $20 0x59a4
# 0x3f58
sltiu $27 $21 4019
# 0x3f5c
mthi $15
# 0x3f60
and $17 $7 $1
# 0x3f64
ori $23 $15 0x1b60
# 0x3f68
multu $3 $30
# 0x3f6c
lb $12 29($0)
# 0x3f70
lw $18 28($0)
# 0x3f74
sh $16 2($0)
# 0x3f78
or $7 $22 $13
# 0x3f7c
or $31 $24 $14
# 0x3f80
andi $25 $1 0xdbe2
# 0x3f84
mult $5 $24
# 0x3f88
sub $31 $6 $5
# 0x3f8c
sub $27 $30 $30
# 0x3f90
srlv $7 $10 $3
# 0x3f94
nor $6 $30 $16
# 0x3f98
lbu $11 14($0)
# 0x3f9c
lhu $2 24($0)
# 0x3fa0
multu $31 $18

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop