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
mfhi $17
# 0x3008
slti $18 $30 9515
# 0x300c
subu $16 $6 $13
# 0x3010
sw $22 16($0)
# 0x3014
mtlo $16
# 0x3018
mult $27 $18
# 0x301c
lw $2 64($0)
# 0x3020
srlv $17 $12 $3
# 0x3024
slti $15 $15 -27430
# 0x3028
sltu $25 $5 $26
# 0x302c
sltu $25 $27 $1
# 0x3030
sb $5 8($0)
# 0x3034
sw $25 52($0)
# 0x3038
sltiu $6 $20 22247
# 0x303c
sh $17 4($0)
# 0x3040
srav $30 $26 $9
# 0x3044
andi $11 $3 0xc909
# 0x3048
multu $26 $13
# 0x304c
sll $12 $16 28
# 0x3050
srlv $2 $17 $11
# 0x3054
sw $25 108($0)
# 0x3058
lw $24 16($0)
# 0x305c
addu $8 $9 $27
# 0x3060
sltu $24 $3 $6
# 0x3064
subu $14 $6 $13
# 0x3068
mfhi $6
# 0x306c
sll $3 $9 11
# 0x3070
mfhi $19
# 0x3074
andi $13 $6 0x9240
# 0x3078
slt $8 $2 $2
# 0x307c
sra $20 $21 18
# 0x3080
addi $9 $6 -20374
# 0x3084
lh $15 0($0)
# 0x3088
slt $19 $2 $10
# 0x308c
lbu $15 4($0)
# 0x3090
xori $1 $21 0x746c
# 0x3094
sub $9 $24 $13
# 0x3098
sh $18 0($0)
# 0x309c
mtlo $14
# 0x30a0
lw $17 104($0)
# 0x30a4
lb $27 23($0)
# 0x30a8
or $9 $3 $10
# 0x30ac
lhu $8 4($0)
# 0x30b0
andi $9 $27 0x655b
# 0x30b4
nor $8 $8 $7
# 0x30b8
multu $17 $1
# 0x30bc
xori $11 $12 0x31fa
# 0x30c0
xori $24 $14 0x44f5
# 0x30c4
andi $22 $24 0x5ba6
# 0x30c8
mthi $24
# 0x30cc
lh $9 20($0)
# 0x30d0
nor $5 $16 $1
# 0x30d4
lbu $23 11($0)
# 0x30d8
multu $6 $11
# 0x30dc
xor $15 $5 $31
# 0x30e0
lh $10 46($0)
# 0x30e4
lw $10 4($0)
# 0x30e8
lw $14 28($0)
# 0x30ec
sltiu $6 $5 19076
# 0x30f0
ori $2 $1 0xb08b
# 0x30f4
ori $14 $24 0x33b3
# 0x30f8
srl $11 $20 0
# 0x30fc
and $5 $16 $26
# 0x3100
lh $2 8($0)
# 0x3104
addi $7 $8 -26096
# 0x3108
sltiu $3 $30 32228
# 0x310c
lhu $22 18($0)
# 0x3110
lhu $14 14($0)
# 0x3114
xori $22 $25 0x7641
# 0x3118
sw $25 28($0)
# 0x311c
sh $8 4($0)
# 0x3120
sltu $7 $16 $17
# 0x3124
addu $26 $6 $16
# 0x3128
sw $16 20($0)
# 0x312c
sw $7 108($0)
# 0x3130
sltu $15 $7 $6
# 0x3134
mult $31 $20
# 0x3138
mflo $23
# 0x313c
lw $1 8($0)
# 0x3140
xor $1 $13 $12
# 0x3144
lbu $18 14($0)
# 0x3148
mflo $9
# 0x314c
sub $25 $11 $10
# 0x3150
lhu $21 6($0)
# 0x3154
sb $7 23($0)
# 0x3158
srl $2 $5 27
# 0x315c
and $24 $19 $24
# 0x3160
lhu $25 6($0)
# 0x3164
sltiu $20 $10 15651
# 0x3168
sltu $15 $6 $9
# 0x316c
sltu $24 $23 $17
# 0x3170
lb $15 1($0)
# 0x3174
addu $23 $27 $23
# 0x3178
multu $15 $30
# 0x317c
mtlo $6
# 0x3180
sltiu $6 $31 17736
# 0x3184
lbu $8 28($0)
# 0x3188
slti $15 $23 703
# 0x318c
mtlo $9
# 0x3190
sh $21 54($0)
# 0x3194
xori $4 $19 0x3262
# 0x3198
mtlo $23
# 0x319c
sll $16 $26 17
# 0x31a0
srl $15 $22 3
# 0x31a4
mtlo $22
# 0x31a8
sltiu $9 $17 455
# 0x31ac
sh $22 4($0)
# 0x31b0
lbu $16 12($0)
# 0x31b4
mult $22 $3
# 0x31b8
lb $24 17($0)
# 0x31bc
ori $19 $17 0xb77f
# 0x31c0
lb $16 23($0)
# 0x31c4
sltiu $31 $20 7254
# 0x31c8
slti $31 $24 9376
# 0x31cc
sh $30 6($0)
# 0x31d0
or $27 $31 $5
# 0x31d4
sub $3 $5 $23
# 0x31d8
sw $27 96($0)
# 0x31dc
mthi $17
# 0x31e0
andi $16 $30 0x6477
# 0x31e4
xori $9 $22 0xb4b4
# 0x31e8
sub $17 $23 $16
# 0x31ec
addiu $27 $12 30499
# 0x31f0
or $26 $22 $22
# 0x31f4
sw $31 12($0)
# 0x31f8
or $25 $1 $25
# 0x31fc
sllv $10 $3 $16
# 0x3200
add $3 $7 $14
# 0x3204
sw $5 20($0)
# 0x3208
srav $16 $3 $2
# 0x320c
addiu $12 $2 2152
# 0x3210
xori $15 $22 0xf653
# 0x3214
and $14 $31 $11
# 0x3218
sllv $25 $30 $15
# 0x321c
sllv $1 $23 $16
# 0x3220
lh $2 0($0)
# 0x3224
lw $27 28($0)
# 0x3228
add $19 $11 $4
# 0x322c
multu $19 $25
# 0x3230
sra $23 $12 24
# 0x3234
lb $2 20($0)
# 0x3238
and $8 $10 $24
# 0x323c
mflo $30
# 0x3240
xor $8 $17 $21
# 0x3244
lh $3 2($0)
# 0x3248
sra $13 $8 22
# 0x324c
mult $19 $12
# 0x3250
sra $24 $1 5
# 0x3254
and $4 $14 $15
# 0x3258
nor $21 $21 $27
# 0x325c
sub $7 $5 $10
# 0x3260
lhu $27 8($0)
# 0x3264
srl $20 $20 12
# 0x3268
mult $26 $20
# 0x326c
sw $20 12($0)
# 0x3270
sh $9 40($0)
# 0x3274
lhu $22 14($0)
# 0x3278
ori $4 $24 0x9a04
# 0x327c
slt $24 $30 $14
# 0x3280
lui $5 0xae28
# 0x3284
mthi $24
# 0x3288
xori $9 $5 0x318b
# 0x328c
sb $3 7($0)
# 0x3290
lui $12 0x6e76
# 0x3294
lh $17 36($0)
# 0x3298
multu $14 $10
# 0x329c
srl $27 $18 21
# 0x32a0
lw $23 28($0)
# 0x32a4
and $27 $25 $24
# 0x32a8
slti $21 $14 11377
# 0x32ac
lh $15 16($0)
# 0x32b0
mflo $23
# 0x32b4
sltiu $10 $12 27740
# 0x32b8
ori $24 $26 0x182b
# 0x32bc
lui $17 0x7109
# 0x32c0
sll $8 $14 23
# 0x32c4
addu $31 $21 $9
# 0x32c8
lh $8 20($0)
# 0x32cc
srav $17 $14 $14
# 0x32d0
sub $12 $23 $8
# 0x32d4
add $24 $13 $10
# 0x32d8
sll $20 $14 0
# 0x32dc
lbu $25 19($0)
# 0x32e0
nor $3 $4 $20
# 0x32e4
sb $3 24($0)
# 0x32e8
srlv $2 $8 $15
# 0x32ec
mflo $6
# 0x32f0
lui $2 0xda1f
# 0x32f4
addu $14 $16 $16
# 0x32f8
subu $8 $31 $22
# 0x32fc
sltu $27 $7 $25
# 0x3300
sub $31 $31 $23
# 0x3304
mthi $19
# 0x3308
and $10 $9 $30
# 0x330c
lh $5 0($0)
# 0x3310
sra $15 $26 8
# 0x3314
addu $21 $17 $5
# 0x3318
andi $30 $9 0xf5c2
# 0x331c
sb $6 18($0)
# 0x3320
lh $16 26($0)
# 0x3324
sh $10 8($0)
# 0x3328
lui $30 0xf50c
# 0x332c
lui $7 0xc9ef
# 0x3330
sw $15 12($0)
# 0x3334
addiu $19 $27 19357
# 0x3338
mflo $10
# 0x333c
sw $14 100($0)
# 0x3340
addiu $19 $14 10284
# 0x3344
lbu $15 10($0)
# 0x3348
sltiu $9 $18 21603
# 0x334c
addi $10 $12 7536
# 0x3350
sll $9 $18 16
# 0x3354
lh $8 30($0)
# 0x3358
xor $26 $17 $6
# 0x335c
sw $16 20($0)
# 0x3360
sub $14 $8 $25
# 0x3364
srlv $3 $2 $20
# 0x3368
subu $25 $4 $12
# 0x336c
sh $13 22($0)
# 0x3370
sltu $10 $14 $10
# 0x3374
sw $14 80($0)
# 0x3378
mtlo $10
# 0x337c
xor $21 $7 $21
# 0x3380
lh $1 22($0)
# 0x3384
addi $9 $30 12890
# 0x3388
mthi $8
# 0x338c
lb $3 8($0)
# 0x3390
lui $9 0x4471
# 0x3394
sh $19 24($0)
# 0x3398
sllv $11 $15 $14
# 0x339c
mthi $10
# 0x33a0
srav $11 $31 $18
# 0x33a4
sw $15 20($0)
# 0x33a8
lb $22 17($0)
# 0x33ac
lh $9 22($0)
# 0x33b0
add $8 $4 $3
# 0x33b4
srav $17 $8 $14
# 0x33b8
add $14 $16 $17
# 0x33bc
lh $14 6($0)
# 0x33c0
sh $8 14($0)
# 0x33c4
slti $1 $12 22070
# 0x33c8
sub $26 $19 $8
# 0x33cc
ori $7 $2 0x7528
# 0x33d0
nor $15 $5 $23
# 0x33d4
addi $21 $6 -8615
# 0x33d8
mflo $8
# 0x33dc
srlv $2 $30 $9
# 0x33e0
addi $3 $22 19602
# 0x33e4
or $23 $1 $6
# 0x33e8
srav $31 $25 $5
# 0x33ec
lh $20 12($0)
# 0x33f0
sltiu $30 $5 32490
# 0x33f4
andi $21 $1 0x3e2a
# 0x33f8
mfhi $17
# 0x33fc
xor $2 $10 $18
# 0x3400
mflo $15
# 0x3404
sub $12 $27 $1
# 0x3408
srav $7 $24 $11
# 0x340c
sll $17 $12 12
# 0x3410
nor $6 $12 $24
# 0x3414
sra $4 $14 18
# 0x3418
sltiu $27 $18 31731
# 0x341c
lw $13 20($0)
# 0x3420
lw $1 0($0)
# 0x3424
slt $1 $14 $13
# 0x3428
or $16 $4 $14
# 0x342c
slt $25 $8 $19
# 0x3430
nor $17 $22 $15
# 0x3434
sra $17 $5 29
# 0x3438
andi $12 $13 0x18b9
# 0x343c
xor $22 $3 $26
# 0x3440
sllv $5 $30 $18
# 0x3444
lbu $1 17($0)
# 0x3448
mfhi $4
# 0x344c
lh $25 20($0)
# 0x3450
mfhi $7
# 0x3454
lui $24 0x0753
# 0x3458
sltiu $19 $3 27004
# 0x345c
mult $3 $5
# 0x3460
addi $22 $4 -24301
# 0x3464
sllv $1 $12 $27
# 0x3468
srlv $30 $5 $18
# 0x346c
slt $13 $13 $8
# 0x3470
addu $19 $23 $6
# 0x3474
srav $24 $24 $12
# 0x3478
lh $6 54($0)
# 0x347c
sw $27 32($0)
# 0x3480
sltiu $3 $11 8000
# 0x3484
sw $12 8($0)
# 0x3488
xor $8 $18 $11
# 0x348c
and $9 $7 $22
# 0x3490
sltu $4 $3 $19
# 0x3494
sltiu $17 $2 17982
# 0x3498
andi $27 $17 0x444a
# 0x349c
xori $15 $3 0x2d4d
# 0x34a0
sh $15 60($0)
# 0x34a4
andi $20 $25 0xf256
# 0x34a8
sw $1 4($0)
# 0x34ac
addu $16 $10 $12
# 0x34b0
addiu $14 $16 15676
# 0x34b4
subu $2 $6 $6
# 0x34b8
and $25 $8 $21
# 0x34bc
lh $18 30($0)
# 0x34c0
mflo $18
# 0x34c4
andi $4 $7 0x723d
# 0x34c8
sw $2 28($0)
# 0x34cc
mthi $14
# 0x34d0
multu $24 $17
# 0x34d4
xori $20 $8 0x3af2
# 0x34d8
sw $9 40($0)
# 0x34dc
and $20 $7 $3
# 0x34e0
mtlo $13
# 0x34e4
subu $19 $8 $6
# 0x34e8
addiu $14 $9 29271
# 0x34ec
sltu $7 $6 $11
# 0x34f0
slti $1 $4 -3688
# 0x34f4
sll $19 $8 31
# 0x34f8
addi $5 $8 15839
# 0x34fc
sw $17 4($0)
# 0x3500
lh $13 54($0)
# 0x3504
andi $2 $23 0x72a8
# 0x3508
lw $14 4($0)
# 0x350c
mfhi $11
# 0x3510
slt $31 $20 $4
# 0x3514
addu $25 $21 $11
# 0x3518
sb $23 19($0)
# 0x351c
lh $4 32($0)
# 0x3520
slti $20 $22 -4250
# 0x3524
lw $5 20($0)
# 0x3528
or $9 $13 $22
# 0x352c
sb $14 24($0)
# 0x3530
sw $18 56($0)
# 0x3534
sllv $19 $26 $21
# 0x3538
lw $24 4($0)
# 0x353c
sltu $25 $12 $27
# 0x3540
xori $8 $15 0xb126
# 0x3544
lbu $9 5($0)
# 0x3548
multu $19 $18
# 0x354c
or $27 $9 $27
# 0x3550
nor $6 $2 $10
# 0x3554
andi $21 $15 0x6fa0
# 0x3558
mfhi $5
# 0x355c
addi $18 $12 14171
# 0x3560
add $27 $16 $9
# 0x3564
mult $27 $21
# 0x3568
sh $20 2($0)
# 0x356c
lh $12 22($0)
# 0x3570
srl $27 $3 3
# 0x3574
sltu $5 $1 $10
# 0x3578
srav $14 $4 $20
# 0x357c
addi $8 $16 2216
# 0x3580
sll $6 $12 8
# 0x3584
lh $27 58($0)
# 0x3588
sltu $5 $26 $9
# 0x358c
lhu $7 26($0)
# 0x3590
srlv $2 $1 $15
# 0x3594
sh $4 28($0)
# 0x3598
srl $11 $6 6
# 0x359c
sltu $30 $10 $16
# 0x35a0
srav $30 $4 $27
# 0x35a4
lbu $23 9($0)
# 0x35a8
multu $6 $27
# 0x35ac
addiu $24 $31 21626
# 0x35b0
nor $4 $3 $24
# 0x35b4
sw $6 8($0)
# 0x35b8
lw $17 16($0)
# 0x35bc
sub $8 $13 $13
# 0x35c0
slti $23 $19 -10041
# 0x35c4
nor $11 $3 $3
# 0x35c8
lhu $4 2($0)
# 0x35cc
lui $9 0x89b5
# 0x35d0
mfhi $21
# 0x35d4
sll $14 $17 9
# 0x35d8
sb $23 22($0)
# 0x35dc
sra $12 $19 16
# 0x35e0
lbu $14 21($0)
# 0x35e4
lui $6 0xf734
# 0x35e8
sltu $16 $14 $1
# 0x35ec
addi $18 $11 -30102
# 0x35f0
sb $27 6($0)
# 0x35f4
sub $17 $16 $24
# 0x35f8
mflo $5
# 0x35fc
sub $21 $25 $11
# 0x3600
or $1 $16 $13
# 0x3604
srav $2 $20 $18
# 0x3608
sw $11 8($0)
# 0x360c
lw $31 16($0)
# 0x3610
slti $30 $3 -9139
# 0x3614
sllv $10 $20 $13
# 0x3618
mfhi $18
# 0x361c
mult $19 $8
# 0x3620
or $18 $16 $24
# 0x3624
sll $15 $25 31
# 0x3628
sw $22 84($0)
# 0x362c
nor $16 $21 $4
# 0x3630
mult $24 $13
# 0x3634
lh $18 58($0)
# 0x3638
lh $14 16($0)
# 0x363c
sra $22 $26 22
# 0x3640
addu $19 $15 $18
# 0x3644
add $19 $13 $8
# 0x3648
ori $8 $10 0xc669
# 0x364c
sllv $27 $24 $25
# 0x3650
slt $16 $5 $18
# 0x3654
mtlo $5
# 0x3658
mfhi $22
# 0x365c
add $17 $31 $26
# 0x3660
sw $16 76($0)
# 0x3664
srav $25 $26 $30
# 0x3668
mult $19 $26
# 0x366c
lhu $5 20($0)
# 0x3670
srav $21 $22 $15
# 0x3674
addi $18 $23 -18058
# 0x3678
mthi $13
# 0x367c
lh $12 16($0)
# 0x3680
sw $14 8($0)
# 0x3684
addiu $21 $16 22333
# 0x3688
subu $2 $31 $25
# 0x368c
lh $19 16($0)
# 0x3690
mthi $9
# 0x3694
srlv $14 $20 $27
# 0x3698
addiu $21 $15 15669
# 0x369c
sltiu $17 $4 27271
# 0x36a0
slti $13 $22 32263
# 0x36a4
sltu $20 $25 $1
# 0x36a8
mtlo $7
# 0x36ac
addi $10 $22 2023
# 0x36b0
sw $31 8($0)
# 0x36b4
addu $3 $9 $14
# 0x36b8
lh $24 36($0)
# 0x36bc
lh $31 16($0)
# 0x36c0
sb $27 30($0)
# 0x36c4
lui $1 0xa29a
# 0x36c8
lhu $23 14($0)
# 0x36cc
lb $11 17($0)
# 0x36d0
xori $9 $25 0x11c4
# 0x36d4
and $9 $21 $23
# 0x36d8
mult $16 $20
# 0x36dc
lw $10 12($0)
# 0x36e0
or $24 $24 $15
# 0x36e4
lh $6 12($0)
# 0x36e8
sllv $3 $10 $10
# 0x36ec
lw $25 28($0)
# 0x36f0
mult $25 $8
# 0x36f4
srav $19 $2 $27
# 0x36f8
addu $14 $30 $26
# 0x36fc
lw $3 12($0)
# 0x3700
sh $27 34($0)
# 0x3704
add $14 $13 $5
# 0x3708
srl $23 $4 22
# 0x370c
add $1 $31 $3
# 0x3710
lhu $31 24($0)
# 0x3714
ori $20 $19 0x9cb4
# 0x3718
lw $14 32($0)
# 0x371c
sllv $25 $16 $11
# 0x3720
mthi $30
# 0x3724
sub $20 $30 $7
# 0x3728
lhu $23 28($0)
# 0x372c
sllv $3 $19 $20
# 0x3730
multu $2 $26
# 0x3734
lui $3 0x13b9
# 0x3738
mfhi $20
# 0x373c
mtlo $1
# 0x3740
xor $3 $18 $17
# 0x3744
xori $11 $13 0xdf81
# 0x3748
mflo $10
# 0x374c
mfhi $23
# 0x3750
ori $13 $11 0x33aa
# 0x3754
sw $11 92($0)
# 0x3758
add $4 $2 $5
# 0x375c
mult $20 $18
# 0x3760
add $13 $5 $24
# 0x3764
lw $2 68($0)
# 0x3768
ori $17 $4 0x7ce9
# 0x376c
lh $20 26($0)
# 0x3770
lhu $24 16($0)
# 0x3774
and $8 $24 $12
# 0x3778
sb $6 4($0)
# 0x377c
andi $10 $17 0x0a8d
# 0x3780
sll $3 $20 31
# 0x3784
sh $23 12($0)
# 0x3788
mtlo $27
# 0x378c
sh $25 30($0)
# 0x3790
lb $4 19($0)
# 0x3794
sltu $21 $8 $16
# 0x3798
xori $30 $8 0x512e
# 0x379c
sh $25 22($0)
# 0x37a0
addi $25 $6 -28233
# 0x37a4
addu $1 $11 $12
# 0x37a8
addi $11 $24 14042
# 0x37ac
mfhi $3
# 0x37b0
sw $8 64($0)
# 0x37b4
mfhi $19
# 0x37b8
lw $4 88($0)
# 0x37bc
mtlo $2
# 0x37c0
ori $24 $15 0x4d70
# 0x37c4
sltu $30 $21 $30
# 0x37c8
addi $5 $22 -22157
# 0x37cc
sw $17 24($0)
# 0x37d0
lw $7 24($0)
# 0x37d4
mfhi $16
# 0x37d8
mult $21 $15
# 0x37dc
lh $20 24($0)
# 0x37e0
multu $1 $16
# 0x37e4
srlv $18 $12 $27
# 0x37e8
srl $14 $17 5
# 0x37ec
add $1 $31 $15
# 0x37f0
mfhi $13
# 0x37f4
sltu $2 $13 $20
# 0x37f8
mflo $25
# 0x37fc
addu $26 $31 $5
# 0x3800
sw $26 104($0)
# 0x3804
mtlo $4
# 0x3808
multu $21 $27
# 0x380c
sh $4 14($0)
# 0x3810
sra $3 $26 8
# 0x3814
xor $10 $24 $1
# 0x3818
srlv $7 $13 $30
# 0x381c
multu $8 $13
# 0x3820
xori $24 $14 0x9feb
# 0x3824
or $12 $11 $1
# 0x3828
lh $4 8($0)
# 0x382c
andi $11 $26 0xb013
# 0x3830
add $24 $17 $20
# 0x3834
mfhi $10
# 0x3838
ori $11 $31 0x8df1
# 0x383c
sw $2 4($0)
# 0x3840
sltu $30 $22 $2
# 0x3844
or $25 $20 $2
# 0x3848
sh $2 8($0)
# 0x384c
or $16 $5 $10
# 0x3850
lui $17 0xfef3
# 0x3854
add $16 $20 $15
# 0x3858
sub $18 $9 $16
# 0x385c
sb $8 26($0)
# 0x3860
addiu $4 $23 16118
# 0x3864
sw $25 16($0)
# 0x3868
xori $18 $8 0xd369
# 0x386c
lb $31 5($0)
# 0x3870
lh $21 2($0)
# 0x3874
sllv $15 $31 $6
# 0x3878
lui $26 0xa9a1
# 0x387c
sll $15 $23 12
# 0x3880
addu $25 $9 $6
# 0x3884
mult $15 $26
# 0x3888
lhu $25 12($0)
# 0x388c
or $1 $16 $10
# 0x3890
lb $5 21($0)
# 0x3894
addiu $24 $23 22608
# 0x3898
lh $18 30($0)
# 0x389c
subu $10 $13 $15
# 0x38a0
add $3 $26 $31
# 0x38a4
lbu $23 22($0)
# 0x38a8
sltu $7 $24 $15
# 0x38ac
mthi $26
# 0x38b0
and $12 $1 $18
# 0x38b4
srlv $15 $8 $20
# 0x38b8
lhu $13 24($0)
# 0x38bc
sltiu $30 $9 24312
# 0x38c0
lw $21 8($0)
# 0x38c4
lhu $6 16($0)
# 0x38c8
srl $21 $11 23
# 0x38cc
lh $16 50($0)
# 0x38d0
lh $8 42($0)
# 0x38d4
srav $2 $23 $26
# 0x38d8
sh $6 12($0)
# 0x38dc
sub $6 $17 $1
# 0x38e0
mtlo $7
# 0x38e4
mthi $17
# 0x38e8
xor $22 $27 $8
# 0x38ec
slt $7 $12 $15
# 0x38f0
xor $25 $17 $20
# 0x38f4
subu $1 $12 $30
# 0x38f8
ori $1 $19 0x7988
# 0x38fc
lbu $7 16($0)
# 0x3900
sh $11 28($0)
# 0x3904
multu $19 $2
# 0x3908
sltiu $31 $20 7343
# 0x390c
slti $18 $9 -26045
# 0x3910
lb $5 31($0)
# 0x3914
add $19 $9 $9
# 0x3918
lbu $20 25($0)
# 0x391c
mult $15 $2
# 0x3920
mtlo $25
# 0x3924
add $12 $9 $10
# 0x3928
addiu $22 $27 18949
# 0x392c
srl $7 $24 19
# 0x3930
srl $10 $7 9
# 0x3934
mflo $13
# 0x3938
slt $16 $22 $4
# 0x393c
xori $31 $12 0x0fe7
# 0x3940
mflo $18
# 0x3944
addu $11 $19 $3
# 0x3948
sh $9 28($0)
# 0x394c
addiu $3 $15 14859
# 0x3950
subu $19 $12 $27
# 0x3954
multu $22 $2
# 0x3958
slt $19 $25 $31
# 0x395c
multu $7 $13
# 0x3960
subu $31 $24 $23
# 0x3964
slti $9 $25 19336
# 0x3968
lhu $18 28($0)
# 0x396c
addiu $10 $21 26648
# 0x3970
sra $1 $12 24
# 0x3974
lw $17 24($0)
# 0x3978
sltu $13 $27 $18
# 0x397c
mthi $5
# 0x3980
lhu $11 26($0)
# 0x3984
srlv $8 $13 $11
# 0x3988
sub $22 $15 $5
# 0x398c
subu $30 $15 $16
# 0x3990
xor $4 $18 $7
# 0x3994
slti $30 $23 22481
# 0x3998
lh $8 16($0)
# 0x399c
sb $16 4($0)
# 0x39a0
nor $15 $3 $22
# 0x39a4
sb $13 18($0)
# 0x39a8
sltiu $11 $4 25232
# 0x39ac
xori $10 $6 0x517e
# 0x39b0
lui $11 0x0654
# 0x39b4
sw $30 60($0)
# 0x39b8
slt $13 $8 $27
# 0x39bc
xori $6 $10 0x01e0
# 0x39c0
andi $6 $24 0x76ff
# 0x39c4
sh $13 58($0)
# 0x39c8
sw $17 12($0)
# 0x39cc
lb $23 22($0)
# 0x39d0
multu $13 $6
# 0x39d4
lw $31 8($0)
# 0x39d8
addiu $23 $18 16072
# 0x39dc
mtlo $25
# 0x39e0
sllv $14 $8 $26
# 0x39e4
mflo $9
# 0x39e8
multu $4 $4
# 0x39ec
mthi $14
# 0x39f0
sllv $30 $12 $6
# 0x39f4
lh $15 12($0)
# 0x39f8
add $15 $22 $9
# 0x39fc
sb $24 6($0)
# 0x3a00
mthi $8
# 0x3a04
lh $2 12($0)
# 0x3a08
lbu $3 26($0)
# 0x3a0c
mult $14 $17
# 0x3a10
xor $1 $24 $20
# 0x3a14
andi $6 $7 0xd318
# 0x3a18
sra $26 $21 25
# 0x3a1c
sll $2 $26 27
# 0x3a20
addiu $20 $15 6737
# 0x3a24
nor $18 $8 $31
# 0x3a28
lh $22 6($0)
# 0x3a2c
lw $11 28($0)
# 0x3a30
lui $17 0x73c1
# 0x3a34
sltiu $9 $7 14802
# 0x3a38
srlv $15 $19 $9
# 0x3a3c
sltiu $8 $2 30603
# 0x3a40
sltiu $22 $24 18906
# 0x3a44
lhu $22 26($0)
# 0x3a48
add $21 $18 $13
# 0x3a4c
addu $18 $1 $18
# 0x3a50
mtlo $6
# 0x3a54
sw $11 100($0)
# 0x3a58
multu $7 $5
# 0x3a5c
subu $7 $14 $14
# 0x3a60
sra $26 $7 2
# 0x3a64
srl $21 $22 9
# 0x3a68
sw $14 16($0)
# 0x3a6c
lw $18 12($0)
# 0x3a70
slti $14 $6 27469
# 0x3a74
srav $23 $23 $21
# 0x3a78
multu $8 $30
# 0x3a7c
sh $16 10($0)
# 0x3a80
multu $13 $26
# 0x3a84
xor $1 $2 $23
# 0x3a88
mthi $26
# 0x3a8c
addi $1 $16 -32092
# 0x3a90
nor $7 $9 $21
# 0x3a94
addiu $30 $10 19692
# 0x3a98
lb $13 12($0)
# 0x3a9c
andi $15 $18 0x1f20
# 0x3aa0
addiu $1 $19 15584
# 0x3aa4
xor $20 $10 $23
# 0x3aa8
sltiu $16 $19 20250
# 0x3aac
subu $2 $2 $7
# 0x3ab0
sll $13 $8 14
# 0x3ab4
nor $19 $1 $11
# 0x3ab8
slt $26 $4 $12
# 0x3abc
mflo $20
# 0x3ac0
lh $30 28($0)
# 0x3ac4
lhu $6 28($0)
# 0x3ac8
sw $18 4($0)
# 0x3acc
ori $17 $30 0xbca4
# 0x3ad0
mtlo $16
# 0x3ad4
addi $20 $4 9017
# 0x3ad8
mtlo $25
# 0x3adc
slti $1 $18 -20373
# 0x3ae0
sra $20 $15 20
# 0x3ae4
sh $17 18($0)
# 0x3ae8
sllv $17 $23 $11
# 0x3aec
lb $17 23($0)
# 0x3af0
addiu $3 $16 11352
# 0x3af4
lw $11 20($0)
# 0x3af8
addi $2 $10 14683
# 0x3afc
mflo $22
# 0x3b00
lw $14 24($0)
# 0x3b04
srav $24 $21 $5
# 0x3b08
sh $18 2($0)
# 0x3b0c
mult $24 $8
# 0x3b10
mflo $9
# 0x3b14
lhu $10 6($0)
# 0x3b18
add $19 $1 $20
# 0x3b1c
add $31 $4 $5
# 0x3b20
sra $3 $22 2
# 0x3b24
sllv $21 $21 $30
# 0x3b28
sw $25 16($0)
# 0x3b2c
subu $2 $30 $18
# 0x3b30
sltu $24 $26 $2
# 0x3b34
sh $7 16($0)
# 0x3b38
lh $1 24($0)
# 0x3b3c
lw $27 36($0)
# 0x3b40
xor $30 $14 $17
# 0x3b44
ori $10 $10 0x49b5
# 0x3b48
lw $26 16($0)
# 0x3b4c
sb $23 17($0)
# 0x3b50
sltiu $6 $11 24606
# 0x3b54
srl $18 $31 8
# 0x3b58
and $15 $18 $12
# 0x3b5c
sllv $1 $23 $22
# 0x3b60
mthi $27
# 0x3b64
ori $11 $20 0x1058
# 0x3b68
lhu $23 22($0)
# 0x3b6c
sb $22 5($0)
# 0x3b70
sra $20 $20 8
# 0x3b74
slti $18 $8 -18073
# 0x3b78
lb $25 1($0)
# 0x3b7c
addiu $27 $19 13236
# 0x3b80
sllv $24 $6 $13
# 0x3b84
mtlo $19
# 0x3b88
nor $25 $3 $6
# 0x3b8c
subu $12 $10 $13
# 0x3b90
sw $18 16($0)
# 0x3b94
xor $30 $4 $30
# 0x3b98
mfhi $26
# 0x3b9c
addiu $23 $1 21794
# 0x3ba0
add $19 $6 $10
# 0x3ba4
slti $3 $30 2221
# 0x3ba8
andi $25 $30 0x91b3
# 0x3bac
mult $26 $27
# 0x3bb0
lbu $30 10($0)
# 0x3bb4
mthi $11
# 0x3bb8
ori $25 $10 0x4cb0
# 0x3bbc
sh $13 50($0)
# 0x3bc0
lw $25 12($0)
# 0x3bc4
srl $10 $14 23
# 0x3bc8
slt $10 $10 $11
# 0x3bcc
lw $6 28($0)
# 0x3bd0
lbu $2 24($0)
# 0x3bd4
lh $20 12($0)
# 0x3bd8
mult $16 $4
# 0x3bdc
lh $26 18($0)
# 0x3be0
sltu $26 $7 $20
# 0x3be4
mflo $12
# 0x3be8
mflo $19
# 0x3bec
xori $10 $14 0x7a63
# 0x3bf0
slti $25 $18 -21719
# 0x3bf4
sltiu $13 $27 12315
# 0x3bf8
sub $6 $22 $2
# 0x3bfc
sw $11 116($0)
# 0x3c00
lw $23 108($0)
# 0x3c04
sh $10 6($0)
# 0x3c08
addu $19 $8 $25
# 0x3c0c
mfhi $10
# 0x3c10
sub $23 $16 $22
# 0x3c14
slti $12 $30 21023
# 0x3c18
lh $8 6($0)
# 0x3c1c
lb $30 20($0)
# 0x3c20
srl $21 $6 21
# 0x3c24
or $8 $24 $22
# 0x3c28
srav $8 $12 $4
# 0x3c2c
mfhi $21
# 0x3c30
and $10 $20 $31
# 0x3c34
srl $24 $11 22
# 0x3c38
lw $16 52($0)
# 0x3c3c
add $24 $9 $21
# 0x3c40
lw $11 4($0)
# 0x3c44
mfhi $19
# 0x3c48
xor $25 $6 $19
# 0x3c4c
sltu $15 $14 $7
# 0x3c50
addu $14 $13 $16
# 0x3c54
addiu $27 $24 28373
# 0x3c58
xori $31 $21 0xc095
# 0x3c5c
andi $1 $23 0x3ae1
# 0x3c60
srl $22 $6 0
# 0x3c64
sra $10 $4 11
# 0x3c68
sub $24 $7 $25
# 0x3c6c
sra $5 $21 22
# 0x3c70
mthi $23
# 0x3c74
mflo $30
# 0x3c78
sw $26 8($0)
# 0x3c7c
lui $16 0xc1c1
# 0x3c80
lui $12 0xc8c6
# 0x3c84
sltiu $23 $23 21615
# 0x3c88
sw $19 60($0)
# 0x3c8c
lh $23 32($0)
# 0x3c90
andi $13 $1 0x1ae4
# 0x3c94
lh $1 0($0)
# 0x3c98
srl $25 $5 5
# 0x3c9c
lbu $19 26($0)
# 0x3ca0
sra $3 $16 23
# 0x3ca4
sub $25 $23 $7
# 0x3ca8
srlv $13 $27 $11
# 0x3cac
addu $19 $8 $19
# 0x3cb0
sllv $10 $4 $16
# 0x3cb4
sw $12 96($0)
# 0x3cb8
lui $16 0x6611
# 0x3cbc
nor $7 $3 $17
# 0x3cc0
xori $19 $18 0x6521
# 0x3cc4
sll $31 $16 4
# 0x3cc8
ori $18 $13 0x682f
# 0x3ccc
add $9 $19 $31
# 0x3cd0
lbu $26 19($0)
# 0x3cd4
sltiu $11 $2 11017
# 0x3cd8
sll $5 $21 23
# 0x3cdc
slt $22 $7 $22
# 0x3ce0
lh $24 0($0)
# 0x3ce4
sllv $6 $19 $13
# 0x3ce8
subu $21 $25 $5
# 0x3cec
mflo $17
# 0x3cf0
nor $15 $15 $21
# 0x3cf4
lh $23 22($0)
# 0x3cf8
mult $11 $4
# 0x3cfc
mtlo $31
# 0x3d00
nor $18 $16 $25
# 0x3d04
sllv $4 $9 $26
# 0x3d08
mfhi $15
# 0x3d0c
addu $6 $8 $17
# 0x3d10
lh $3 30($0)
# 0x3d14
slti $2 $23 6448
# 0x3d18
sh $18 28($0)
# 0x3d1c
srav $7 $1 $13
# 0x3d20
sltu $26 $3 $10
# 0x3d24
xor $12 $11 $2
# 0x3d28
sllv $2 $30 $31
# 0x3d2c
sb $14 16($0)
# 0x3d30
srlv $1 $25 $13
# 0x3d34
nor $5 $20 $9
# 0x3d38
srl $11 $16 24
# 0x3d3c
lbu $9 26($0)
# 0x3d40
srlv $15 $22 $31
# 0x3d44
srav $3 $5 $15
# 0x3d48
mthi $14
# 0x3d4c
lui $18 0x682b
# 0x3d50
andi $6 $23 0xd8ec
# 0x3d54
lbu $11 13($0)
# 0x3d58
addiu $15 $5 23702
# 0x3d5c
sb $7 11($0)
# 0x3d60
lw $20 4($0)
# 0x3d64
mfhi $16
# 0x3d68
sw $13 60($0)
# 0x3d6c
lh $3 18($0)
# 0x3d70
sub $22 $1 $10
# 0x3d74
lui $27 0x9452
# 0x3d78
sh $10 18($0)
# 0x3d7c
sw $23 24($0)
# 0x3d80
srl $8 $6 3
# 0x3d84
mult $20 $9
# 0x3d88
lw $8 20($0)
# 0x3d8c
add $19 $11 $3
# 0x3d90
srl $9 $31 15
# 0x3d94
sh $3 12($0)
# 0x3d98
mthi $26
# 0x3d9c
addu $13 $9 $14
# 0x3da0
and $1 $5 $2
# 0x3da4
mfhi $11
# 0x3da8
multu $7 $19
# 0x3dac
slti $13 $22 -25353
# 0x3db0
lw $25 60($0)
# 0x3db4
ori $15 $2 0xeaba
# 0x3db8
mult $14 $3
# 0x3dbc
addiu $3 $6 12979
# 0x3dc0
lbu $3 3($0)
# 0x3dc4
multu $9 $26
# 0x3dc8
lhu $30 12($0)
# 0x3dcc
lb $16 12($0)
# 0x3dd0
lh $6 56($0)
# 0x3dd4
sllv $12 $2 $9
# 0x3dd8
lhu $12 24($0)
# 0x3ddc
mthi $21
# 0x3de0
lh $19 62($0)
# 0x3de4
sh $2 16($0)
# 0x3de8
xori $13 $2 0x70d3
# 0x3dec
mult $2 $6
# 0x3df0
slti $2 $22 -8921
# 0x3df4
sllv $27 $22 $7
# 0x3df8
sllv $30 $11 $1
# 0x3dfc
sra $4 $24 21
# 0x3e00
slti $16 $4 21491
# 0x3e04
lb $25 23($0)
# 0x3e08
sll $13 $19 3
# 0x3e0c
lui $22 0xb4e8
# 0x3e10
add $10 $23 $10
# 0x3e14
addiu $21 $2 2441
# 0x3e18
or $11 $21 $7
# 0x3e1c
mfhi $4
# 0x3e20
ori $22 $2 0x2bb0
# 0x3e24
lb $14 23($0)
# 0x3e28
mult $14 $15
# 0x3e2c
ori $11 $10 0x2c01
# 0x3e30
sllv $10 $19 $14
# 0x3e34
lh $26 14($0)
# 0x3e38
nor $10 $27 $20
# 0x3e3c
sb $22 2($0)
# 0x3e40
sub $31 $25 $26
# 0x3e44
lbu $19 2($0)
# 0x3e48
sll $18 $2 31
# 0x3e4c
lbu $19 5($0)
# 0x3e50
srl $1 $24 25
# 0x3e54
lhu $6 4($0)
# 0x3e58
lhu $17 8($0)
# 0x3e5c
srlv $19 $14 $22
# 0x3e60
and $25 $13 $22
# 0x3e64
mtlo $24
# 0x3e68
sw $20 28($0)
# 0x3e6c
lw $21 8($0)
# 0x3e70
slti $18 $26 27829
# 0x3e74
lh $7 0($0)
# 0x3e78
lw $21 108($0)
# 0x3e7c
lw $5 4($0)
# 0x3e80
srav $22 $1 $22
# 0x3e84
sw $16 108($0)
# 0x3e88
sltu $8 $12 $26
# 0x3e8c
srl $19 $20 16
# 0x3e90
nor $3 $16 $1
# 0x3e94
srav $23 $13 $13
# 0x3e98
mfhi $14
# 0x3e9c
srav $12 $12 $31
# 0x3ea0
lw $21 52($0)
# 0x3ea4
srav $16 $11 $14
# 0x3ea8
xori $5 $27 0x652a
# 0x3eac
add $1 $10 $19
# 0x3eb0
lui $9 0x967a
# 0x3eb4
lw $1 20($0)
# 0x3eb8
srlv $16 $10 $16
# 0x3ebc
sb $7 5($0)
# 0x3ec0
mfhi $19
# 0x3ec4
slti $16 $17 4066
# 0x3ec8
lh $30 20($0)
# 0x3ecc
or $14 $19 $23
# 0x3ed0
srlv $14 $9 $25
# 0x3ed4
sb $31 6($0)
# 0x3ed8
lb $13 31($0)
# 0x3edc
srlv $4 $5 $7
# 0x3ee0
lbu $9 9($0)
# 0x3ee4
sb $20 29($0)
# 0x3ee8
sra $19 $18 11
# 0x3eec
mult $14 $25
# 0x3ef0
addi $5 $26 -24251
# 0x3ef4
lw $15 28($0)
# 0x3ef8
xori $16 $22 0x0e46
# 0x3efc
addu $17 $3 $9
# 0x3f00
lbu $27 19($0)
# 0x3f04
mtlo $12
# 0x3f08
and $17 $8 $19
# 0x3f0c
slti $25 $15 -11161
# 0x3f10
nor $27 $3 $1
# 0x3f14
addu $23 $1 $21
# 0x3f18
srav $31 $6 $30
# 0x3f1c
nor $9 $12 $17
# 0x3f20
lhu $27 10($0)
# 0x3f24
sltiu $18 $1 23726
# 0x3f28
sh $30 52($0)
# 0x3f2c
sltiu $12 $23 15113
# 0x3f30
mthi $11
# 0x3f34
lhu $21 4($0)
# 0x3f38
ori $30 $26 0xe967
# 0x3f3c
sltu $13 $27 $6
# 0x3f40
lh $14 30($0)
# 0x3f44
sh $30 38($0)
# 0x3f48
multu $1 $10
# 0x3f4c
xor $2 $26 $13
# 0x3f50
xor $9 $5 $20
# 0x3f54
sh $24 12($0)
# 0x3f58
addiu $15 $26 7006
# 0x3f5c
srl $11 $1 28
# 0x3f60
add $7 $21 $4
# 0x3f64
slt $19 $6 $16
# 0x3f68
addu $21 $11 $25
# 0x3f6c
mflo $13
# 0x3f70
subu $11 $7 $2
# 0x3f74
subu $9 $11 $10
# 0x3f78
addi $2 $16 12597
# 0x3f7c
mfhi $31
# 0x3f80
mtlo $9
# 0x3f84
lh $21 26($0)
# 0x3f88
mult $26 $15
# 0x3f8c
subu $5 $3 $17
# 0x3f90
lh $4 8($0)
# 0x3f94
lbu $25 30($0)
# 0x3f98
lbu $14 31($0)
# 0x3f9c
sra $10 $23 22
# 0x3fa0
lh $3 4($0)

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop