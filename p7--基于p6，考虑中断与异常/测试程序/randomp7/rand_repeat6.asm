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
lh $12 16($0)
# 0x3008
multu $5 $3
# 0x300c
srav $24 $5 $11
# 0x3010
srlv $8 $30 $14
# 0x3014
srl $27 $9 9
# 0x3018
sra $14 $31 19
# 0x301c
mtlo $10
# 0x3020
srlv $14 $31 $27
# 0x3024
addi $31 $3 -31828
# 0x3028
mult $31 $9
# 0x302c
lh $12 2($0)
# 0x3030
sw $22 40($0)
# 0x3034
lbu $25 28($0)
# 0x3038
lb $4 19($0)
# 0x303c
slt $4 $18 $6
# 0x3040
lhu $14 2($0)
# 0x3044
or $9 $8 $24
# 0x3048
lui $25 0x5517
# 0x304c
andi $30 $16 0xb404
# 0x3050
sub $18 $23 $7
# 0x3054
sltu $4 $21 $5
# 0x3058
nor $5 $16 $18
# 0x305c
lbu $24 13($0)
# 0x3060
addiu $23 $20 28918
# 0x3064
addu $31 $12 $18
# 0x3068
sltu $7 $26 $12
# 0x306c
srlv $20 $18 $14
# 0x3070
addu $19 $4 $7
# 0x3074
nor $2 $19 $31
# 0x3078
lh $7 36($0)
# 0x307c
lh $18 22($0)
# 0x3080
sllv $22 $4 $20
# 0x3084
lhu $4 8($0)
# 0x3088
sh $16 12($0)
# 0x308c
srl $18 $17 27
# 0x3090
lbu $4 15($0)
# 0x3094
lh $21 2($0)
# 0x3098
sltu $24 $31 $30
# 0x309c
srav $11 $12 $10
# 0x30a0
lui $25 0x515f
# 0x30a4
lb $27 18($0)
# 0x30a8
andi $14 $4 0xb83a
# 0x30ac
addi $23 $1 20545
# 0x30b0
lw $11 80($0)
# 0x30b4
slti $24 $12 21258
# 0x30b8
sw $23 40($0)
# 0x30bc
mult $4 $27
# 0x30c0
sh $13 28($0)
# 0x30c4
sltu $26 $13 $21
# 0x30c8
mflo $17
# 0x30cc
addiu $21 $15 15611
# 0x30d0
add $22 $11 $19
# 0x30d4
sw $11 72($0)
# 0x30d8
mflo $8
# 0x30dc
xori $25 $22 0x55ed
# 0x30e0
addi $19 $8 24208
# 0x30e4
addiu $1 $14 26321
# 0x30e8
lb $26 9($0)
# 0x30ec
and $11 $30 $20
# 0x30f0
slti $26 $30 -28160
# 0x30f4
nor $30 $12 $14
# 0x30f8
or $10 $24 $25
# 0x30fc
lhu $9 20($0)
# 0x3100
andi $25 $6 0x7769
# 0x3104
mtlo $9
# 0x3108
add $25 $2 $30
# 0x310c
srav $14 $11 $4
# 0x3110
or $17 $16 $3
# 0x3114
multu $26 $24
# 0x3118
slti $18 $30 5512
# 0x311c
lh $16 22($0)
# 0x3120
mflo $5
# 0x3124
sltu $27 $8 $25
# 0x3128
andi $12 $26 0x776e
# 0x312c
addiu $30 $20 11114
# 0x3130
mtlo $27
# 0x3134
srlv $12 $24 $17
# 0x3138
lh $26 46($0)
# 0x313c
sw $4 28($0)
# 0x3140
lui $26 0xc111
# 0x3144
and $17 $10 $31
# 0x3148
sw $31 20($0)
# 0x314c
mthi $22
# 0x3150
lb $12 31($0)
# 0x3154
sw $24 44($0)
# 0x3158
sltu $10 $18 $4
# 0x315c
addu $21 $8 $7
# 0x3160
mfhi $5
# 0x3164
srlv $16 $21 $22
# 0x3168
mflo $16
# 0x316c
addi $14 $19 11824
# 0x3170
mult $9 $20
# 0x3174
sub $16 $26 $13
# 0x3178
sllv $26 $2 $18
# 0x317c
sb $16 16($0)
# 0x3180
ori $24 $27 0x2390
# 0x3184
lui $7 0x0f50
# 0x3188
lhu $10 24($0)
# 0x318c
add $1 $11 $1
# 0x3190
lw $19 24($0)
# 0x3194
xor $5 $24 $17
# 0x3198
add $13 $5 $12
# 0x319c
add $3 $13 $21
# 0x31a0
or $12 $25 $21
# 0x31a4
lh $7 30($0)
# 0x31a8
srl $22 $13 2
# 0x31ac
sub $24 $26 $24
# 0x31b0
nor $24 $8 $15
# 0x31b4
srav $3 $4 $23
# 0x31b8
xor $1 $13 $23
# 0x31bc
sh $3 40($0)
# 0x31c0
or $26 $8 $27
# 0x31c4
srl $22 $12 1
# 0x31c8
lbu $16 16($0)
# 0x31cc
sb $24 6($0)
# 0x31d0
mthi $6
# 0x31d4
sb $25 30($0)
# 0x31d8
sh $8 58($0)
# 0x31dc
mtlo $7
# 0x31e0
lbu $11 31($0)
# 0x31e4
sltiu $3 $6 22435
# 0x31e8
mfhi $15
# 0x31ec
subu $23 $17 $21
# 0x31f0
srlv $4 $19 $17
# 0x31f4
xor $10 $27 $6
# 0x31f8
sw $31 12($0)
# 0x31fc
sllv $1 $15 $18
# 0x3200
addu $4 $5 $27
# 0x3204
srlv $26 $31 $20
# 0x3208
lbu $11 29($0)
# 0x320c
mflo $7
# 0x3210
and $16 $30 $15
# 0x3214
and $9 $22 $9
# 0x3218
subu $25 $14 $5
# 0x321c
mult $25 $7
# 0x3220
mflo $21
# 0x3224
multu $27 $20
# 0x3228
xor $1 $20 $16
# 0x322c
lhu $9 20($0)
# 0x3230
mfhi $17
# 0x3234
addi $5 $13 9533
# 0x3238
slt $26 $20 $10
# 0x323c
mult $20 $4
# 0x3240
sb $26 6($0)
# 0x3244
and $4 $5 $16
# 0x3248
and $1 $19 $16
# 0x324c
lh $5 20($0)
# 0x3250
mflo $5
# 0x3254
addi $14 $2 -8003
# 0x3258
sb $3 15($0)
# 0x325c
lw $11 16($0)
# 0x3260
mflo $2
# 0x3264
lui $6 0x4d73
# 0x3268
lh $9 18($0)
# 0x326c
lui $24 0xc46a
# 0x3270
sh $27 62($0)
# 0x3274
lw $11 4($0)
# 0x3278
lb $30 10($0)
# 0x327c
addi $14 $27 -23978
# 0x3280
mfhi $20
# 0x3284
sh $14 16($0)
# 0x3288
or $10 $25 $15
# 0x328c
lw $22 16($0)
# 0x3290
sb $11 9($0)
# 0x3294
lui $14 0x9a61
# 0x3298
lh $17 6($0)
# 0x329c
lui $12 0xe349
# 0x32a0
xori $21 $24 0xc551
# 0x32a4
sltu $30 $26 $20
# 0x32a8
lw $14 84($0)
# 0x32ac
lh $15 2($0)
# 0x32b0
srlv $4 $13 $31
# 0x32b4
srav $27 $26 $11
# 0x32b8
srl $12 $20 31
# 0x32bc
srlv $17 $26 $9
# 0x32c0
lb $25 9($0)
# 0x32c4
lh $27 22($0)
# 0x32c8
sh $25 28($0)
# 0x32cc
mfhi $12
# 0x32d0
addu $22 $27 $20
# 0x32d4
lui $6 0x4692
# 0x32d8
slt $11 $7 $1
# 0x32dc
sub $18 $10 $14
# 0x32e0
slti $25 $1 4653
# 0x32e4
lhu $25 18($0)
# 0x32e8
sub $7 $15 $19
# 0x32ec
mflo $24
# 0x32f0
add $26 $31 $30
# 0x32f4
slti $11 $14 -14961
# 0x32f8
andi $2 $20 0x0d9c
# 0x32fc
add $7 $23 $15
# 0x3300
addi $1 $11 24124
# 0x3304
srl $10 $22 1
# 0x3308
addiu $23 $18 32087
# 0x330c
sw $26 20($0)
# 0x3310
lh $30 20($0)
# 0x3314
ori $22 $7 0x04bb
# 0x3318
sllv $15 $22 $31
# 0x331c
sllv $26 $15 $12
# 0x3320
subu $30 $20 $21
# 0x3324
srlv $16 $1 $8
# 0x3328
sh $11 22($0)
# 0x332c
multu $31 $13
# 0x3330
lw $17 92($0)
# 0x3334
sh $12 12($0)
# 0x3338
sltiu $10 $25 24201
# 0x333c
subu $21 $19 $17
# 0x3340
mthi $20
# 0x3344
lui $30 0xc089
# 0x3348
sltu $2 $3 $18
# 0x334c
srl $2 $22 17
# 0x3350
sw $21 28($0)
# 0x3354
lw $12 104($0)
# 0x3358
sll $1 $7 15
# 0x335c
xori $11 $30 0x9ffe
# 0x3360
mthi $25
# 0x3364
ori $12 $22 0x59bb
# 0x3368
add $6 $26 $26
# 0x336c
mthi $9
# 0x3370
mult $12 $31
# 0x3374
lui $9 0x5b3a
# 0x3378
sltu $20 $21 $2
# 0x337c
lh $6 46($0)
# 0x3380
sw $20 8($0)
# 0x3384
sh $21 18($0)
# 0x3388
sb $30 23($0)
# 0x338c
mult $25 $25
# 0x3390
or $27 $2 $31
# 0x3394
sh $23 36($0)
# 0x3398
mult $23 $23
# 0x339c
sltu $7 $12 $24
# 0x33a0
slt $23 $3 $15
# 0x33a4
sb $22 31($0)
# 0x33a8
mfhi $1
# 0x33ac
mult $7 $2
# 0x33b0
mflo $5
# 0x33b4
slt $27 $11 $22
# 0x33b8
addu $12 $20 $11
# 0x33bc
xori $17 $10 0x9a75
# 0x33c0
lb $10 10($0)
# 0x33c4
addiu $31 $22 18627
# 0x33c8
nor $14 $7 $21
# 0x33cc
sw $10 48($0)
# 0x33d0
addiu $3 $14 29741
# 0x33d4
srlv $15 $1 $14
# 0x33d8
lhu $19 4($0)
# 0x33dc
lw $1 20($0)
# 0x33e0
multu $1 $30
# 0x33e4
addi $20 $25 -23504
# 0x33e8
sw $10 8($0)
# 0x33ec
sw $2 0($0)
# 0x33f0
srav $31 $22 $20
# 0x33f4
xori $31 $15 0x5a61
# 0x33f8
multu $13 $15
# 0x33fc
mult $31 $8
# 0x3400
srav $30 $8 $2
# 0x3404
lh $8 50($0)
# 0x3408
add $15 $27 $31
# 0x340c
andi $11 $20 0xbf75
# 0x3410
lbu $11 21($0)
# 0x3414
lw $26 16($0)
# 0x3418
sll $10 $6 16
# 0x341c
srlv $12 $14 $27
# 0x3420
srl $13 $15 15
# 0x3424
lbu $12 17($0)
# 0x3428
sltiu $6 $31 6867
# 0x342c
mult $23 $10
# 0x3430
srlv $5 $8 $20
# 0x3434
lb $14 30($0)
# 0x3438
mult $4 $22
# 0x343c
sll $31 $16 21
# 0x3440
or $17 $15 $6
# 0x3444
ori $7 $24 0x949c
# 0x3448
addiu $23 $27 14126
# 0x344c
xor $1 $16 $10
# 0x3450
sra $3 $30 14
# 0x3454
xor $22 $2 $1
# 0x3458
sltiu $30 $22 22336
# 0x345c
sw $13 124($0)
# 0x3460
sh $14 30($0)
# 0x3464
multu $3 $6
# 0x3468
mthi $22
# 0x346c
xor $26 $22 $20
# 0x3470
or $7 $30 $23
# 0x3474
lbu $26 12($0)
# 0x3478
mflo $24
# 0x347c
lbu $15 30($0)
# 0x3480
lh $19 22($0)
# 0x3484
sltiu $14 $17 8703
# 0x3488
slti $3 $24 -9421
# 0x348c
xor $24 $26 $27
# 0x3490
andi $5 $26 0x7753
# 0x3494
lh $18 54($0)
# 0x3498
addiu $10 $20 18178
# 0x349c
mtlo $19
# 0x34a0
lh $6 20($0)
# 0x34a4
mflo $9
# 0x34a8
lh $20 16($0)
# 0x34ac
mtlo $24
# 0x34b0
lui $14 0x732c
# 0x34b4
xori $23 $16 0x966c
# 0x34b8
sw $2 0($0)
# 0x34bc
lui $4 0x41bf
# 0x34c0
sllv $11 $17 $26
# 0x34c4
sltiu $1 $31 28498
# 0x34c8
sw $2 4($0)
# 0x34cc
xor $22 $22 $31
# 0x34d0
sra $1 $2 6
# 0x34d4
ori $3 $5 0x2e6d
# 0x34d8
srl $20 $7 16
# 0x34dc
mult $7 $12
# 0x34e0
sub $6 $5 $23
# 0x34e4
lhu $15 20($0)
# 0x34e8
srav $24 $26 $4
# 0x34ec
srlv $3 $3 $26
# 0x34f0
subu $17 $23 $19
# 0x34f4
sll $21 $23 12
# 0x34f8
lw $20 28($0)
# 0x34fc
lh $16 34($0)
# 0x3500
mult $9 $5
# 0x3504
and $1 $27 $1
# 0x3508
subu $24 $13 $18
# 0x350c
andi $25 $25 0x4e4d
# 0x3510
ori $1 $16 0x55ca
# 0x3514
or $8 $10 $5
# 0x3518
lh $30 46($0)
# 0x351c
lh $7 54($0)
# 0x3520
mult $26 $9
# 0x3524
lbu $2 12($0)
# 0x3528
addiu $16 $27 32558
# 0x352c
multu $13 $8
# 0x3530
lhu $25 14($0)
# 0x3534
ori $27 $13 0xbb85
# 0x3538
xori $9 $23 0x0224
# 0x353c
slt $10 $26 $8
# 0x3540
sll $1 $30 29
# 0x3544
sh $7 20($0)
# 0x3548
slt $6 $26 $19
# 0x354c
mfhi $5
# 0x3550
sub $25 $14 $1
# 0x3554
ori $26 $4 0x89fd
# 0x3558
mtlo $4
# 0x355c
sw $11 20($0)
# 0x3560
mfhi $22
# 0x3564
srlv $24 $6 $21
# 0x3568
sw $21 28($0)
# 0x356c
multu $5 $18
# 0x3570
add $25 $3 $13
# 0x3574
lw $19 8($0)
# 0x3578
multu $10 $18
# 0x357c
or $3 $31 $17
# 0x3580
addi $4 $22 9475
# 0x3584
add $23 $30 $6
# 0x3588
xor $14 $11 $7
# 0x358c
lhu $16 24($0)
# 0x3590
mtlo $2
# 0x3594
sub $30 $10 $3
# 0x3598
mthi $8
# 0x359c
ori $25 $15 0xb459
# 0x35a0
sltiu $27 $6 27079
# 0x35a4
slti $14 $3 -30089
# 0x35a8
sw $27 32($0)
# 0x35ac
sh $20 16($0)
# 0x35b0
mfhi $13
# 0x35b4
mult $25 $20
# 0x35b8
sub $27 $7 $7
# 0x35bc
slt $30 $3 $20
# 0x35c0
mthi $1
# 0x35c4
srav $20 $17 $15
# 0x35c8
and $18 $6 $14
# 0x35cc
or $17 $30 $12
# 0x35d0
sllv $13 $1 $22
# 0x35d4
sra $23 $3 22
# 0x35d8
addu $15 $15 $11
# 0x35dc
mfhi $4
# 0x35e0
subu $9 $11 $9
# 0x35e4
multu $13 $20
# 0x35e8
xor $24 $12 $10
# 0x35ec
addi $18 $9 -27073
# 0x35f0
mflo $16
# 0x35f4
mthi $17
# 0x35f8
mfhi $24
# 0x35fc
sltiu $2 $6 15579
# 0x3600
addiu $22 $15 12252
# 0x3604
addiu $18 $17 22497
# 0x3608
sub $16 $18 $7
# 0x360c
srlv $19 $1 $20
# 0x3610
mult $21 $3
# 0x3614
sra $13 $31 9
# 0x3618
mult $30 $14
# 0x361c
addi $6 $9 10743
# 0x3620
srlv $30 $26 $5
# 0x3624
xor $14 $19 $21
# 0x3628
sb $5 27($0)
# 0x362c
slt $18 $21 $17
# 0x3630
slt $22 $3 $3
# 0x3634
and $19 $4 $14
# 0x3638
sll $11 $5 17
# 0x363c
sltu $15 $10 $7
# 0x3640
sra $19 $9 28
# 0x3644
addi $23 $20 32398
# 0x3648
srav $20 $5 $30
# 0x364c
or $22 $20 $17
# 0x3650
sub $25 $23 $11
# 0x3654
mfhi $1
# 0x3658
or $16 $6 $18
# 0x365c
mult $12 $31
# 0x3660
lw $24 16($0)
# 0x3664
lbu $6 28($0)
# 0x3668
sltu $3 $15 $15
# 0x366c
sw $15 48($0)
# 0x3670
sh $4 14($0)
# 0x3674
sw $5 28($0)
# 0x3678
addiu $4 $12 10477
# 0x367c
mthi $15
# 0x3680
lui $11 0x6bdb
# 0x3684
srav $3 $1 $21
# 0x3688
mfhi $4
# 0x368c
srlv $20 $9 $31
# 0x3690
sw $26 8($0)
# 0x3694
sw $7 12($0)
# 0x3698
addiu $7 $14 6415
# 0x369c
lhu $25 10($0)
# 0x36a0
nor $17 $11 $18
# 0x36a4
mflo $14
# 0x36a8
lhu $27 6($0)
# 0x36ac
lui $15 0x16a9
# 0x36b0
srlv $30 $12 $20
# 0x36b4
or $6 $15 $23
# 0x36b8
lh $13 6($0)
# 0x36bc
and $13 $4 $8
# 0x36c0
lw $23 44($0)
# 0x36c4
xor $1 $22 $18
# 0x36c8
sltu $14 $11 $9
# 0x36cc
lhu $16 6($0)
# 0x36d0
andi $19 $23 0x8d61
# 0x36d4
xor $27 $22 $15
# 0x36d8
multu $17 $27
# 0x36dc
and $30 $7 $8
# 0x36e0
srl $4 $17 16
# 0x36e4
sltiu $31 $11 10808
# 0x36e8
lbu $15 12($0)
# 0x36ec
sltu $12 $14 $10
# 0x36f0
xori $11 $21 0xe285
# 0x36f4
srav $11 $17 $30
# 0x36f8
slti $3 $14 10988
# 0x36fc
sra $22 $31 6
# 0x3700
andi $20 $13 0x6abb
# 0x3704
sh $10 24($0)
# 0x3708
sll $6 $14 8
# 0x370c
sltiu $31 $7 22083
# 0x3710
mfhi $2
# 0x3714
ori $9 $23 0x4830
# 0x3718
subu $21 $9 $11
# 0x371c
sltiu $23 $5 30548
# 0x3720
mtlo $20
# 0x3724
sh $4 6($0)
# 0x3728
andi $13 $20 0xbc86
# 0x372c
sllv $15 $3 $14
# 0x3730
sltu $5 $12 $22
# 0x3734
multu $30 $20
# 0x3738
mtlo $16
# 0x373c
ori $17 $1 0x313d
# 0x3740
mflo $5
# 0x3744
xori $15 $3 0x27fd
# 0x3748
xor $2 $3 $7
# 0x374c
sh $6 12($0)
# 0x3750
slt $27 $30 $19
# 0x3754
sltu $30 $15 $12
# 0x3758
lui $14 0xe34a
# 0x375c
sltu $11 $6 $15
# 0x3760
addiu $18 $10 30080
# 0x3764
sh $9 14($0)
# 0x3768
mflo $2
# 0x376c
sh $18 46($0)
# 0x3770
lw $26 32($0)
# 0x3774
mult $19 $5
# 0x3778
mthi $15
# 0x377c
sllv $3 $10 $2
# 0x3780
multu $1 $23
# 0x3784
mfhi $4
# 0x3788
lw $17 88($0)
# 0x378c
sh $24 30($0)
# 0x3790
andi $20 $23 0x904f
# 0x3794
xor $11 $14 $11
# 0x3798
add $2 $3 $11
# 0x379c
addu $12 $17 $2
# 0x37a0
sh $1 34($0)
# 0x37a4
sra $2 $4 11
# 0x37a8
lh $11 6($0)
# 0x37ac
and $19 $14 $31
# 0x37b0
sw $21 12($0)
# 0x37b4
nor $7 $11 $23
# 0x37b8
srav $31 $24 $16
# 0x37bc
mfhi $18
# 0x37c0
mtlo $11
# 0x37c4
ori $16 $23 0x91a1
# 0x37c8
sh $15 24($0)
# 0x37cc
sll $8 $1 12
# 0x37d0
addu $21 $4 $5
# 0x37d4
mflo $27
# 0x37d8
srlv $13 $7 $31
# 0x37dc
addu $1 $2 $12
# 0x37e0
sll $1 $4 3
# 0x37e4
mfhi $1
# 0x37e8
lh $31 36($0)
# 0x37ec
add $22 $9 $14
# 0x37f0
sllv $14 $18 $18
# 0x37f4
xori $13 $27 0x9aa6
# 0x37f8
xor $8 $19 $19
# 0x37fc
sw $2 0($0)
# 0x3800
sw $22 88($0)
# 0x3804
srav $13 $1 $25
# 0x3808
sh $22 12($0)
# 0x380c
lui $5 0x8469
# 0x3810
srl $27 $7 24
# 0x3814
lui $7 0x30d2
# 0x3818
mfhi $21
# 0x381c
and $21 $16 $27
# 0x3820
sra $5 $5 26
# 0x3824
lhu $15 14($0)
# 0x3828
lh $21 10($0)
# 0x382c
srlv $19 $10 $17
# 0x3830
srav $30 $10 $15
# 0x3834
lb $12 29($0)
# 0x3838
mthi $14
# 0x383c
sltiu $6 $7 23173
# 0x3840
mfhi $3
# 0x3844
srlv $26 $12 $12
# 0x3848
add $25 $4 $27
# 0x384c
lui $14 0xb923
# 0x3850
srav $12 $23 $19
# 0x3854
andi $18 $17 0x2e97
# 0x3858
xori $17 $31 0xbd1b
# 0x385c
sltu $3 $21 $21
# 0x3860
nor $5 $3 $8
# 0x3864
lw $31 4($0)
# 0x3868
slt $23 $6 $5
# 0x386c
or $2 $6 $17
# 0x3870
nor $18 $13 $7
# 0x3874
mtlo $5
# 0x3878
sw $22 4($0)
# 0x387c
xori $20 $10 0xd9b7
# 0x3880
sub $8 $12 $14
# 0x3884
ori $25 $11 0x6a9e
# 0x3888
lui $7 0x8d1a
# 0x388c
addi $14 $5 29025
# 0x3890
mthi $13
# 0x3894
mtlo $17
# 0x3898
slti $26 $30 -8934
# 0x389c
multu $8 $16
# 0x38a0
srlv $22 $20 $11
# 0x38a4
sb $15 24($0)
# 0x38a8
andi $27 $27 0x09f1
# 0x38ac
or $24 $7 $8
# 0x38b0
nor $6 $22 $18
# 0x38b4
mult $21 $25
# 0x38b8
addiu $5 $26 17314
# 0x38bc
slt $1 $16 $20
# 0x38c0
or $5 $6 $9
# 0x38c4
lh $24 2($0)
# 0x38c8
srav $3 $23 $31
# 0x38cc
sltu $18 $3 $6
# 0x38d0
nor $2 $5 $6
# 0x38d4
sllv $25 $19 $3
# 0x38d8
lbu $23 3($0)
# 0x38dc
lw $4 56($0)
# 0x38e0
mthi $6
# 0x38e4
mflo $10
# 0x38e8
addiu $9 $26 22839
# 0x38ec
sub $10 $30 $24
# 0x38f0
sb $16 27($0)
# 0x38f4
sltiu $15 $3 27996
# 0x38f8
sllv $5 $4 $23
# 0x38fc
addi $1 $6 -20977
# 0x3900
or $20 $11 $3
# 0x3904
mflo $1
# 0x3908
lui $18 0xd583
# 0x390c
srlv $9 $10 $13
# 0x3910
andi $15 $15 0x29d3
# 0x3914
lbu $4 26($0)
# 0x3918
sra $6 $13 13
# 0x391c
xori $5 $18 0x1de1
# 0x3920
sltu $9 $24 $4
# 0x3924
lw $21 24($0)
# 0x3928
subu $27 $4 $30
# 0x392c
srav $31 $16 $30
# 0x3930
srl $17 $23 10
# 0x3934
addi $15 $8 -21468
# 0x3938
multu $9 $26
# 0x393c
mflo $16
# 0x3940
addu $3 $31 $3
# 0x3944
sw $22 16($0)
# 0x3948
srl $21 $22 17
# 0x394c
andi $20 $18 0x3409
# 0x3950
sra $25 $24 30
# 0x3954
sltiu $17 $25 16989
# 0x3958
mult $5 $23
# 0x395c
lui $22 0x76d5
# 0x3960
lw $16 28($0)
# 0x3964
srav $25 $20 $13
# 0x3968
lhu $10 4($0)
# 0x396c
nor $17 $2 $20
# 0x3970
addiu $7 $31 21461
# 0x3974
sltu $9 $27 $16
# 0x3978
or $21 $26 $6
# 0x397c
lw $5 20($0)
# 0x3980
sw $24 0($0)
# 0x3984
or $2 $26 $10
# 0x3988
lh $18 18($0)
# 0x398c
lw $13 104($0)
# 0x3990
mflo $15
# 0x3994
xori $14 $1 0x52ab
# 0x3998
addi $6 $14 23595
# 0x399c
sub $1 $14 $31
# 0x39a0
addi $12 $23 19784
# 0x39a4
addi $11 $8 22022
# 0x39a8
lui $13 0x15cc
# 0x39ac
xori $9 $15 0x984d
# 0x39b0
ori $5 $17 0x84ac
# 0x39b4
sh $27 4($0)
# 0x39b8
sllv $11 $21 $5
# 0x39bc
mthi $13
# 0x39c0
lb $20 13($0)
# 0x39c4
addu $11 $17 $23
# 0x39c8
subu $30 $9 $15
# 0x39cc
mtlo $3
# 0x39d0
mthi $10
# 0x39d4
sub $7 $21 $4
# 0x39d8
sub $12 $7 $25
# 0x39dc
addiu $13 $18 24564
# 0x39e0
lbu $15 15($0)
# 0x39e4
slt $14 $19 $30
# 0x39e8
slt $4 $6 $25
# 0x39ec
sw $3 100($0)
# 0x39f0
subu $8 $22 $30
# 0x39f4
and $23 $16 $22
# 0x39f8
addu $26 $20 $27
# 0x39fc
sllv $8 $25 $1
# 0x3a00
mflo $4
# 0x3a04
sltu $16 $4 $2
# 0x3a08
srl $9 $14 12
# 0x3a0c
lbu $2 27($0)
# 0x3a10
sh $10 16($0)
# 0x3a14
ori $31 $23 0x4d57
# 0x3a18
nor $13 $11 $27
# 0x3a1c
mtlo $7
# 0x3a20
xori $25 $17 0x88eb
# 0x3a24
mfhi $15
# 0x3a28
sllv $23 $11 $13
# 0x3a2c
sh $10 60($0)
# 0x3a30
lhu $14 28($0)
# 0x3a34
and $9 $25 $10
# 0x3a38
multu $14 $31
# 0x3a3c
sb $7 5($0)
# 0x3a40
lbu $15 12($0)
# 0x3a44
lb $6 17($0)
# 0x3a48
lw $23 24($0)
# 0x3a4c
sra $7 $15 7
# 0x3a50
mthi $22
# 0x3a54
lw $19 4($0)
# 0x3a58
sb $15 10($0)
# 0x3a5c
sub $27 $25 $25
# 0x3a60
srlv $7 $16 $20
# 0x3a64
lui $16 0xb54f
# 0x3a68
lw $1 48($0)
# 0x3a6c
sb $18 30($0)
# 0x3a70
lhu $20 8($0)
# 0x3a74
srav $27 $31 $20
# 0x3a78
mthi $31
# 0x3a7c
sub $14 $23 $3
# 0x3a80
sra $10 $23 27
# 0x3a84
sll $11 $17 12
# 0x3a88
or $16 $16 $8
# 0x3a8c
srl $6 $13 4
# 0x3a90
multu $9 $22
# 0x3a94
sub $30 $3 $12
# 0x3a98
sra $16 $5 31
# 0x3a9c
lhu $19 30($0)
# 0x3aa0
mflo $11
# 0x3aa4
nor $17 $17 $10
# 0x3aa8
sw $10 24($0)
# 0x3aac
mtlo $22
# 0x3ab0
mthi $2
# 0x3ab4
srav $27 $12 $22
# 0x3ab8
ori $14 $10 0xd309
# 0x3abc
srl $16 $11 12
# 0x3ac0
sll $7 $27 31
# 0x3ac4
sra $19 $9 18
# 0x3ac8
xori $14 $11 0xfd03
# 0x3acc
sltu $12 $2 $27
# 0x3ad0
lw $16 24($0)
# 0x3ad4
lw $26 28($0)
# 0x3ad8
and $1 $6 $4
# 0x3adc
sw $19 112($0)
# 0x3ae0
sub $17 $20 $21
# 0x3ae4
sll $27 $7 12
# 0x3ae8
lui $23 0x57f6
# 0x3aec
nor $13 $27 $6
# 0x3af0
lbu $7 13($0)
# 0x3af4
lbu $15 21($0)
# 0x3af8
srav $27 $17 $9
# 0x3afc
lhu $11 14($0)
# 0x3b00
slti $14 $15 14184
# 0x3b04
slt $10 $7 $25
# 0x3b08
mtlo $2
# 0x3b0c
mtlo $3
# 0x3b10
add $5 $18 $5
# 0x3b14
lw $31 8($0)
# 0x3b18
addiu $3 $12 24424
# 0x3b1c
lh $9 14($0)
# 0x3b20
or $27 $9 $23
# 0x3b24
mult $21 $16
# 0x3b28
lh $4 10($0)
# 0x3b2c
sllv $19 $20 $30
# 0x3b30
add $30 $1 $10
# 0x3b34
srlv $18 $17 $2
# 0x3b38
sb $25 3($0)
# 0x3b3c
lhu $3 0($0)
# 0x3b40
or $24 $6 $19
# 0x3b44
addiu $20 $20 5550
# 0x3b48
sw $20 116($0)
# 0x3b4c
mflo $4
# 0x3b50
mtlo $22
# 0x3b54
sllv $21 $21 $2
# 0x3b58
srl $2 $13 10
# 0x3b5c
mflo $3
# 0x3b60
mfhi $20
# 0x3b64
addi $31 $3 -26500
# 0x3b68
srlv $8 $4 $30
# 0x3b6c
andi $11 $5 0x0222
# 0x3b70
sh $5 58($0)
# 0x3b74
xor $25 $19 $5
# 0x3b78
srlv $17 $18 $30
# 0x3b7c
sb $9 25($0)
# 0x3b80
and $9 $6 $1
# 0x3b84
sll $4 $6 31
# 0x3b88
lh $2 20($0)
# 0x3b8c
sw $18 96($0)
# 0x3b90
lh $25 26($0)
# 0x3b94
lh $1 50($0)
# 0x3b98
mflo $6
# 0x3b9c
lh $12 44($0)
# 0x3ba0
sh $18 28($0)
# 0x3ba4
mult $19 $6
# 0x3ba8
or $1 $6 $12
# 0x3bac
subu $24 $31 $23
# 0x3bb0
sltu $15 $16 $23
# 0x3bb4
sll $11 $6 11
# 0x3bb8
slt $20 $18 $5
# 0x3bbc
mthi $26
# 0x3bc0
sll $17 $30 15
# 0x3bc4
subu $22 $1 $26
# 0x3bc8
sw $5 0($0)
# 0x3bcc
sra $23 $22 14
# 0x3bd0
and $20 $9 $10
# 0x3bd4
lh $10 48($0)
# 0x3bd8
lui $16 0xbda5
# 0x3bdc
sltiu $1 $3 19805
# 0x3be0
and $25 $10 $5
# 0x3be4
sll $2 $14 9
# 0x3be8
lh $11 18($0)
# 0x3bec
sw $1 16($0)
# 0x3bf0
lbu $21 14($0)
# 0x3bf4
andi $22 $22 0x5ed7
# 0x3bf8
andi $13 $17 0xbdad
# 0x3bfc
lhu $18 24($0)
# 0x3c00
andi $6 $15 0xe0a3
# 0x3c04
mtlo $2
# 0x3c08
mfhi $14
# 0x3c0c
sllv $15 $20 $27
# 0x3c10
sltiu $10 $11 9249
# 0x3c14
lw $22 0($0)
# 0x3c18
lui $19 0x944e
# 0x3c1c
lw $18 16($0)
# 0x3c20
ori $30 $10 0xc53a
# 0x3c24
slti $22 $31 -21296
# 0x3c28
lhu $8 4($0)
# 0x3c2c
sh $16 52($0)
# 0x3c30
slti $15 $7 -19836
# 0x3c34
addiu $7 $7 5792
# 0x3c38
lbu $13 3($0)
# 0x3c3c
mflo $11
# 0x3c40
lw $18 80($0)
# 0x3c44
sub $27 $14 $12
# 0x3c48
slti $21 $8 -27747
# 0x3c4c
mtlo $22
# 0x3c50
lh $25 4($0)
# 0x3c54
sw $30 28($0)
# 0x3c58
slti $24 $5 -24821
# 0x3c5c
mthi $9
# 0x3c60
sra $12 $8 2
# 0x3c64
sllv $5 $26 $13
# 0x3c68
addi $30 $2 -26900
# 0x3c6c
xori $4 $24 0xb93d
# 0x3c70
srlv $17 $30 $19
# 0x3c74
sltu $31 $4 $24
# 0x3c78
sh $13 0($0)
# 0x3c7c
lui $26 0xddfa
# 0x3c80
and $13 $27 $1
# 0x3c84
sra $31 $3 15
# 0x3c88
xori $2 $6 0x0943
# 0x3c8c
addiu $25 $15 28659
# 0x3c90
sllv $16 $27 $4
# 0x3c94
mthi $30
# 0x3c98
or $6 $21 $10
# 0x3c9c
lw $14 24($0)
# 0x3ca0
xori $18 $27 0x9875
# 0x3ca4
lw $4 16($0)
# 0x3ca8
sb $20 10($0)
# 0x3cac
sltiu $6 $24 6821
# 0x3cb0
mtlo $21
# 0x3cb4
or $23 $24 $12
# 0x3cb8
sb $5 2($0)
# 0x3cbc
slt $31 $1 $24
# 0x3cc0
lw $31 4($0)
# 0x3cc4
and $10 $18 $19
# 0x3cc8
lh $23 42($0)
# 0x3ccc
xori $23 $3 0x014e
# 0x3cd0
and $20 $30 $26
# 0x3cd4
sb $12 21($0)
# 0x3cd8
mult $24 $26
# 0x3cdc
slt $11 $30 $22
# 0x3ce0
sllv $24 $25 $15
# 0x3ce4
sra $7 $8 6
# 0x3ce8
sh $3 16($0)
# 0x3cec
lw $26 120($0)
# 0x3cf0
sra $7 $14 19
# 0x3cf4
sltiu $9 $17 18044
# 0x3cf8
nor $15 $14 $1
# 0x3cfc
addu $17 $7 $2
# 0x3d00
srav $8 $16 $12
# 0x3d04
lh $2 22($0)
# 0x3d08
lhu $20 10($0)
# 0x3d0c
mult $13 $21
# 0x3d10
sb $3 11($0)
# 0x3d14
srlv $9 $6 $19
# 0x3d18
sll $11 $12 18
# 0x3d1c
mflo $12
# 0x3d20
sw $19 12($0)
# 0x3d24
mult $1 $31
# 0x3d28
addu $27 $24 $2
# 0x3d2c
srav $22 $24 $15
# 0x3d30
lhu $27 18($0)
# 0x3d34
subu $19 $17 $26
# 0x3d38
lbu $27 0($0)
# 0x3d3c
mfhi $17
# 0x3d40
multu $26 $3
# 0x3d44
lb $18 17($0)
# 0x3d48
lw $18 32($0)
# 0x3d4c
slti $30 $27 -15723
# 0x3d50
subu $20 $1 $12
# 0x3d54
lhu $15 22($0)
# 0x3d58
addi $10 $7 -3139
# 0x3d5c
addiu $19 $25 388
# 0x3d60
mfhi $25
# 0x3d64
addiu $13 $15 10806
# 0x3d68
sllv $2 $20 $26
# 0x3d6c
add $31 $13 $2
# 0x3d70
addiu $15 $21 3308
# 0x3d74
sltiu $14 $26 28417
# 0x3d78
sw $3 20($0)
# 0x3d7c
sw $9 24($0)
# 0x3d80
lui $31 0x9338
# 0x3d84
subu $10 $17 $31
# 0x3d88
ori $17 $10 0x7e8f
# 0x3d8c
srlv $16 $24 $20
# 0x3d90
sh $11 4($0)
# 0x3d94
sra $11 $4 20
# 0x3d98
lb $7 18($0)
# 0x3d9c
sltiu $14 $8 2651
# 0x3da0
sllv $14 $2 $23
# 0x3da4
mthi $2
# 0x3da8
lbu $8 13($0)
# 0x3dac
sll $18 $1 11
# 0x3db0
lh $4 34($0)
# 0x3db4
slti $10 $7 20331
# 0x3db8
subu $1 $14 $11
# 0x3dbc
and $10 $13 $25
# 0x3dc0
mtlo $17
# 0x3dc4
mthi $5
# 0x3dc8
mult $30 $20
# 0x3dcc
xor $11 $15 $25
# 0x3dd0
slt $21 $31 $16
# 0x3dd4
lbu $3 9($0)
# 0x3dd8
lbu $15 30($0)
# 0x3ddc
sh $16 20($0)
# 0x3de0
sub $13 $19 $30
# 0x3de4
and $12 $7 $7
# 0x3de8
addu $2 $16 $23
# 0x3dec
add $25 $8 $26
# 0x3df0
mfhi $18
# 0x3df4
or $18 $26 $3
# 0x3df8
nor $25 $18 $19
# 0x3dfc
mult $3 $21
# 0x3e00
addu $17 $31 $6
# 0x3e04
lh $1 22($0)
# 0x3e08
multu $18 $24
# 0x3e0c
mult $7 $22
# 0x3e10
mult $12 $14
# 0x3e14
subu $9 $20 $30
# 0x3e18
sub $21 $23 $25
# 0x3e1c
lw $24 28($0)
# 0x3e20
sltiu $1 $5 443
# 0x3e24
mtlo $20
# 0x3e28
mthi $14
# 0x3e2c
srav $11 $6 $19
# 0x3e30
subu $20 $21 $24
# 0x3e34
sw $5 52($0)
# 0x3e38
srlv $18 $10 $3
# 0x3e3c
addu $24 $27 $25
# 0x3e40
add $18 $19 $2
# 0x3e44
srav $8 $10 $6
# 0x3e48
lui $17 0xe9c4
# 0x3e4c
sub $9 $16 $12
# 0x3e50
and $9 $23 $5
# 0x3e54
sh $1 24($0)
# 0x3e58
sh $30 32($0)
# 0x3e5c
addu $2 $19 $1
# 0x3e60
andi $7 $13 0x4a6a
# 0x3e64
or $12 $19 $9
# 0x3e68
sllv $4 $31 $21
# 0x3e6c
xor $10 $7 $14
# 0x3e70
mthi $21
# 0x3e74
xori $16 $1 0x6877
# 0x3e78
mtlo $15
# 0x3e7c
sll $10 $6 14
# 0x3e80
mtlo $5
# 0x3e84
mflo $3
# 0x3e88
andi $3 $22 0x8cc5
# 0x3e8c
addu $19 $20 $23
# 0x3e90
mflo $7
# 0x3e94
lh $7 16($0)
# 0x3e98
mfhi $25
# 0x3e9c
lh $10 10($0)
# 0x3ea0
lb $27 6($0)
# 0x3ea4
ori $13 $25 0xfc50
# 0x3ea8
sb $5 12($0)
# 0x3eac
mthi $7
# 0x3eb0
sub $2 $22 $5
# 0x3eb4
mtlo $10
# 0x3eb8
sw $22 120($0)
# 0x3ebc
lb $16 19($0)
# 0x3ec0
mfhi $31
# 0x3ec4
sh $7 30($0)
# 0x3ec8
sh $16 52($0)
# 0x3ecc
lh $4 8($0)
# 0x3ed0
add $27 $30 $14
# 0x3ed4
lb $3 4($0)
# 0x3ed8
sh $27 18($0)
# 0x3edc
addiu $6 $18 19737
# 0x3ee0
or $11 $12 $5
# 0x3ee4
andi $31 $25 0x687a
# 0x3ee8
mflo $30
# 0x3eec
sll $6 $5 5
# 0x3ef0
addiu $30 $10 24889
# 0x3ef4
lw $5 12($0)
# 0x3ef8
lui $5 0x6eb7
# 0x3efc
mfhi $23
# 0x3f00
sub $27 $1 $25
# 0x3f04
sltiu $22 $16 24801
# 0x3f08
sw $13 56($0)
# 0x3f0c
ori $5 $11 0x02ff
# 0x3f10
lbu $18 28($0)
# 0x3f14
srav $22 $30 $14
# 0x3f18
and $14 $9 $8
# 0x3f1c
sll $6 $26 16
# 0x3f20
slti $9 $19 -15472
# 0x3f24
xori $24 $6 0x7058
# 0x3f28
sll $24 $6 1
# 0x3f2c
sw $26 68($0)
# 0x3f30
mfhi $18
# 0x3f34
and $10 $14 $3
# 0x3f38
lh $13 40($0)
# 0x3f3c
srl $14 $13 15
# 0x3f40
sw $10 64($0)
# 0x3f44
sh $3 62($0)
# 0x3f48
srav $22 $1 $5
# 0x3f4c
lh $17 30($0)
# 0x3f50
lh $12 10($0)
# 0x3f54
xori $2 $12 0x2f98
# 0x3f58
mult $20 $31
# 0x3f5c
mflo $17
# 0x3f60
lw $25 92($0)
# 0x3f64
mthi $9
# 0x3f68
andi $4 $10 0x95ae
# 0x3f6c
sllv $15 $21 $25
# 0x3f70
or $9 $20 $6
# 0x3f74
lui $16 0x7b42
# 0x3f78
sh $18 36($0)
# 0x3f7c
addu $18 $3 $13
# 0x3f80
sub $9 $8 $31
# 0x3f84
lb $21 7($0)
# 0x3f88
srl $8 $13 26
# 0x3f8c
lh $8 60($0)
# 0x3f90
srl $23 $6 8
# 0x3f94
lw $27 88($0)
# 0x3f98
subu $20 $1 $27
# 0x3f9c
srav $15 $1 $6
# 0x3fa0
addiu $4 $10 26697

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop