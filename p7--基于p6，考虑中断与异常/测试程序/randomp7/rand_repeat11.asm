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
sw $23 28($0)
# 0x3008
sll $17 $1 17
# 0x300c
mfhi $22
# 0x3010
lh $11 28($0)
# 0x3014
srav $24 $6 $14
# 0x3018
addiu $8 $5 1619
# 0x301c
addi $14 $22 31161
# 0x3020
andi $20 $17 0x5939
# 0x3024
multu $5 $12
# 0x3028
lw $30 4($0)
# 0x302c
srlv $4 $10 $5
# 0x3030
lhu $9 24($0)
# 0x3034
srlv $22 $26 $27
# 0x3038
srav $2 $6 $15
# 0x303c
sh $23 2($0)
# 0x3040
srl $22 $11 25
# 0x3044
and $12 $16 $6
# 0x3048
mfhi $17
# 0x304c
sll $3 $23 4
# 0x3050
addi $6 $6 27456
# 0x3054
srlv $7 $6 $4
# 0x3058
lui $15 0x462f
# 0x305c
andi $2 $24 0x1c91
# 0x3060
nor $31 $6 $9
# 0x3064
srlv $25 $16 $25
# 0x3068
subu $10 $19 $27
# 0x306c
addi $17 $20 6714
# 0x3070
sll $11 $1 9
# 0x3074
srav $23 $5 $23
# 0x3078
sub $6 $4 $1
# 0x307c
lh $3 42($0)
# 0x3080
sh $8 20($0)
# 0x3084
lh $12 6($0)
# 0x3088
addiu $9 $25 20356
# 0x308c
xor $7 $3 $1
# 0x3090
or $22 $22 $19
# 0x3094
mfhi $7
# 0x3098
ori $14 $31 0x412a
# 0x309c
sra $4 $30 27
# 0x30a0
mtlo $11
# 0x30a4
multu $10 $27
# 0x30a8
srav $22 $16 $3
# 0x30ac
sltiu $12 $16 9194
# 0x30b0
or $4 $18 $11
# 0x30b4
lw $11 4($0)
# 0x30b8
sll $11 $17 18
# 0x30bc
nor $21 $15 $26
# 0x30c0
mtlo $5
# 0x30c4
xor $15 $11 $9
# 0x30c8
sw $24 12($0)
# 0x30cc
slt $3 $12 $9
# 0x30d0
sll $8 $24 8
# 0x30d4
ori $16 $23 0x30d1
# 0x30d8
srlv $16 $5 $17
# 0x30dc
and $11 $9 $4
# 0x30e0
addi $12 $5 -4052
# 0x30e4
slt $6 $17 $20
# 0x30e8
lui $18 0x830c
# 0x30ec
mult $18 $6
# 0x30f0
lb $21 29($0)
# 0x30f4
sh $7 38($0)
# 0x30f8
sra $5 $11 1
# 0x30fc
addiu $10 $8 22869
# 0x3100
lhu $5 16($0)
# 0x3104
subu $15 $3 $20
# 0x3108
lw $11 4($0)
# 0x310c
sb $24 31($0)
# 0x3110
sh $16 24($0)
# 0x3114
sra $10 $20 23
# 0x3118
mthi $18
# 0x311c
andi $17 $25 0xcef5
# 0x3120
mfhi $20
# 0x3124
and $5 $14 $4
# 0x3128
sltiu $6 $11 27066
# 0x312c
addu $3 $15 $14
# 0x3130
sll $17 $2 16
# 0x3134
sltu $22 $17 $13
# 0x3138
lui $3 0x5b98
# 0x313c
mfhi $22
# 0x3140
srav $6 $11 $13
# 0x3144
sh $3 52($0)
# 0x3148
ori $1 $30 0xb090
# 0x314c
sll $20 $3 28
# 0x3150
lh $3 30($0)
# 0x3154
sw $22 28($0)
# 0x3158
lh $21 10($0)
# 0x315c
sub $1 $31 $21
# 0x3160
sltiu $30 $1 2445
# 0x3164
lbu $9 27($0)
# 0x3168
andi $5 $27 0xa45d
# 0x316c
add $27 $4 $31
# 0x3170
xori $22 $18 0xf491
# 0x3174
mult $19 $2
# 0x3178
sh $18 22($0)
# 0x317c
lw $22 16($0)
# 0x3180
sltiu $24 $3 32187
# 0x3184
sra $3 $4 16
# 0x3188
mflo $10
# 0x318c
srl $12 $2 20
# 0x3190
sllv $16 $21 $2
# 0x3194
lui $21 0x5adb
# 0x3198
ori $3 $11 0x1e4a
# 0x319c
sub $7 $14 $31
# 0x31a0
sub $2 $20 $25
# 0x31a4
slti $3 $14 -2214
# 0x31a8
lbu $16 11($0)
# 0x31ac
srav $14 $22 $26
# 0x31b0
xori $22 $1 0x845c
# 0x31b4
sltiu $10 $13 946
# 0x31b8
addu $7 $25 $7
# 0x31bc
andi $22 $19 0x7131
# 0x31c0
or $23 $3 $30
# 0x31c4
slti $24 $27 13259
# 0x31c8
mtlo $6
# 0x31cc
sllv $7 $8 $25
# 0x31d0
lui $3 0x661f
# 0x31d4
sh $8 18($0)
# 0x31d8
lbu $31 29($0)
# 0x31dc
sh $24 8($0)
# 0x31e0
xor $22 $17 $13
# 0x31e4
nor $18 $3 $31
# 0x31e8
mthi $4
# 0x31ec
sub $4 $27 $9
# 0x31f0
sh $21 24($0)
# 0x31f4
sllv $3 $24 $10
# 0x31f8
xori $1 $15 0xc69a
# 0x31fc
lhu $7 0($0)
# 0x3200
mflo $10
# 0x3204
sllv $14 $18 $12
# 0x3208
lw $16 76($0)
# 0x320c
andi $20 $21 0xb9ac
# 0x3210
slti $8 $7 -15236
# 0x3214
mthi $7
# 0x3218
sh $25 30($0)
# 0x321c
sra $12 $19 13
# 0x3220
mfhi $20
# 0x3224
lw $9 88($0)
# 0x3228
slt $21 $24 $20
# 0x322c
sllv $21 $19 $6
# 0x3230
mfhi $5
# 0x3234
lh $7 8($0)
# 0x3238
sh $13 46($0)
# 0x323c
nor $10 $3 $11
# 0x3240
sw $13 20($0)
# 0x3244
sw $12 48($0)
# 0x3248
sb $12 7($0)
# 0x324c
lh $5 18($0)
# 0x3250
sh $13 12($0)
# 0x3254
mthi $7
# 0x3258
add $4 $4 $3
# 0x325c
mult $30 $24
# 0x3260
sra $24 $7 1
# 0x3264
lhu $13 12($0)
# 0x3268
lui $16 0x97f9
# 0x326c
mfhi $18
# 0x3270
lw $30 124($0)
# 0x3274
sb $21 13($0)
# 0x3278
lh $6 2($0)
# 0x327c
ori $5 $20 0xf6dc
# 0x3280
lui $22 0x2357
# 0x3284
lw $3 20($0)
# 0x3288
lb $7 19($0)
# 0x328c
sub $31 $10 $24
# 0x3290
sub $10 $4 $15
# 0x3294
or $20 $31 $7
# 0x3298
addu $22 $10 $11
# 0x329c
multu $22 $14
# 0x32a0
mtlo $10
# 0x32a4
sub $19 $21 $3
# 0x32a8
lui $13 0x5ab2
# 0x32ac
sllv $3 $10 $31
# 0x32b0
lhu $4 2($0)
# 0x32b4
andi $13 $21 0x024e
# 0x32b8
lui $6 0xf51c
# 0x32bc
multu $21 $14
# 0x32c0
ori $24 $30 0xcc7e
# 0x32c4
lw $17 0($0)
# 0x32c8
subu $3 $18 $19
# 0x32cc
sub $23 $3 $1
# 0x32d0
sh $8 18($0)
# 0x32d4
mfhi $30
# 0x32d8
lbu $2 28($0)
# 0x32dc
mfhi $12
# 0x32e0
sh $2 26($0)
# 0x32e4
sllv $5 $9 $21
# 0x32e8
sb $13 8($0)
# 0x32ec
andi $11 $15 0xdbd6
# 0x32f0
mflo $6
# 0x32f4
sub $17 $18 $5
# 0x32f8
ori $11 $31 0xd9c9
# 0x32fc
xori $9 $10 0xb478
# 0x3300
lui $7 0xa133
# 0x3304
sra $5 $21 29
# 0x3308
lb $4 27($0)
# 0x330c
ori $7 $27 0xcdbb
# 0x3310
addiu $26 $14 26757
# 0x3314
lbu $31 5($0)
# 0x3318
or $19 $4 $26
# 0x331c
srav $1 $11 $13
# 0x3320
mfhi $3
# 0x3324
xor $30 $19 $24
# 0x3328
sb $8 31($0)
# 0x332c
sllv $2 $27 $26
# 0x3330
srl $13 $6 1
# 0x3334
add $25 $20 $19
# 0x3338
xor $27 $20 $27
# 0x333c
lhu $23 0($0)
# 0x3340
addiu $17 $23 30639
# 0x3344
lhu $31 16($0)
# 0x3348
mtlo $21
# 0x334c
lw $5 20($0)
# 0x3350
srav $27 $2 $19
# 0x3354
xori $8 $23 0x9a68
# 0x3358
and $3 $3 $16
# 0x335c
addiu $26 $5 9732
# 0x3360
addi $1 $30 30014
# 0x3364
lw $9 28($0)
# 0x3368
srlv $22 $19 $16
# 0x336c
srl $1 $2 12
# 0x3370
addiu $10 $14 28482
# 0x3374
multu $10 $12
# 0x3378
srav $1 $4 $5
# 0x337c
srlv $11 $5 $27
# 0x3380
ori $13 $17 0xb572
# 0x3384
subu $26 $26 $4
# 0x3388
sb $14 2($0)
# 0x338c
sw $1 112($0)
# 0x3390
mtlo $23
# 0x3394
sh $11 30($0)
# 0x3398
sub $15 $6 $25
# 0x339c
add $31 $13 $6
# 0x33a0
mfhi $11
# 0x33a4
srlv $23 $5 $12
# 0x33a8
slt $30 $7 $30
# 0x33ac
xori $3 $13 0xcf59
# 0x33b0
addu $19 $10 $27
# 0x33b4
sb $24 28($0)
# 0x33b8
sb $16 1($0)
# 0x33bc
mflo $16
# 0x33c0
sra $20 $19 21
# 0x33c4
lh $24 2($0)
# 0x33c8
addu $22 $24 $2
# 0x33cc
lb $20 2($0)
# 0x33d0
srav $18 $15 $2
# 0x33d4
multu $3 $10
# 0x33d8
sltu $15 $16 $3
# 0x33dc
sh $14 18($0)
# 0x33e0
or $17 $1 $11
# 0x33e4
sub $17 $18 $12
# 0x33e8
mthi $11
# 0x33ec
sltiu $14 $12 20378
# 0x33f0
lh $6 0($0)
# 0x33f4
sltu $22 $16 $24
# 0x33f8
slti $8 $12 7148
# 0x33fc
multu $4 $2
# 0x3400
lh $26 20($0)
# 0x3404
subu $2 $26 $22
# 0x3408
slti $30 $21 -31860
# 0x340c
mflo $11
# 0x3410
sw $22 12($0)
# 0x3414
or $26 $17 $5
# 0x3418
mult $4 $22
# 0x341c
addi $19 $26 -22989
# 0x3420
subu $16 $16 $8
# 0x3424
lw $8 12($0)
# 0x3428
nor $17 $14 $7
# 0x342c
addu $4 $18 $15
# 0x3430
xori $2 $22 0xbaa3
# 0x3434
sra $20 $4 23
# 0x3438
addu $8 $19 $14
# 0x343c
sllv $10 $27 $24
# 0x3440
or $14 $26 $21
# 0x3444
sltiu $23 $30 22182
# 0x3448
xori $16 $18 0x441f
# 0x344c
mfhi $19
# 0x3450
and $16 $31 $22
# 0x3454
sub $18 $4 $16
# 0x3458
xor $23 $16 $18
# 0x345c
nor $9 $9 $22
# 0x3460
sra $7 $24 18
# 0x3464
xor $8 $10 $18
# 0x3468
sll $27 $11 0
# 0x346c
sltu $27 $23 $6
# 0x3470
andi $31 $3 0xcdae
# 0x3474
mflo $7
# 0x3478
lh $4 16($0)
# 0x347c
add $25 $11 $21
# 0x3480
lb $25 21($0)
# 0x3484
subu $8 $15 $11
# 0x3488
sra $23 $19 25
# 0x348c
sw $25 0($0)
# 0x3490
lb $4 17($0)
# 0x3494
addiu $3 $18 12608
# 0x3498
sll $26 $13 6
# 0x349c
sll $30 $22 4
# 0x34a0
ori $30 $10 0xbb51
# 0x34a4
mfhi $21
# 0x34a8
sll $6 $30 28
# 0x34ac
subu $16 $9 $30
# 0x34b0
lh $20 52($0)
# 0x34b4
sra $6 $21 21
# 0x34b8
lui $3 0xa98c
# 0x34bc
mtlo $27
# 0x34c0
sw $17 60($0)
# 0x34c4
lb $16 6($0)
# 0x34c8
srlv $26 $20 $6
# 0x34cc
multu $5 $18
# 0x34d0
sll $24 $27 22
# 0x34d4
mtlo $15
# 0x34d8
mthi $21
# 0x34dc
srav $1 $21 $13
# 0x34e0
lhu $15 28($0)
# 0x34e4
srl $9 $15 25
# 0x34e8
mflo $26
# 0x34ec
lbu $3 27($0)
# 0x34f0
srlv $30 $12 $5
# 0x34f4
sltu $27 $5 $13
# 0x34f8
srlv $23 $12 $7
# 0x34fc
addu $22 $8 $10
# 0x3500
andi $14 $18 0xbf23
# 0x3504
sw $11 24($0)
# 0x3508
sh $30 8($0)
# 0x350c
sllv $30 $23 $19
# 0x3510
addiu $22 $21 13868
# 0x3514
srlv $30 $13 $30
# 0x3518
xor $31 $15 $26
# 0x351c
lw $17 28($0)
# 0x3520
sub $7 $25 $7
# 0x3524
lw $7 124($0)
# 0x3528
lw $1 16($0)
# 0x352c
lh $7 22($0)
# 0x3530
lb $23 9($0)
# 0x3534
lbu $14 30($0)
# 0x3538
slti $15 $25 13672
# 0x353c
mthi $5
# 0x3540
mflo $10
# 0x3544
addi $2 $18 -1714
# 0x3548
slti $19 $24 21594
# 0x354c
sw $4 24($0)
# 0x3550
addu $16 $6 $14
# 0x3554
multu $24 $26
# 0x3558
addu $2 $8 $24
# 0x355c
sh $6 22($0)
# 0x3560
xori $4 $9 0xe7c0
# 0x3564
lui $12 0xe4d1
# 0x3568
srl $18 $19 26
# 0x356c
sllv $20 $5 $24
# 0x3570
subu $15 $17 $10
# 0x3574
mtlo $6
# 0x3578
lui $6 0x36c5
# 0x357c
slt $13 $24 $31
# 0x3580
addi $6 $5 -13921
# 0x3584
sw $24 12($0)
# 0x3588
sb $14 23($0)
# 0x358c
mthi $21
# 0x3590
lw $22 96($0)
# 0x3594
srlv $31 $13 $12
# 0x3598
lb $30 13($0)
# 0x359c
mtlo $5
# 0x35a0
and $27 $22 $4
# 0x35a4
sll $17 $1 16
# 0x35a8
sw $31 16($0)
# 0x35ac
mthi $11
# 0x35b0
sltu $16 $16 $22
# 0x35b4
lhu $3 28($0)
# 0x35b8
lb $23 3($0)
# 0x35bc
xori $9 $30 0xf372
# 0x35c0
addi $17 $30 -1232
# 0x35c4
addiu $5 $5 6693
# 0x35c8
mtlo $4
# 0x35cc
sra $3 $15 9
# 0x35d0
srlv $12 $18 $31
# 0x35d4
sra $8 $19 0
# 0x35d8
sltu $20 $11 $4
# 0x35dc
nor $16 $26 $17
# 0x35e0
multu $15 $6
# 0x35e4
slt $11 $21 $8
# 0x35e8
sll $12 $9 9
# 0x35ec
sltiu $3 $16 30837
# 0x35f0
srav $25 $19 $24
# 0x35f4
lui $27 0xe6b1
# 0x35f8
xori $17 $25 0x1f79
# 0x35fc
srlv $31 $14 $30
# 0x3600
sra $27 $2 18
# 0x3604
lui $20 0xf1db
# 0x3608
addiu $11 $30 26353
# 0x360c
mult $30 $19
# 0x3610
sw $26 16($0)
# 0x3614
sw $8 4($0)
# 0x3618
sllv $12 $30 $9
# 0x361c
xori $6 $19 0x2504
# 0x3620
sw $30 44($0)
# 0x3624
lw $30 96($0)
# 0x3628
and $14 $19 $13
# 0x362c
addi $3 $30 -31688
# 0x3630
multu $13 $21
# 0x3634
subu $2 $14 $17
# 0x3638
sll $5 $23 9
# 0x363c
lui $2 0x946c
# 0x3640
lh $6 54($0)
# 0x3644
addu $8 $6 $20
# 0x3648
lbu $24 0($0)
# 0x364c
lw $16 24($0)
# 0x3650
sltu $20 $26 $3
# 0x3654
subu $11 $20 $2
# 0x3658
sw $5 8($0)
# 0x365c
srl $30 $11 19
# 0x3660
mflo $19
# 0x3664
lh $1 40($0)
# 0x3668
srlv $30 $24 $27
# 0x366c
addi $6 $24 27808
# 0x3670
mflo $3
# 0x3674
sltiu $10 $1 17575
# 0x3678
add $20 $1 $27
# 0x367c
srav $24 $31 $22
# 0x3680
slti $6 $4 -23867
# 0x3684
lh $31 62($0)
# 0x3688
srl $3 $24 0
# 0x368c
sltiu $19 $24 5605
# 0x3690
sltiu $20 $5 27688
# 0x3694
lhu $18 4($0)
# 0x3698
lh $14 28($0)
# 0x369c
lb $23 24($0)
# 0x36a0
add $19 $14 $25
# 0x36a4
lw $9 40($0)
# 0x36a8
lbu $7 28($0)
# 0x36ac
srav $16 $23 $25
# 0x36b0
addu $22 $2 $21
# 0x36b4
sb $4 1($0)
# 0x36b8
mtlo $11
# 0x36bc
lui $2 0x671c
# 0x36c0
mthi $22
# 0x36c4
sw $9 80($0)
# 0x36c8
sltu $24 $12 $24
# 0x36cc
sll $31 $3 3
# 0x36d0
sllv $16 $19 $4
# 0x36d4
sll $31 $30 7
# 0x36d8
mthi $19
# 0x36dc
mtlo $26
# 0x36e0
andi $11 $13 0xa237
# 0x36e4
srav $15 $20 $13
# 0x36e8
multu $30 $4
# 0x36ec
srlv $24 $6 $16
# 0x36f0
mult $21 $19
# 0x36f4
addu $12 $15 $4
# 0x36f8
lw $31 24($0)
# 0x36fc
lbu $10 13($0)
# 0x3700
lw $30 0($0)
# 0x3704
multu $15 $12
# 0x3708
srlv $2 $6 $14
# 0x370c
lhu $9 18($0)
# 0x3710
mfhi $9
# 0x3714
lh $11 4($0)
# 0x3718
sb $21 15($0)
# 0x371c
sll $9 $8 28
# 0x3720
srav $23 $19 $6
# 0x3724
slti $21 $9 -23386
# 0x3728
mtlo $5
# 0x372c
and $20 $15 $10
# 0x3730
sb $20 3($0)
# 0x3734
sra $21 $11 16
# 0x3738
slti $11 $22 -8900
# 0x373c
lbu $24 25($0)
# 0x3740
lb $23 16($0)
# 0x3744
mtlo $2
# 0x3748
mtlo $12
# 0x374c
andi $19 $5 0x3ce3
# 0x3750
mtlo $4
# 0x3754
srlv $17 $23 $31
# 0x3758
mflo $12
# 0x375c
lh $18 12($0)
# 0x3760
nor $4 $30 $7
# 0x3764
lw $3 4($0)
# 0x3768
sh $25 22($0)
# 0x376c
xori $20 $27 0xe22f
# 0x3770
lb $22 20($0)
# 0x3774
addiu $26 $11 23661
# 0x3778
addiu $11 $26 5666
# 0x377c
and $10 $4 $16
# 0x3780
sll $8 $15 16
# 0x3784
nor $22 $26 $12
# 0x3788
lw $10 36($0)
# 0x378c
lhu $7 28($0)
# 0x3790
slti $17 $17 -26264
# 0x3794
addu $11 $2 $12
# 0x3798
srav $21 $5 $7
# 0x379c
srav $24 $1 $25
# 0x37a0
mfhi $9
# 0x37a4
xor $26 $16 $4
# 0x37a8
sltiu $2 $9 13764
# 0x37ac
subu $9 $10 $24
# 0x37b0
andi $4 $11 0xf571
# 0x37b4
add $7 $22 $26
# 0x37b8
add $5 $31 $16
# 0x37bc
sw $7 92($0)
# 0x37c0
xori $22 $7 0x6bbc
# 0x37c4
subu $24 $13 $10
# 0x37c8
andi $22 $30 0x918e
# 0x37cc
mtlo $15
# 0x37d0
xori $25 $15 0x6463
# 0x37d4
addu $13 $8 $26
# 0x37d8
lb $10 31($0)
# 0x37dc
sh $31 14($0)
# 0x37e0
sllv $1 $13 $13
# 0x37e4
lh $5 62($0)
# 0x37e8
lb $15 21($0)
# 0x37ec
srl $4 $13 31
# 0x37f0
or $14 $26 $31
# 0x37f4
srlv $2 $14 $26
# 0x37f8
addu $14 $3 $3
# 0x37fc
lhu $26 18($0)
# 0x3800
and $10 $20 $17
# 0x3804
sub $5 $30 $22
# 0x3808
lhu $15 6($0)
# 0x380c
lh $23 24($0)
# 0x3810
and $27 $12 $20
# 0x3814
lh $7 12($0)
# 0x3818
xori $13 $19 0x0213
# 0x381c
slt $8 $16 $24
# 0x3820
lw $7 88($0)
# 0x3824
sw $8 20($0)
# 0x3828
mtlo $3
# 0x382c
sub $16 $24 $14
# 0x3830
lh $8 44($0)
# 0x3834
srlv $7 $11 $1
# 0x3838
slti $1 $12 -14867
# 0x383c
mtlo $5
# 0x3840
sb $16 24($0)
# 0x3844
slti $17 $8 26285
# 0x3848
lh $6 46($0)
# 0x384c
sub $17 $12 $11
# 0x3850
slti $25 $4 13370
# 0x3854
sltu $15 $16 $17
# 0x3858
lbu $25 5($0)
# 0x385c
addiu $11 $11 14152
# 0x3860
mflo $2
# 0x3864
sub $14 $16 $21
# 0x3868
subu $16 $26 $23
# 0x386c
add $14 $7 $3
# 0x3870
xori $12 $22 0x9ff4
# 0x3874
nor $6 $9 $25
# 0x3878
nor $31 $11 $21
# 0x387c
slt $27 $9 $14
# 0x3880
sb $5 0($0)
# 0x3884
addu $6 $9 $20
# 0x3888
sw $9 76($0)
# 0x388c
mtlo $10
# 0x3890
andi $23 $6 0x33ad
# 0x3894
lui $30 0x3e59
# 0x3898
sh $25 30($0)
# 0x389c
xori $9 $26 0x53a2
# 0x38a0
mthi $30
# 0x38a4
sltu $24 $25 $17
# 0x38a8
sh $9 20($0)
# 0x38ac
sltiu $16 $25 24297
# 0x38b0
xori $8 $4 0x467b
# 0x38b4
andi $12 $12 0xdc78
# 0x38b8
addu $21 $12 $2
# 0x38bc
slti $31 $11 -26583
# 0x38c0
andi $8 $11 0xdd6a
# 0x38c4
slti $12 $21 12874
# 0x38c8
sll $11 $22 26
# 0x38cc
sh $18 40($0)
# 0x38d0
mtlo $16
# 0x38d4
subu $11 $11 $14
# 0x38d8
sltu $12 $10 $9
# 0x38dc
or $24 $12 $27
# 0x38e0
lw $8 92($0)
# 0x38e4
sw $19 20($0)
# 0x38e8
lhu $22 24($0)
# 0x38ec
sll $21 $31 11
# 0x38f0
subu $12 $8 $19
# 0x38f4
addu $10 $12 $16
# 0x38f8
addi $4 $25 22078
# 0x38fc
xor $11 $31 $1
# 0x3900
sltiu $12 $21 1364
# 0x3904
sw $25 72($0)
# 0x3908
srlv $17 $19 $24
# 0x390c
lhu $25 8($0)
# 0x3910
sra $27 $12 17
# 0x3914
slti $8 $9 -9408
# 0x3918
subu $25 $30 $8
# 0x391c
mthi $18
# 0x3920
mult $19 $9
# 0x3924
addu $31 $25 $24
# 0x3928
or $22 $4 $11
# 0x392c
lh $2 6($0)
# 0x3930
multu $19 $15
# 0x3934
slt $18 $1 $8
# 0x3938
xori $3 $16 0xd7c2
# 0x393c
sllv $4 $14 $1
# 0x3940
multu $5 $23
# 0x3944
sub $10 $6 $25
# 0x3948
mflo $17
# 0x394c
sh $10 58($0)
# 0x3950
sltiu $3 $19 20057
# 0x3954
xor $5 $23 $18
# 0x3958
srl $6 $3 4
# 0x395c
srl $20 $6 3
# 0x3960
sll $31 $10 22
# 0x3964
srav $11 $9 $4
# 0x3968
nor $31 $21 $13
# 0x396c
subu $24 $16 $8
# 0x3970
srlv $31 $16 $27
# 0x3974
sh $7 38($0)
# 0x3978
subu $5 $30 $9
# 0x397c
mfhi $4
# 0x3980
subu $3 $26 $11
# 0x3984
sw $9 40($0)
# 0x3988
sltiu $3 $4 14210
# 0x398c
and $15 $25 $26
# 0x3990
sh $27 16($0)
# 0x3994
slt $8 $12 $20
# 0x3998
srav $5 $10 $18
# 0x399c
sub $20 $14 $9
# 0x39a0
sra $26 $24 21
# 0x39a4
sh $8 36($0)
# 0x39a8
sh $6 34($0)
# 0x39ac
lhu $22 30($0)
# 0x39b0
mflo $11
# 0x39b4
slt $5 $14 $2
# 0x39b8
srav $11 $5 $15
# 0x39bc
lui $1 0xbbb6
# 0x39c0
mfhi $16
# 0x39c4
srav $5 $8 $3
# 0x39c8
sra $26 $5 5
# 0x39cc
nor $19 $26 $16
# 0x39d0
sw $11 20($0)
# 0x39d4
andi $18 $7 0xe293
# 0x39d8
lbu $11 29($0)
# 0x39dc
addi $22 $17 -16546
# 0x39e0
multu $11 $22
# 0x39e4
lui $15 0x8f22
# 0x39e8
xori $3 $16 0x3f84
# 0x39ec
sh $2 10($0)
# 0x39f0
nor $4 $22 $15
# 0x39f4
sh $4 48($0)
# 0x39f8
lw $16 8($0)
# 0x39fc
lbu $11 2($0)
# 0x3a00
andi $11 $25 0x0467
# 0x3a04
addi $16 $11 2556
# 0x3a08
or $16 $15 $18
# 0x3a0c
sw $10 28($0)
# 0x3a10
lhu $18 16($0)
# 0x3a14
addi $27 $8 29822
# 0x3a18
ori $11 $30 0x9f8d
# 0x3a1c
lhu $5 24($0)
# 0x3a20
mtlo $25
# 0x3a24
andi $1 $13 0x5867
# 0x3a28
ori $7 $8 0xae44
# 0x3a2c
mthi $22
# 0x3a30
andi $22 $23 0xc3d4
# 0x3a34
sll $5 $24 31
# 0x3a38
sll $8 $3 14
# 0x3a3c
slti $31 $2 21299
# 0x3a40
sh $27 12($0)
# 0x3a44
sllv $17 $1 $7
# 0x3a48
andi $4 $9 0x6bf2
# 0x3a4c
lh $18 14($0)
# 0x3a50
sllv $3 $6 $21
# 0x3a54
lh $14 6($0)
# 0x3a58
sw $26 28($0)
# 0x3a5c
addi $26 $15 -24558
# 0x3a60
sw $20 24($0)
# 0x3a64
addiu $4 $8 118
# 0x3a68
srlv $16 $20 $30
# 0x3a6c
mflo $10
# 0x3a70
lb $6 14($0)
# 0x3a74
sub $23 $3 $7
# 0x3a78
srlv $17 $11 $4
# 0x3a7c
andi $26 $17 0x986e
# 0x3a80
subu $23 $14 $25
# 0x3a84
lw $23 16($0)
# 0x3a88
srl $26 $13 27
# 0x3a8c
lh $23 28($0)
# 0x3a90
lw $4 12($0)
# 0x3a94
add $24 $9 $2
# 0x3a98
srav $6 $20 $23
# 0x3a9c
mfhi $19
# 0x3aa0
lw $30 60($0)
# 0x3aa4
mthi $9
# 0x3aa8
slti $25 $31 19864
# 0x3aac
lh $3 26($0)
# 0x3ab0
nor $19 $18 $30
# 0x3ab4
sltiu $22 $5 31393
# 0x3ab8
srav $9 $22 $15
# 0x3abc
lw $6 16($0)
# 0x3ac0
nor $15 $10 $16
# 0x3ac4
xor $26 $1 $24
# 0x3ac8
sh $23 14($0)
# 0x3acc
lui $5 0x01d7
# 0x3ad0
slti $26 $15 -17254
# 0x3ad4
lh $1 54($0)
# 0x3ad8
sh $17 30($0)
# 0x3adc
slt $18 $2 $22
# 0x3ae0
srav $4 $31 $17
# 0x3ae4
sltiu $16 $10 1379
# 0x3ae8
add $19 $31 $16
# 0x3aec
addiu $3 $15 23794
# 0x3af0
sw $13 24($0)
# 0x3af4
slti $18 $16 19456
# 0x3af8
lbu $23 9($0)
# 0x3afc
add $30 $30 $19
# 0x3b00
sh $27 22($0)
# 0x3b04
sll $27 $13 4
# 0x3b08
lw $27 0($0)
# 0x3b0c
and $30 $5 $23
# 0x3b10
srav $23 $6 $25
# 0x3b14
srlv $8 $25 $6
# 0x3b18
lui $6 0x3b27
# 0x3b1c
srl $5 $16 28
# 0x3b20
or $23 $22 $13
# 0x3b24
sra $1 $7 0
# 0x3b28
xori $22 $10 0xa637
# 0x3b2c
lh $22 30($0)
# 0x3b30
lw $12 16($0)
# 0x3b34
sw $8 96($0)
# 0x3b38
mflo $2
# 0x3b3c
sw $20 56($0)
# 0x3b40
sll $26 $6 5
# 0x3b44
lw $2 96($0)
# 0x3b48
lh $11 18($0)
# 0x3b4c
nor $30 $3 $25
# 0x3b50
sra $10 $3 19
# 0x3b54
addi $5 $24 18548
# 0x3b58
sltu $16 $11 $8
# 0x3b5c
slt $4 $24 $22
# 0x3b60
addu $7 $3 $8
# 0x3b64
lui $24 0x0563
# 0x3b68
sra $4 $12 29
# 0x3b6c
nor $30 $5 $7
# 0x3b70
mflo $15
# 0x3b74
sltiu $22 $30 2383
# 0x3b78
mfhi $8
# 0x3b7c
lw $17 92($0)
# 0x3b80
sh $21 40($0)
# 0x3b84
lhu $4 26($0)
# 0x3b88
and $9 $17 $19
# 0x3b8c
sll $25 $1 30
# 0x3b90
or $12 $16 $10
# 0x3b94
srl $27 $22 17
# 0x3b98
mfhi $21
# 0x3b9c
lh $18 28($0)
# 0x3ba0
xor $18 $30 $14
# 0x3ba4
sh $19 36($0)
# 0x3ba8
sw $10 64($0)
# 0x3bac
sll $1 $26 6
# 0x3bb0
mfhi $10
# 0x3bb4
lh $15 26($0)
# 0x3bb8
sw $21 20($0)
# 0x3bbc
mflo $24
# 0x3bc0
andi $6 $13 0x1525
# 0x3bc4
multu $6 $23
# 0x3bc8
addi $16 $7 5390
# 0x3bcc
sub $8 $6 $16
# 0x3bd0
and $3 $18 $20
# 0x3bd4
sb $20 21($0)
# 0x3bd8
sb $10 24($0)
# 0x3bdc
sll $1 $17 29
# 0x3be0
addiu $21 $24 28523
# 0x3be4
mthi $26
# 0x3be8
addi $18 $26 5098
# 0x3bec
multu $7 $26
# 0x3bf0
add $22 $11 $7
# 0x3bf4
addi $2 $11 -26568
# 0x3bf8
lbu $1 23($0)
# 0x3bfc
mfhi $24
# 0x3c00
srav $10 $6 $14
# 0x3c04
lw $10 88($0)
# 0x3c08
add $31 $9 $18
# 0x3c0c
lb $23 31($0)
# 0x3c10
subu $12 $30 $15
# 0x3c14
sltiu $2 $6 14849
# 0x3c18
addiu $25 $6 31921
# 0x3c1c
lh $30 42($0)
# 0x3c20
sw $13 100($0)
# 0x3c24
sub $7 $9 $12
# 0x3c28
addiu $12 $15 8083
# 0x3c2c
mtlo $16
# 0x3c30
srav $18 $25 $5
# 0x3c34
sllv $18 $2 $15
# 0x3c38
add $12 $9 $10
# 0x3c3c
lbu $17 14($0)
# 0x3c40
add $3 $18 $10
# 0x3c44
sh $18 26($0)
# 0x3c48
lw $10 80($0)
# 0x3c4c
multu $10 $27
# 0x3c50
lw $24 4($0)
# 0x3c54
sllv $26 $20 $7
# 0x3c58
and $18 $7 $10
# 0x3c5c
srlv $22 $1 $1
# 0x3c60
sltiu $1 $1 28225
# 0x3c64
lw $30 20($0)
# 0x3c68
lw $4 124($0)
# 0x3c6c
addu $9 $2 $25
# 0x3c70
or $19 $7 $21
# 0x3c74
mfhi $6
# 0x3c78
srav $26 $20 $11
# 0x3c7c
sh $24 20($0)
# 0x3c80
mtlo $12
# 0x3c84
and $19 $4 $23
# 0x3c88
subu $3 $25 $26
# 0x3c8c
sltiu $8 $6 28710
# 0x3c90
or $11 $31 $13
# 0x3c94
mthi $13
# 0x3c98
multu $12 $14
# 0x3c9c
lh $31 22($0)
# 0x3ca0
slt $12 $30 $23
# 0x3ca4
lhu $5 30($0)
# 0x3ca8
sltiu $31 $4 470
# 0x3cac
sra $17 $27 0
# 0x3cb0
or $5 $26 $10
# 0x3cb4
sub $6 $21 $10
# 0x3cb8
lb $6 24($0)
# 0x3cbc
xor $16 $11 $23
# 0x3cc0
addi $12 $30 17667
# 0x3cc4
sll $31 $22 8
# 0x3cc8
and $12 $18 $12
# 0x3ccc
and $9 $4 $16
# 0x3cd0
and $19 $13 $9
# 0x3cd4
addiu $10 $7 12205
# 0x3cd8
mtlo $16
# 0x3cdc
srav $18 $9 $31
# 0x3ce0
addiu $1 $27 6552
# 0x3ce4
addi $24 $18 -31668
# 0x3ce8
sub $21 $12 $20
# 0x3cec
multu $19 $27
# 0x3cf0
srlv $21 $15 $19
# 0x3cf4
xori $30 $27 0xe287
# 0x3cf8
sw $3 0($0)
# 0x3cfc
slti $12 $14 20424
# 0x3d00
addu $7 $10 $9
# 0x3d04
lui $7 0xe23c
# 0x3d08
lh $4 24($0)
# 0x3d0c
srav $7 $27 $27
# 0x3d10
mflo $24
# 0x3d14
addu $12 $5 $15
# 0x3d18
mtlo $2
# 0x3d1c
xori $25 $4 0x92e5
# 0x3d20
xor $4 $13 $24
# 0x3d24
sw $4 0($0)
# 0x3d28
addu $12 $15 $21
# 0x3d2c
lbu $18 28($0)
# 0x3d30
srlv $18 $16 $8
# 0x3d34
lb $18 30($0)
# 0x3d38
lh $30 36($0)
# 0x3d3c
subu $5 $26 $16
# 0x3d40
srl $3 $16 0
# 0x3d44
xori $11 $15 0xc816
# 0x3d48
slt $27 $21 $22
# 0x3d4c
mthi $27
# 0x3d50
srav $17 $21 $7
# 0x3d54
nor $3 $22 $31
# 0x3d58
lb $4 13($0)
# 0x3d5c
sll $19 $30 27
# 0x3d60
sllv $4 $4 $12
# 0x3d64
sltu $10 $20 $25
# 0x3d68
lw $30 124($0)
# 0x3d6c
xori $21 $4 0x2df5
# 0x3d70
multu $13 $12
# 0x3d74
multu $3 $10
# 0x3d78
lh $21 12($0)
# 0x3d7c
srl $31 $16 8
# 0x3d80
sw $24 24($0)
# 0x3d84
slt $17 $13 $3
# 0x3d88
and $7 $20 $21
# 0x3d8c
lh $25 58($0)
# 0x3d90
sh $2 20($0)
# 0x3d94
lh $19 34($0)
# 0x3d98
mthi $18
# 0x3d9c
lw $4 56($0)
# 0x3da0
sh $24 30($0)
# 0x3da4
sltiu $19 $7 21980
# 0x3da8
lh $16 8($0)
# 0x3dac
sb $3 7($0)
# 0x3db0
xori $14 $8 0x6ecc
# 0x3db4
addu $5 $24 $16
# 0x3db8
sh $17 10($0)
# 0x3dbc
mfhi $6
# 0x3dc0
mflo $22
# 0x3dc4
multu $14 $9
# 0x3dc8
multu $18 $19
# 0x3dcc
add $30 $17 $10
# 0x3dd0
sllv $25 $10 $11
# 0x3dd4
nor $30 $15 $6
# 0x3dd8
subu $3 $25 $3
# 0x3ddc
multu $4 $31
# 0x3de0
sw $3 48($0)
# 0x3de4
addu $4 $4 $21
# 0x3de8
addiu $21 $24 18773
# 0x3dec
srl $20 $19 24
# 0x3df0
xori $3 $18 0x6047
# 0x3df4
srlv $25 $19 $13
# 0x3df8
sub $14 $27 $15
# 0x3dfc
lui $26 0x704a
# 0x3e00
lhu $13 20($0)
# 0x3e04
addiu $18 $20 31112
# 0x3e08
ori $9 $23 0x5be7
# 0x3e0c
mflo $24
# 0x3e10
sw $23 16($0)
# 0x3e14
lw $10 32($0)
# 0x3e18
addu $5 $5 $2
# 0x3e1c
sltu $10 $14 $31
# 0x3e20
add $23 $10 $21
# 0x3e24
addiu $1 $12 2792
# 0x3e28
sll $2 $8 22
# 0x3e2c
mthi $23
# 0x3e30
sltiu $30 $7 3210
# 0x3e34
or $24 $20 $8
# 0x3e38
addi $30 $18 -31561
# 0x3e3c
subu $6 $2 $15
# 0x3e40
mtlo $7
# 0x3e44
srav $25 $2 $21
# 0x3e48
lh $22 2($0)
# 0x3e4c
lb $5 20($0)
# 0x3e50
lh $10 22($0)
# 0x3e54
sltu $18 $6 $1
# 0x3e58
addi $17 $30 -29295
# 0x3e5c
lbu $30 19($0)
# 0x3e60
xor $17 $21 $8
# 0x3e64
mflo $16
# 0x3e68
sltu $30 $23 $23
# 0x3e6c
mtlo $31
# 0x3e70
add $5 $25 $26
# 0x3e74
sw $13 28($0)
# 0x3e78
sltu $10 $10 $23
# 0x3e7c
lw $4 16($0)
# 0x3e80
sllv $4 $22 $26
# 0x3e84
mthi $11
# 0x3e88
sltiu $10 $4 10201
# 0x3e8c
sh $13 18($0)
# 0x3e90
lui $15 0xd5f7
# 0x3e94
srl $9 $27 30
# 0x3e98
subu $7 $20 $10
# 0x3e9c
sllv $5 $2 $17
# 0x3ea0
ori $31 $23 0xfb9d
# 0x3ea4
xor $13 $12 $3
# 0x3ea8
sra $5 $3 6
# 0x3eac
sb $2 25($0)
# 0x3eb0
sb $8 11($0)
# 0x3eb4
sub $20 $30 $16
# 0x3eb8
xori $6 $1 0x83d5
# 0x3ebc
mult $15 $9
# 0x3ec0
sltiu $12 $23 16564
# 0x3ec4
xor $18 $19 $19
# 0x3ec8
mflo $1
# 0x3ecc
and $1 $30 $18
# 0x3ed0
xor $4 $5 $30
# 0x3ed4
lb $11 20($0)
# 0x3ed8
sb $18 5($0)
# 0x3edc
mthi $26
# 0x3ee0
addu $30 $6 $30
# 0x3ee4
mthi $20
# 0x3ee8
slt $16 $20 $23
# 0x3eec
slt $20 $12 $10
# 0x3ef0
sb $20 28($0)
# 0x3ef4
mtlo $25
# 0x3ef8
sh $3 6($0)
# 0x3efc
and $5 $18 $14
# 0x3f00
mult $3 $20
# 0x3f04
addiu $19 $24 8912
# 0x3f08
mtlo $30
# 0x3f0c
xori $16 $4 0x3bd6
# 0x3f10
srl $10 $24 22
# 0x3f14
ori $30 $27 0x3433
# 0x3f18
srav $5 $27 $9
# 0x3f1c
lw $9 28($0)
# 0x3f20
lh $22 0($0)
# 0x3f24
sra $27 $15 8
# 0x3f28
mtlo $8
# 0x3f2c
multu $19 $2
# 0x3f30
sub $7 $10 $4
# 0x3f34
mfhi $30
# 0x3f38
nor $6 $1 $26
# 0x3f3c
lhu $10 20($0)
# 0x3f40
sltu $22 $8 $14
# 0x3f44
sra $1 $1 24
# 0x3f48
mfhi $11
# 0x3f4c
ori $12 $13 0x1c94
# 0x3f50
lui $1 0xb54d
# 0x3f54
mfhi $22
# 0x3f58
subu $16 $20 $3
# 0x3f5c
lh $5 6($0)
# 0x3f60
sw $5 12($0)
# 0x3f64
sltiu $1 $13 25784
# 0x3f68
sltiu $31 $4 1232
# 0x3f6c
and $10 $22 $13
# 0x3f70
xori $17 $20 0x71cc
# 0x3f74
lb $1 0($0)
# 0x3f78
addiu $14 $18 29161
# 0x3f7c
sltu $2 $9 $26
# 0x3f80
sh $3 44($0)
# 0x3f84
sll $8 $23 11
# 0x3f88
sltu $1 $1 $1
# 0x3f8c
xor $22 $14 $7
# 0x3f90
slti $12 $1 11718
# 0x3f94
sltiu $3 $13 1115
# 0x3f98
srl $6 $6 31
# 0x3f9c
mtlo $17
# 0x3fa0
sltiu $16 $16 2802

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop