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
mtlo $9
# 0x3008
srl $15 $8 22
# 0x300c
multu $1 $20
# 0x3010
xor $11 $5 $31
# 0x3014
lh $22 52($0)
# 0x3018
sra $17 $10 4
# 0x301c
mtlo $22
# 0x3020
lw $13 8($0)
# 0x3024
mult $7 $1
# 0x3028
lh $2 6($0)
# 0x302c
mfhi $31
# 0x3030
sllv $13 $5 $15
# 0x3034
lb $8 22($0)
# 0x3038
lui $27 0xe58c
# 0x303c
lh $25 8($0)
# 0x3040
sub $8 $4 $25
# 0x3044
srlv $21 $15 $7
# 0x3048
mtlo $16
# 0x304c
ori $16 $8 0xc951
# 0x3050
lh $7 30($0)
# 0x3054
xor $15 $15 $2
# 0x3058
slti $30 $17 -14209
# 0x305c
subu $19 $25 $3
# 0x3060
slti $19 $1 -26506
# 0x3064
sra $31 $12 10
# 0x3068
lh $22 4($0)
# 0x306c
lb $31 27($0)
# 0x3070
lbu $22 11($0)
# 0x3074
mthi $14
# 0x3078
sra $25 $6 28
# 0x307c
lh $23 10($0)
# 0x3080
sltiu $24 $14 5677
# 0x3084
sb $7 29($0)
# 0x3088
sb $1 4($0)
# 0x308c
lb $14 6($0)
# 0x3090
srlv $6 $31 $15
# 0x3094
srl $14 $25 12
# 0x3098
sltu $27 $15 $14
# 0x309c
sw $23 104($0)
# 0x30a0
lw $6 20($0)
# 0x30a4
lh $11 0($0)
# 0x30a8
sltiu $17 $19 4525
# 0x30ac
sh $24 42($0)
# 0x30b0
lw $11 28($0)
# 0x30b4
sllv $18 $30 $9
# 0x30b8
sh $11 18($0)
# 0x30bc
sra $22 $10 27
# 0x30c0
sw $12 8($0)
# 0x30c4
lw $30 48($0)
# 0x30c8
lh $17 46($0)
# 0x30cc
sra $2 $10 23
# 0x30d0
mflo $4
# 0x30d4
nor $18 $11 $5
# 0x30d8
slt $3 $4 $19
# 0x30dc
mult $21 $3
# 0x30e0
xor $16 $6 $6
# 0x30e4
sltiu $27 $2 30469
# 0x30e8
srlv $22 $13 $3
# 0x30ec
add $27 $15 $3
# 0x30f0
or $11 $16 $18
# 0x30f4
lw $25 20($0)
# 0x30f8
multu $24 $20
# 0x30fc
ori $9 $18 0x9fbb
# 0x3100
xori $21 $7 0x3a34
# 0x3104
mthi $13
# 0x3108
sra $30 $4 3
# 0x310c
lb $10 22($0)
# 0x3110
xor $19 $23 $20
# 0x3114
addiu $3 $16 2192
# 0x3118
sub $4 $16 $26
# 0x311c
sw $9 12($0)
# 0x3120
mflo $17
# 0x3124
sltiu $10 $22 16268
# 0x3128
lbu $25 9($0)
# 0x312c
sltu $19 $26 $27
# 0x3130
lh $9 28($0)
# 0x3134
sb $6 4($0)
# 0x3138
sb $21 23($0)
# 0x313c
sll $7 $11 3
# 0x3140
lhu $11 26($0)
# 0x3144
sub $21 $12 $17
# 0x3148
lh $16 2($0)
# 0x314c
slt $11 $22 $24
# 0x3150
add $17 $27 $6
# 0x3154
lhu $16 10($0)
# 0x3158
xori $21 $27 0x5125
# 0x315c
srlv $23 $22 $25
# 0x3160
lh $27 26($0)
# 0x3164
add $11 $13 $14
# 0x3168
add $17 $4 $3
# 0x316c
lb $15 24($0)
# 0x3170
sllv $1 $14 $24
# 0x3174
ori $30 $23 0x7f15
# 0x3178
srl $10 $6 21
# 0x317c
andi $7 $30 0x06b7
# 0x3180
srav $13 $20 $12
# 0x3184
mflo $16
# 0x3188
sh $2 2($0)
# 0x318c
sllv $1 $25 $7
# 0x3190
sltiu $21 $4 14263
# 0x3194
lbu $8 18($0)
# 0x3198
lhu $21 12($0)
# 0x319c
subu $20 $4 $23
# 0x31a0
sra $14 $1 8
# 0x31a4
lb $24 11($0)
# 0x31a8
or $9 $27 $3
# 0x31ac
lui $23 0x80ad
# 0x31b0
xori $27 $3 0x6cdf
# 0x31b4
srl $9 $22 28
# 0x31b8
slti $27 $3 9676
# 0x31bc
slti $13 $11 32668
# 0x31c0
mult $12 $26
# 0x31c4
multu $12 $19
# 0x31c8
lhu $2 30($0)
# 0x31cc
xori $22 $5 0xbfb5
# 0x31d0
sh $4 18($0)
# 0x31d4
lh $21 4($0)
# 0x31d8
sltiu $24 $15 29197
# 0x31dc
sllv $9 $2 $2
# 0x31e0
xor $25 $27 $1
# 0x31e4
srlv $17 $5 $14
# 0x31e8
addi $27 $1 -6950
# 0x31ec
and $19 $30 $9
# 0x31f0
srav $8 $11 $18
# 0x31f4
sb $20 28($0)
# 0x31f8
addu $26 $7 $22
# 0x31fc
multu $12 $10
# 0x3200
sh $21 60($0)
# 0x3204
lh $31 0($0)
# 0x3208
srl $15 $14 31
# 0x320c
lui $31 0x7baa
# 0x3210
srl $7 $16 17
# 0x3214
lbu $24 30($0)
# 0x3218
or $2 $16 $10
# 0x321c
sb $5 15($0)
# 0x3220
subu $18 $23 $19
# 0x3224
or $20 $21 $16
# 0x3228
addu $26 $4 $11
# 0x322c
addu $30 $17 $8
# 0x3230
sh $5 22($0)
# 0x3234
lb $25 16($0)
# 0x3238
lui $23 0xa59e
# 0x323c
slt $30 $12 $8
# 0x3240
lh $12 4($0)
# 0x3244
sll $23 $2 0
# 0x3248
nor $31 $3 $27
# 0x324c
mult $4 $8
# 0x3250
addi $7 $2 27315
# 0x3254
xori $14 $11 0x321d
# 0x3258
lb $14 0($0)
# 0x325c
add $1 $20 $10
# 0x3260
add $18 $4 $13
# 0x3264
srl $13 $14 22
# 0x3268
and $8 $6 $19
# 0x326c
mtlo $9
# 0x3270
slti $17 $24 -22113
# 0x3274
mthi $11
# 0x3278
ori $13 $9 0x2426
# 0x327c
andi $14 $11 0x7fc0
# 0x3280
and $15 $24 $3
# 0x3284
srav $1 $4 $31
# 0x3288
sll $27 $21 4
# 0x328c
add $26 $11 $8
# 0x3290
sllv $17 $19 $3
# 0x3294
ori $17 $31 0x18fd
# 0x3298
sw $26 4($0)
# 0x329c
mflo $25
# 0x32a0
sltiu $11 $20 7912
# 0x32a4
sra $6 $22 17
# 0x32a8
sw $4 116($0)
# 0x32ac
xori $27 $12 0x9d21
# 0x32b0
srl $4 $14 13
# 0x32b4
lw $11 4($0)
# 0x32b8
lhu $13 2($0)
# 0x32bc
sub $19 $2 $2
# 0x32c0
sll $5 $10 7
# 0x32c4
add $8 $21 $15
# 0x32c8
lh $30 24($0)
# 0x32cc
mfhi $30
# 0x32d0
andi $3 $21 0x2182
# 0x32d4
addu $11 $6 $11
# 0x32d8
srlv $22 $10 $23
# 0x32dc
mult $14 $7
# 0x32e0
add $12 $30 $14
# 0x32e4
xori $12 $22 0xaaee
# 0x32e8
nor $9 $20 $19
# 0x32ec
add $7 $1 $23
# 0x32f0
sltu $8 $12 $19
# 0x32f4
xori $19 $11 0x8782
# 0x32f8
lb $21 19($0)
# 0x32fc
lui $20 0x0681
# 0x3300
mfhi $5
# 0x3304
srav $7 $2 $5
# 0x3308
srav $5 $26 $7
# 0x330c
sb $17 28($0)
# 0x3310
add $18 $17 $26
# 0x3314
addiu $5 $30 26001
# 0x3318
sllv $9 $9 $3
# 0x331c
lw $2 32($0)
# 0x3320
srl $31 $1 24
# 0x3324
xor $30 $23 $12
# 0x3328
ori $3 $11 0xb81f
# 0x332c
lhu $11 16($0)
# 0x3330
sh $9 20($0)
# 0x3334
slt $27 $30 $3
# 0x3338
lw $14 0($0)
# 0x333c
sw $18 104($0)
# 0x3340
and $24 $20 $10
# 0x3344
lbu $7 9($0)
# 0x3348
lbu $6 1($0)
# 0x334c
sb $4 25($0)
# 0x3350
slt $11 $22 $4
# 0x3354
andi $23 $17 0xe08f
# 0x3358
sltiu $5 $31 25263
# 0x335c
mthi $14
# 0x3360
addu $3 $31 $19
# 0x3364
or $24 $7 $4
# 0x3368
andi $10 $9 0x18a8
# 0x336c
sw $21 4($0)
# 0x3370
lw $22 24($0)
# 0x3374
ori $21 $30 0xe4c9
# 0x3378
lhu $14 8($0)
# 0x337c
add $5 $4 $20
# 0x3380
or $27 $8 $1
# 0x3384
sra $6 $19 0
# 0x3388
sll $5 $1 3
# 0x338c
lh $27 6($0)
# 0x3390
sra $7 $31 7
# 0x3394
xor $6 $18 $6
# 0x3398
xori $31 $22 0x8d32
# 0x339c
sw $19 16($0)
# 0x33a0
mfhi $17
# 0x33a4
sra $21 $2 17
# 0x33a8
lbu $8 8($0)
# 0x33ac
xori $25 $26 0xf8f8
# 0x33b0
sh $27 18($0)
# 0x33b4
sw $5 4($0)
# 0x33b8
lui $20 0xa9bc
# 0x33bc
srlv $13 $20 $2
# 0x33c0
multu $6 $11
# 0x33c4
srl $12 $31 18
# 0x33c8
subu $3 $19 $3
# 0x33cc
lw $19 36($0)
# 0x33d0
srav $20 $16 $9
# 0x33d4
ori $16 $5 0x1e26
# 0x33d8
lh $16 42($0)
# 0x33dc
sw $1 40($0)
# 0x33e0
sltu $15 $16 $2
# 0x33e4
addu $19 $17 $9
# 0x33e8
subu $6 $8 $21
# 0x33ec
ori $31 $13 0xa763
# 0x33f0
srav $31 $27 $31
# 0x33f4
and $27 $22 $14
# 0x33f8
sllv $23 $25 $22
# 0x33fc
sltiu $22 $8 32601
# 0x3400
or $18 $17 $25
# 0x3404
lbu $14 7($0)
# 0x3408
mfhi $26
# 0x340c
srav $16 $22 $17
# 0x3410
sll $4 $2 23
# 0x3414
or $13 $7 $24
# 0x3418
lh $19 30($0)
# 0x341c
sllv $24 $13 $8
# 0x3420
add $19 $26 $11
# 0x3424
sh $11 8($0)
# 0x3428
mtlo $16
# 0x342c
mult $30 $9
# 0x3430
srav $4 $23 $30
# 0x3434
ori $26 $19 0x0ea3
# 0x3438
lb $2 8($0)
# 0x343c
xori $18 $7 0xb6dc
# 0x3440
mthi $23
# 0x3444
lw $9 20($0)
# 0x3448
sb $25 4($0)
# 0x344c
lui $25 0xcf14
# 0x3450
lh $9 12($0)
# 0x3454
mtlo $13
# 0x3458
subu $17 $14 $30
# 0x345c
slt $10 $31 $30
# 0x3460
sll $23 $20 31
# 0x3464
or $21 $27 $25
# 0x3468
sw $7 8($0)
# 0x346c
ori $21 $23 0xd8c9
# 0x3470
srav $8 $25 $1
# 0x3474
sw $16 24($0)
# 0x3478
mult $6 $30
# 0x347c
srl $30 $13 1
# 0x3480
andi $30 $15 0x81ca
# 0x3484
lhu $27 6($0)
# 0x3488
sh $2 46($0)
# 0x348c
andi $20 $31 0x38ef
# 0x3490
sh $9 28($0)
# 0x3494
srlv $22 $5 $30
# 0x3498
addiu $19 $17 13705
# 0x349c
slt $5 $30 $17
# 0x34a0
sll $9 $17 14
# 0x34a4
srl $20 $9 21
# 0x34a8
xor $18 $3 $6
# 0x34ac
lw $20 116($0)
# 0x34b0
sra $23 $19 17
# 0x34b4
sll $5 $30 4
# 0x34b8
multu $27 $18
# 0x34bc
mtlo $1
# 0x34c0
mthi $31
# 0x34c4
subu $6 $16 $17
# 0x34c8
addu $6 $18 $16
# 0x34cc
mthi $3
# 0x34d0
addu $22 $23 $13
# 0x34d4
slti $7 $14 13270
# 0x34d8
mfhi $2
# 0x34dc
ori $23 $3 0x3012
# 0x34e0
sra $16 $25 30
# 0x34e4
mfhi $30
# 0x34e8
multu $6 $6
# 0x34ec
mult $9 $16
# 0x34f0
lb $31 8($0)
# 0x34f4
sra $4 $3 7
# 0x34f8
lh $17 8($0)
# 0x34fc
lb $20 23($0)
# 0x3500
sra $10 $18 14
# 0x3504
sb $22 8($0)
# 0x3508
lb $19 5($0)
# 0x350c
add $12 $27 $19
# 0x3510
lb $26 12($0)
# 0x3514
mthi $24
# 0x3518
sw $25 20($0)
# 0x351c
xor $23 $21 $3
# 0x3520
lb $2 28($0)
# 0x3524
sh $2 24($0)
# 0x3528
sh $2 28($0)
# 0x352c
lw $11 16($0)
# 0x3530
mflo $17
# 0x3534
sltiu $12 $5 18191
# 0x3538
add $9 $31 $5
# 0x353c
multu $24 $22
# 0x3540
and $8 $9 $11
# 0x3544
sh $12 42($0)
# 0x3548
sltu $17 $31 $24
# 0x354c
sltiu $2 $20 6673
# 0x3550
mfhi $8
# 0x3554
lhu $1 16($0)
# 0x3558
mflo $12
# 0x355c
ori $5 $31 0x83f7
# 0x3560
sub $15 $3 $6
# 0x3564
multu $8 $23
# 0x3568
xor $22 $23 $10
# 0x356c
sllv $9 $7 $1
# 0x3570
sltiu $12 $4 30149
# 0x3574
mfhi $17
# 0x3578
ori $5 $26 0x8cb8
# 0x357c
sltiu $1 $2 12290
# 0x3580
sb $5 26($0)
# 0x3584
mult $30 $23
# 0x3588
xor $30 $3 $27
# 0x358c
lh $21 2($0)
# 0x3590
srl $14 $18 2
# 0x3594
lui $11 0x0a96
# 0x3598
sub $17 $4 $18
# 0x359c
nor $19 $19 $16
# 0x35a0
slti $9 $27 31649
# 0x35a4
sltu $31 $30 $30
# 0x35a8
lb $27 4($0)
# 0x35ac
mtlo $27
# 0x35b0
multu $15 $6
# 0x35b4
lh $9 30($0)
# 0x35b8
sh $20 26($0)
# 0x35bc
srlv $19 $14 $26
# 0x35c0
mthi $9
# 0x35c4
sub $3 $17 $27
# 0x35c8
or $26 $25 $4
# 0x35cc
srav $3 $20 $12
# 0x35d0
lw $30 24($0)
# 0x35d4
mflo $14
# 0x35d8
srlv $18 $7 $23
# 0x35dc
lb $1 18($0)
# 0x35e0
lh $19 12($0)
# 0x35e4
xor $30 $15 $23
# 0x35e8
mfhi $24
# 0x35ec
sw $12 16($0)
# 0x35f0
and $11 $8 $16
# 0x35f4
sw $23 16($0)
# 0x35f8
sllv $16 $19 $16
# 0x35fc
srl $15 $10 25
# 0x3600
srav $1 $17 $15
# 0x3604
mthi $7
# 0x3608
lui $22 0xcf01
# 0x360c
addi $24 $11 -5215
# 0x3610
andi $20 $5 0x1a5b
# 0x3614
xori $18 $19 0xab54
# 0x3618
srav $9 $14 $17
# 0x361c
sh $7 24($0)
# 0x3620
lw $27 28($0)
# 0x3624
subu $26 $9 $26
# 0x3628
sub $14 $11 $6
# 0x362c
addiu $5 $16 15731
# 0x3630
xori $11 $11 0xa976
# 0x3634
addi $18 $13 12361
# 0x3638
slti $1 $14 -18656
# 0x363c
xori $5 $25 0x05b2
# 0x3640
subu $25 $10 $5
# 0x3644
sub $4 $24 $12
# 0x3648
lh $18 20($0)
# 0x364c
addi $15 $24 -28177
# 0x3650
and $5 $11 $21
# 0x3654
mult $15 $10
# 0x3658
sw $7 16($0)
# 0x365c
lh $24 18($0)
# 0x3660
sw $10 24($0)
# 0x3664
or $22 $31 $18
# 0x3668
and $2 $12 $16
# 0x366c
mflo $7
# 0x3670
multu $14 $20
# 0x3674
sh $26 6($0)
# 0x3678
sltiu $2 $23 1787
# 0x367c
sltu $22 $19 $14
# 0x3680
nor $1 $18 $18
# 0x3684
sub $24 $20 $8
# 0x3688
sh $6 0($0)
# 0x368c
ori $27 $10 0x754e
# 0x3690
lhu $2 28($0)
# 0x3694
lw $21 40($0)
# 0x3698
lw $23 60($0)
# 0x369c
sh $2 6($0)
# 0x36a0
nor $8 $7 $22
# 0x36a4
lui $12 0x3241
# 0x36a8
sllv $11 $26 $13
# 0x36ac
lh $7 24($0)
# 0x36b0
lh $4 18($0)
# 0x36b4
sw $1 124($0)
# 0x36b8
lh $6 22($0)
# 0x36bc
lhu $15 10($0)
# 0x36c0
xori $26 $11 0x69d9
# 0x36c4
sub $14 $13 $23
# 0x36c8
sll $14 $17 0
# 0x36cc
sra $19 $30 16
# 0x36d0
addiu $23 $11 1881
# 0x36d4
lh $20 0($0)
# 0x36d8
lui $11 0x167b
# 0x36dc
sll $30 $14 3
# 0x36e0
or $19 $15 $2
# 0x36e4
lh $26 50($0)
# 0x36e8
sllv $27 $5 $14
# 0x36ec
lh $18 4($0)
# 0x36f0
lw $4 124($0)
# 0x36f4
xor $24 $20 $18
# 0x36f8
lh $22 38($0)
# 0x36fc
nor $14 $30 $25
# 0x3700
mfhi $25
# 0x3704
lbu $16 22($0)
# 0x3708
slti $2 $30 -8155
# 0x370c
mfhi $11
# 0x3710
sh $19 32($0)
# 0x3714
mflo $25
# 0x3718
sra $15 $26 9
# 0x371c
mult $5 $2
# 0x3720
slti $14 $5 13483
# 0x3724
sw $21 0($0)
# 0x3728
lw $16 28($0)
# 0x372c
mflo $23
# 0x3730
mtlo $4
# 0x3734
lw $20 76($0)
# 0x3738
sw $31 4($0)
# 0x373c
mflo $17
# 0x3740
andi $12 $7 0x961e
# 0x3744
lh $3 58($0)
# 0x3748
ori $8 $20 0xc8f0
# 0x374c
subu $15 $1 $17
# 0x3750
sltiu $1 $26 11408
# 0x3754
lhu $16 28($0)
# 0x3758
sw $1 108($0)
# 0x375c
slt $1 $16 $12
# 0x3760
slti $25 $12 -26714
# 0x3764
lhu $23 4($0)
# 0x3768
mthi $27
# 0x376c
sltu $5 $22 $20
# 0x3770
mtlo $21
# 0x3774
sb $10 17($0)
# 0x3778
lbu $6 12($0)
# 0x377c
sh $21 18($0)
# 0x3780
addi $17 $13 -9841
# 0x3784
lui $7 0xdb9e
# 0x3788
sw $1 20($0)
# 0x378c
sw $24 44($0)
# 0x3790
subu $4 $27 $19
# 0x3794
addu $16 $12 $17
# 0x3798
mfhi $21
# 0x379c
addiu $4 $23 31053
# 0x37a0
subu $2 $18 $23
# 0x37a4
addi $12 $26 -10711
# 0x37a8
xor $20 $8 $15
# 0x37ac
nor $18 $14 $9
# 0x37b0
lhu $8 22($0)
# 0x37b4
lhu $27 30($0)
# 0x37b8
addi $4 $19 -1503
# 0x37bc
subu $26 $23 $14
# 0x37c0
multu $9 $14
# 0x37c4
mthi $1
# 0x37c8
nor $11 $20 $9
# 0x37cc
sllv $30 $21 $1
# 0x37d0
lb $13 2($0)
# 0x37d4
sltiu $10 $12 15742
# 0x37d8
lh $9 14($0)
# 0x37dc
nor $12 $8 $20
# 0x37e0
lb $30 0($0)
# 0x37e4
subu $31 $10 $15
# 0x37e8
lui $14 0x2f74
# 0x37ec
mtlo $2
# 0x37f0
mult $4 $25
# 0x37f4
mfhi $6
# 0x37f8
srav $6 $2 $4
# 0x37fc
nor $1 $18 $26
# 0x3800
sllv $27 $23 $15
# 0x3804
addiu $23 $1 21329
# 0x3808
lbu $18 14($0)
# 0x380c
lw $21 16($0)
# 0x3810
lbu $2 14($0)
# 0x3814
slt $3 $14 $21
# 0x3818
sh $25 2($0)
# 0x381c
mfhi $30
# 0x3820
lbu $17 30($0)
# 0x3824
mult $5 $13
# 0x3828
addi $9 $17 10217
# 0x382c
slt $15 $14 $7
# 0x3830
mult $7 $19
# 0x3834
lb $25 16($0)
# 0x3838
sltu $30 $20 $5
# 0x383c
nor $9 $30 $23
# 0x3840
andi $27 $1 0xcd16
# 0x3844
nor $31 $4 $19
# 0x3848
lbu $25 7($0)
# 0x384c
srl $22 $13 28
# 0x3850
lb $27 26($0)
# 0x3854
srav $2 $10 $6
# 0x3858
or $19 $3 $18
# 0x385c
lhu $3 12($0)
# 0x3860
sltu $6 $24 $18
# 0x3864
xor $25 $5 $27
# 0x3868
sw $21 44($0)
# 0x386c
add $6 $10 $9
# 0x3870
sra $5 $17 8
# 0x3874
or $5 $20 $1
# 0x3878
sw $5 124($0)
# 0x387c
xori $6 $21 0x9ef4
# 0x3880
addi $21 $23 23742
# 0x3884
srav $6 $22 $22
# 0x3888
multu $6 $22
# 0x388c
lh $18 4($0)
# 0x3890
lb $9 16($0)
# 0x3894
sb $17 22($0)
# 0x3898
sll $13 $24 12
# 0x389c
sub $17 $12 $20
# 0x38a0
ori $23 $17 0x0077
# 0x38a4
slt $23 $1 $8
# 0x38a8
addi $2 $25 12372
# 0x38ac
lb $26 12($0)
# 0x38b0
lb $5 18($0)
# 0x38b4
lh $26 14($0)
# 0x38b8
ori $7 $6 0x7a5e
# 0x38bc
sw $25 76($0)
# 0x38c0
addi $11 $3 -29751
# 0x38c4
srl $9 $8 9
# 0x38c8
lh $25 42($0)
# 0x38cc
lb $17 18($0)
# 0x38d0
slti $12 $17 26118
# 0x38d4
andi $5 $11 0x38f9
# 0x38d8
sw $6 8($0)
# 0x38dc
lb $3 26($0)
# 0x38e0
lw $10 4($0)
# 0x38e4
or $11 $22 $19
# 0x38e8
mult $5 $27
# 0x38ec
add $10 $26 $23
# 0x38f0
sb $4 25($0)
# 0x38f4
addiu $23 $8 27403
# 0x38f8
sw $27 120($0)
# 0x38fc
slti $11 $21 -958
# 0x3900
mflo $12
# 0x3904
lbu $4 26($0)
# 0x3908
sllv $16 $3 $18
# 0x390c
slt $23 $24 $17
# 0x3910
sll $12 $16 14
# 0x3914
addiu $30 $13 18218
# 0x3918
lhu $10 28($0)
# 0x391c
ori $15 $20 0xed00
# 0x3920
add $26 $22 $23
# 0x3924
sw $5 12($0)
# 0x3928
and $18 $13 $21
# 0x392c
andi $21 $6 0x3b72
# 0x3930
srav $31 $13 $23
# 0x3934
mfhi $4
# 0x3938
subu $3 $7 $24
# 0x393c
andi $25 $21 0xbb53
# 0x3940
or $12 $4 $4
# 0x3944
sra $23 $26 28
# 0x3948
sllv $21 $3 $31
# 0x394c
sw $19 20($0)
# 0x3950
sltiu $10 $26 5089
# 0x3954
multu $7 $10
# 0x3958
mult $20 $15
# 0x395c
sh $22 48($0)
# 0x3960
lbu $16 27($0)
# 0x3964
xor $5 $8 $11
# 0x3968
addiu $15 $9 11661
# 0x396c
add $5 $5 $2
# 0x3970
sb $15 25($0)
# 0x3974
xori $22 $21 0xd4ee
# 0x3978
mult $21 $13
# 0x397c
slti $2 $5 -23064
# 0x3980
sltiu $22 $23 15480
# 0x3984
mfhi $12
# 0x3988
xor $17 $19 $31
# 0x398c
ori $1 $26 0x9b65
# 0x3990
srl $17 $12 21
# 0x3994
srav $25 $12 $22
# 0x3998
add $17 $5 $7
# 0x399c
srav $21 $14 $8
# 0x39a0
or $21 $4 $10
# 0x39a4
sb $13 3($0)
# 0x39a8
mult $19 $6
# 0x39ac
mflo $25
# 0x39b0
srlv $25 $6 $12
# 0x39b4
ori $3 $17 0xa0ca
# 0x39b8
subu $9 $16 $18
# 0x39bc
xor $6 $3 $14
# 0x39c0
and $30 $14 $11
# 0x39c4
lh $20 22($0)
# 0x39c8
and $3 $24 $30
# 0x39cc
slt $5 $4 $18
# 0x39d0
multu $14 $14
# 0x39d4
srl $10 $2 23
# 0x39d8
mult $25 $20
# 0x39dc
mtlo $3
# 0x39e0
sw $8 16($0)
# 0x39e4
slt $5 $24 $25
# 0x39e8
mflo $15
# 0x39ec
sb $6 1($0)
# 0x39f0
slt $8 $30 $22
# 0x39f4
and $22 $9 $23
# 0x39f8
lui $20 0x25aa
# 0x39fc
sllv $16 $1 $7
# 0x3a00
sw $23 72($0)
# 0x3a04
lh $7 26($0)
# 0x3a08
lw $23 16($0)
# 0x3a0c
ori $2 $30 0xfc49
# 0x3a10
lb $13 18($0)
# 0x3a14
andi $19 $24 0x63ba
# 0x3a18
lhu $24 2($0)
# 0x3a1c
lb $10 15($0)
# 0x3a20
ori $4 $4 0x8377
# 0x3a24
lb $19 8($0)
# 0x3a28
addi $25 $30 -5486
# 0x3a2c
lh $12 36($0)
# 0x3a30
addi $2 $22 -23463
# 0x3a34
srav $11 $2 $5
# 0x3a38
sllv $20 $22 $19
# 0x3a3c
nor $15 $6 $10
# 0x3a40
addi $16 $5 9821
# 0x3a44
slti $23 $1 -17756
# 0x3a48
andi $9 $31 0x52af
# 0x3a4c
sltiu $15 $2 27307
# 0x3a50
sub $17 $21 $26
# 0x3a54
mthi $27
# 0x3a58
addi $5 $16 -21264
# 0x3a5c
srlv $21 $24 $8
# 0x3a60
sltiu $6 $25 18277
# 0x3a64
add $19 $21 $30
# 0x3a68
slti $25 $24 27981
# 0x3a6c
slt $2 $8 $20
# 0x3a70
sub $12 $10 $1
# 0x3a74
sllv $5 $12 $15
# 0x3a78
sb $30 9($0)
# 0x3a7c
sllv $26 $8 $2
# 0x3a80
sw $25 20($0)
# 0x3a84
add $12 $22 $18
# 0x3a88
lui $7 0xbe5e
# 0x3a8c
mfhi $10
# 0x3a90
addu $13 $11 $25
# 0x3a94
lw $11 20($0)
# 0x3a98
sb $12 16($0)
# 0x3a9c
srav $2 $4 $24
# 0x3aa0
sh $25 24($0)
# 0x3aa4
sltiu $14 $19 23437
# 0x3aa8
lh $30 48($0)
# 0x3aac
sh $31 10($0)
# 0x3ab0
sh $22 16($0)
# 0x3ab4
srl $23 $19 18
# 0x3ab8
sb $11 20($0)
# 0x3abc
sltu $7 $4 $14
# 0x3ac0
sb $10 4($0)
# 0x3ac4
slti $5 $8 30557
# 0x3ac8
sh $12 46($0)
# 0x3acc
mflo $24
# 0x3ad0
sra $12 $19 25
# 0x3ad4
addi $8 $1 -12043
# 0x3ad8
xori $10 $31 0xc566
# 0x3adc
sub $20 $19 $25
# 0x3ae0
addu $23 $1 $16
# 0x3ae4
andi $19 $5 0xf8e9
# 0x3ae8
addiu $16 $17 4958
# 0x3aec
lw $21 84($0)
# 0x3af0
mfhi $4
# 0x3af4
sw $17 36($0)
# 0x3af8
mult $17 $30
# 0x3afc
lh $25 6($0)
# 0x3b00
lhu $10 28($0)
# 0x3b04
srav $5 $26 $26
# 0x3b08
sw $6 20($0)
# 0x3b0c
addu $2 $23 $19
# 0x3b10
xori $13 $19 0x4f3e
# 0x3b14
lhu $9 8($0)
# 0x3b18
sh $2 8($0)
# 0x3b1c
sllv $6 $2 $24
# 0x3b20
mflo $17
# 0x3b24
lhu $7 20($0)
# 0x3b28
lh $2 42($0)
# 0x3b2c
sub $6 $24 $22
# 0x3b30
subu $7 $17 $26
# 0x3b34
lui $5 0xdc77
# 0x3b38
lbu $30 7($0)
# 0x3b3c
sra $5 $4 22
# 0x3b40
srl $15 $7 20
# 0x3b44
srlv $9 $31 $23
# 0x3b48
slti $6 $14 -31898
# 0x3b4c
lh $24 12($0)
# 0x3b50
lh $4 44($0)
# 0x3b54
sw $20 36($0)
# 0x3b58
sw $22 64($0)
# 0x3b5c
ori $8 $9 0x92ad
# 0x3b60
slt $14 $23 $15
# 0x3b64
sh $14 10($0)
# 0x3b68
lhu $22 24($0)
# 0x3b6c
lui $24 0x7736
# 0x3b70
multu $26 $17
# 0x3b74
sra $26 $20 16
# 0x3b78
sw $17 8($0)
# 0x3b7c
sra $10 $20 28
# 0x3b80
lh $9 8($0)
# 0x3b84
lb $30 22($0)
# 0x3b88
lbu $22 24($0)
# 0x3b8c
lw $6 56($0)
# 0x3b90
or $13 $23 $5
# 0x3b94
lh $7 56($0)
# 0x3b98
ori $19 $14 0xc519
# 0x3b9c
addi $3 $12 -9353
# 0x3ba0
sw $18 24($0)
# 0x3ba4
mthi $19
# 0x3ba8
sllv $13 $12 $6
# 0x3bac
sh $7 12($0)
# 0x3bb0
slti $5 $6 28000
# 0x3bb4
lb $7 19($0)
# 0x3bb8
sub $20 $9 $26
# 0x3bbc
lh $10 28($0)
# 0x3bc0
mthi $7
# 0x3bc4
subu $21 $3 $1
# 0x3bc8
srl $22 $5 5
# 0x3bcc
addiu $21 $27 5259
# 0x3bd0
addiu $3 $15 6752
# 0x3bd4
lw $13 24($0)
# 0x3bd8
mfhi $2
# 0x3bdc
lw $5 52($0)
# 0x3be0
lh $2 6($0)
# 0x3be4
sllv $14 $17 $3
# 0x3be8
addi $31 $15 7094
# 0x3bec
sw $23 100($0)
# 0x3bf0
lbu $4 26($0)
# 0x3bf4
addiu $16 $17 29598
# 0x3bf8
sub $9 $3 $13
# 0x3bfc
slt $13 $4 $8
# 0x3c00
lw $25 96($0)
# 0x3c04
srl $1 $9 20
# 0x3c08
srav $8 $4 $22
# 0x3c0c
lh $14 2($0)
# 0x3c10
sll $30 $7 29
# 0x3c14
addu $17 $26 $4
# 0x3c18
lw $24 16($0)
# 0x3c1c
mflo $4
# 0x3c20
sw $30 12($0)
# 0x3c24
srlv $27 $25 $5
# 0x3c28
xor $14 $21 $16
# 0x3c2c
sw $6 100($0)
# 0x3c30
srav $10 $7 $21
# 0x3c34
add $3 $13 $7
# 0x3c38
slt $3 $30 $5
# 0x3c3c
addiu $30 $26 31279
# 0x3c40
sub $23 $8 $23
# 0x3c44
lh $16 4($0)
# 0x3c48
lw $9 80($0)
# 0x3c4c
mult $11 $4
# 0x3c50
mfhi $7
# 0x3c54
lw $21 44($0)
# 0x3c58
lhu $1 12($0)
# 0x3c5c
srl $30 $10 27
# 0x3c60
andi $24 $31 0x55a4
# 0x3c64
slt $18 $16 $8
# 0x3c68
multu $24 $5
# 0x3c6c
slt $17 $30 $14
# 0x3c70
xor $20 $22 $12
# 0x3c74
lb $3 3($0)
# 0x3c78
sltiu $27 $10 14463
# 0x3c7c
lw $9 28($0)
# 0x3c80
slt $16 $30 $21
# 0x3c84
subu $4 $23 $22
# 0x3c88
lb $27 17($0)
# 0x3c8c
sltiu $2 $25 10195
# 0x3c90
lb $3 13($0)
# 0x3c94
srl $6 $1 31
# 0x3c98
slt $22 $26 $23
# 0x3c9c
srlv $6 $10 $3
# 0x3ca0
mtlo $16
# 0x3ca4
ori $10 $24 0x1961
# 0x3ca8
addu $15 $30 $10
# 0x3cac
lb $8 28($0)
# 0x3cb0
addu $8 $8 $31
# 0x3cb4
addiu $7 $25 27166
# 0x3cb8
multu $20 $6
# 0x3cbc
multu $27 $16
# 0x3cc0
lui $23 0x1e92
# 0x3cc4
lb $4 29($0)
# 0x3cc8
sll $15 $2 4
# 0x3ccc
mtlo $7
# 0x3cd0
subu $15 $12 $4
# 0x3cd4
nor $6 $25 $1
# 0x3cd8
sb $14 30($0)
# 0x3cdc
mfhi $16
# 0x3ce0
slt $10 $12 $30
# 0x3ce4
mfhi $17
# 0x3ce8
slti $12 $10 -29428
# 0x3cec
sb $23 16($0)
# 0x3cf0
and $20 $7 $11
# 0x3cf4
slti $20 $23 1974
# 0x3cf8
multu $17 $23
# 0x3cfc
andi $30 $20 0x6501
# 0x3d00
sub $18 $21 $1
# 0x3d04
or $18 $13 $11
# 0x3d08
or $26 $26 $8
# 0x3d0c
mthi $3
# 0x3d10
lw $24 56($0)
# 0x3d14
xor $15 $19 $18
# 0x3d18
lw $7 4($0)
# 0x3d1c
sltiu $4 $19 22190
# 0x3d20
addi $3 $3 3199
# 0x3d24
xor $13 $19 $12
# 0x3d28
lh $27 20($0)
# 0x3d2c
sllv $4 $22 $15
# 0x3d30
slti $12 $5 15217
# 0x3d34
nor $20 $16 $24
# 0x3d38
lui $4 0x097c
# 0x3d3c
lui $4 0x3f4d
# 0x3d40
addiu $30 $3 16254
# 0x3d44
slti $2 $6 -9373
# 0x3d48
sltu $18 $22 $25
# 0x3d4c
sub $2 $22 $20
# 0x3d50
mflo $31
# 0x3d54
addi $20 $4 24736
# 0x3d58
srl $31 $5 14
# 0x3d5c
nor $23 $2 $5
# 0x3d60
sll $31 $23 25
# 0x3d64
sh $17 0($0)
# 0x3d68
sltu $17 $21 $24
# 0x3d6c
lh $16 6($0)
# 0x3d70
srlv $12 $2 $11
# 0x3d74
andi $3 $24 0xd086
# 0x3d78
lh $5 20($0)
# 0x3d7c
mflo $14
# 0x3d80
mfhi $4
# 0x3d84
andi $9 $20 0x9a3d
# 0x3d88
lhu $2 26($0)
# 0x3d8c
nor $16 $30 $7
# 0x3d90
mthi $27
# 0x3d94
lh $26 32($0)
# 0x3d98
slti $1 $26 17822
# 0x3d9c
lh $21 28($0)
# 0x3da0
srlv $2 $12 $31
# 0x3da4
andi $21 $20 0xeea2
# 0x3da8
lw $15 8($0)
# 0x3dac
sh $26 54($0)
# 0x3db0
sub $22 $2 $24
# 0x3db4
sub $15 $31 $9
# 0x3db8
sw $4 20($0)
# 0x3dbc
xori $17 $1 0x6701
# 0x3dc0
and $2 $8 $10
# 0x3dc4
sub $18 $18 $27
# 0x3dc8
slt $17 $5 $11
# 0x3dcc
add $5 $1 $18
# 0x3dd0
sltiu $21 $27 28686
# 0x3dd4
srl $14 $14 27
# 0x3dd8
xori $31 $6 0xbf5d
# 0x3ddc
andi $15 $1 0x5e92
# 0x3de0
and $9 $14 $19
# 0x3de4
sw $12 0($0)
# 0x3de8
lw $16 4($0)
# 0x3dec
sltiu $21 $15 15184
# 0x3df0
sw $11 20($0)
# 0x3df4
sltu $14 $14 $24
# 0x3df8
mflo $16
# 0x3dfc
sllv $14 $3 $2
# 0x3e00
lw $26 4($0)
# 0x3e04
xori $4 $11 0x03d8
# 0x3e08
lw $20 4($0)
# 0x3e0c
slt $3 $23 $8
# 0x3e10
sltu $1 $21 $8
# 0x3e14
nor $16 $18 $21
# 0x3e18
slt $15 $1 $1
# 0x3e1c
sb $17 15($0)
# 0x3e20
sh $5 12($0)
# 0x3e24
subu $4 $4 $18
# 0x3e28
lbu $20 11($0)
# 0x3e2c
lw $5 104($0)
# 0x3e30
lh $1 12($0)
# 0x3e34
lhu $13 26($0)
# 0x3e38
sub $2 $3 $15
# 0x3e3c
add $2 $12 $9
# 0x3e40
mtlo $24
# 0x3e44
sllv $13 $12 $30
# 0x3e48
lhu $11 22($0)
# 0x3e4c
subu $11 $15 $6
# 0x3e50
and $7 $1 $18
# 0x3e54
andi $31 $24 0x7ad5
# 0x3e58
mfhi $5
# 0x3e5c
lw $19 116($0)
# 0x3e60
nor $24 $19 $24
# 0x3e64
sll $1 $3 20
# 0x3e68
sh $6 60($0)
# 0x3e6c
xor $10 $26 $25
# 0x3e70
ori $20 $31 0x8739
# 0x3e74
lb $15 0($0)
# 0x3e78
sw $14 68($0)
# 0x3e7c
andi $13 $25 0x9b7a
# 0x3e80
srav $10 $27 $5
# 0x3e84
mtlo $10
# 0x3e88
sh $5 14($0)
# 0x3e8c
addiu $11 $21 1510
# 0x3e90
lui $16 0x6349
# 0x3e94
sh $12 24($0)
# 0x3e98
sh $15 46($0)
# 0x3e9c
sllv $27 $5 $15
# 0x3ea0
sltiu $8 $18 14814
# 0x3ea4
lw $9 100($0)
# 0x3ea8
srl $21 $6 0
# 0x3eac
addi $22 $20 -26780
# 0x3eb0
lhu $23 2($0)
# 0x3eb4
nor $3 $12 $19
# 0x3eb8
mthi $31
# 0x3ebc
lh $3 10($0)
# 0x3ec0
xor $6 $13 $22
# 0x3ec4
sltiu $14 $7 14069
# 0x3ec8
lbu $17 27($0)
# 0x3ecc
mtlo $8
# 0x3ed0
lui $21 0x4ca2
# 0x3ed4
mfhi $31
# 0x3ed8
sb $14 3($0)
# 0x3edc
xor $20 $4 $14
# 0x3ee0
sw $30 76($0)
# 0x3ee4
andi $16 $27 0xc8ff
# 0x3ee8
subu $6 $22 $8
# 0x3eec
sb $11 30($0)
# 0x3ef0
lhu $26 30($0)
# 0x3ef4
srl $4 $23 12
# 0x3ef8
nor $5 $15 $4
# 0x3efc
addi $24 $18 -15623
# 0x3f00
mthi $11
# 0x3f04
subu $26 $2 $3
# 0x3f08
sub $17 $7 $26
# 0x3f0c
sub $30 $17 $24
# 0x3f10
andi $19 $16 0x2ba2
# 0x3f14
addiu $5 $14 12444
# 0x3f18
xor $22 $25 $30
# 0x3f1c
slt $26 $7 $11
# 0x3f20
srlv $14 $25 $21
# 0x3f24
sra $21 $16 27
# 0x3f28
sllv $12 $17 $10
# 0x3f2c
sltu $15 $16 $31
# 0x3f30
sll $4 $17 31
# 0x3f34
mtlo $26
# 0x3f38
lhu $12 14($0)
# 0x3f3c
mult $21 $27
# 0x3f40
ori $24 $13 0xb10d
# 0x3f44
sub $27 $11 $3
# 0x3f48
lbu $12 3($0)
# 0x3f4c
sh $16 4($0)
# 0x3f50
lbu $22 7($0)
# 0x3f54
slti $2 $8 16116
# 0x3f58
srav $5 $25 $26
# 0x3f5c
lh $19 8($0)
# 0x3f60
lw $6 24($0)
# 0x3f64
sh $23 28($0)
# 0x3f68
lui $25 0x9c45
# 0x3f6c
slt $30 $10 $14
# 0x3f70
mflo $27
# 0x3f74
sltiu $16 $13 19064
# 0x3f78
lw $24 76($0)
# 0x3f7c
nor $25 $14 $14
# 0x3f80
subu $17 $12 $11
# 0x3f84
srlv $11 $24 $21
# 0x3f88
lh $21 18($0)
# 0x3f8c
or $19 $18 $2
# 0x3f90
and $25 $11 $9
# 0x3f94
slti $16 $25 -16498
# 0x3f98
slti $23 $9 28723
# 0x3f9c
andi $23 $5 0x39c7
# 0x3fa0
sltiu $22 $20 25752

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop