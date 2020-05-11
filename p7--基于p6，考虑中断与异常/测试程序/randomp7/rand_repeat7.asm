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
subu $3 $27 $14
# 0x3008
lb $15 7($0)
# 0x300c
mflo $2
# 0x3010
sll $3 $24 9
# 0x3014
lui $30 0xaf07
# 0x3018
sra $4 $15 13
# 0x301c
lb $10 12($0)
# 0x3020
add $14 $5 $25
# 0x3024
xori $1 $25 0x19d4
# 0x3028
sra $8 $13 30
# 0x302c
addu $16 $18 $30
# 0x3030
slti $12 $2 -30332
# 0x3034
slt $15 $15 $23
# 0x3038
sw $1 68($0)
# 0x303c
srlv $8 $21 $5
# 0x3040
lh $5 30($0)
# 0x3044
sltu $7 $25 $16
# 0x3048
lh $11 2($0)
# 0x304c
xori $3 $27 0x0c84
# 0x3050
mult $10 $13
# 0x3054
add $27 $12 $14
# 0x3058
slti $7 $19 15930
# 0x305c
sh $15 16($0)
# 0x3060
mflo $1
# 0x3064
addiu $26 $13 21996
# 0x3068
lhu $25 16($0)
# 0x306c
subu $31 $26 $25
# 0x3070
add $8 $11 $30
# 0x3074
addiu $20 $24 1688
# 0x3078
lb $27 6($0)
# 0x307c
sh $19 6($0)
# 0x3080
mthi $19
# 0x3084
addiu $30 $6 12811
# 0x3088
sltu $12 $11 $23
# 0x308c
srl $16 $7 7
# 0x3090
addiu $30 $31 27324
# 0x3094
addu $2 $1 $26
# 0x3098
lui $15 0xf30f
# 0x309c
sll $9 $21 15
# 0x30a0
mthi $16
# 0x30a4
slti $26 $2 -25770
# 0x30a8
mult $10 $24
# 0x30ac
addu $12 $9 $3
# 0x30b0
mtlo $3
# 0x30b4
sra $9 $2 19
# 0x30b8
and $3 $6 $10
# 0x30bc
sw $6 36($0)
# 0x30c0
addu $12 $19 $5
# 0x30c4
sll $23 $12 18
# 0x30c8
add $31 $5 $30
# 0x30cc
slt $8 $1 $8
# 0x30d0
addi $12 $27 20296
# 0x30d4
lui $1 0x5826
# 0x30d8
andi $26 $26 0xaf35
# 0x30dc
or $15 $19 $22
# 0x30e0
addi $22 $12 -10047
# 0x30e4
lh $31 8($0)
# 0x30e8
lh $9 4($0)
# 0x30ec
srl $4 $3 2
# 0x30f0
and $26 $19 $3
# 0x30f4
and $10 $5 $1
# 0x30f8
addu $4 $18 $21
# 0x30fc
addiu $31 $27 22949
# 0x3100
srav $10 $24 $6
# 0x3104
lui $16 0x2d73
# 0x3108
multu $21 $1
# 0x310c
lw $21 52($0)
# 0x3110
lui $14 0xc875
# 0x3114
lhu $1 4($0)
# 0x3118
lw $1 8($0)
# 0x311c
mtlo $18
# 0x3120
sub $4 $30 $1
# 0x3124
sw $15 48($0)
# 0x3128
addu $4 $2 $16
# 0x312c
addiu $7 $7 5902
# 0x3130
lh $6 10($0)
# 0x3134
nor $13 $30 $30
# 0x3138
slt $15 $24 $10
# 0x313c
sw $31 112($0)
# 0x3140
lhu $7 8($0)
# 0x3144
mthi $2
# 0x3148
xori $30 $6 0x2165
# 0x314c
subu $12 $10 $31
# 0x3150
sh $27 18($0)
# 0x3154
addu $1 $14 $4
# 0x3158
sb $13 6($0)
# 0x315c
sw $17 36($0)
# 0x3160
xor $7 $12 $25
# 0x3164
slt $19 $10 $18
# 0x3168
sw $23 116($0)
# 0x316c
slti $12 $20 5898
# 0x3170
srl $1 $13 27
# 0x3174
addu $11 $11 $10
# 0x3178
and $1 $11 $15
# 0x317c
add $18 $6 $21
# 0x3180
addu $11 $13 $8
# 0x3184
lhu $18 2($0)
# 0x3188
and $2 $13 $7
# 0x318c
sh $15 54($0)
# 0x3190
srlv $18 $30 $31
# 0x3194
sltu $18 $24 $14
# 0x3198
addiu $6 $12 26081
# 0x319c
sw $13 8($0)
# 0x31a0
srav $1 $19 $17
# 0x31a4
or $24 $23 $13
# 0x31a8
lhu $12 4($0)
# 0x31ac
mflo $14
# 0x31b0
lw $21 112($0)
# 0x31b4
sllv $21 $24 $17
# 0x31b8
sub $21 $17 $8
# 0x31bc
sh $11 58($0)
# 0x31c0
sltiu $26 $14 32433
# 0x31c4
mtlo $17
# 0x31c8
lbu $19 7($0)
# 0x31cc
lw $9 12($0)
# 0x31d0
sh $12 22($0)
# 0x31d4
addu $8 $19 $13
# 0x31d8
lh $3 28($0)
# 0x31dc
sh $16 10($0)
# 0x31e0
xor $8 $2 $1
# 0x31e4
lui $14 0x60bc
# 0x31e8
lh $16 10($0)
# 0x31ec
xor $25 $1 $1
# 0x31f0
mflo $6
# 0x31f4
lh $20 12($0)
# 0x31f8
lh $18 48($0)
# 0x31fc
sltiu $19 $2 23255
# 0x3200
lw $16 104($0)
# 0x3204
lh $24 4($0)
# 0x3208
xor $5 $3 $9
# 0x320c
sltiu $25 $25 27510
# 0x3210
sw $21 120($0)
# 0x3214
lw $14 8($0)
# 0x3218
and $14 $13 $12
# 0x321c
slti $4 $20 17413
# 0x3220
mtlo $19
# 0x3224
sh $9 2($0)
# 0x3228
lbu $16 19($0)
# 0x322c
mthi $27
# 0x3230
xori $10 $21 0xa972
# 0x3234
sltu $18 $12 $9
# 0x3238
slt $25 $14 $12
# 0x323c
sw $10 28($0)
# 0x3240
addiu $4 $23 16357
# 0x3244
andi $4 $20 0x30ce
# 0x3248
sltu $5 $26 $31
# 0x324c
srlv $1 $12 $21
# 0x3250
lui $6 0xc233
# 0x3254
lhu $26 4($0)
# 0x3258
sub $25 $27 $14
# 0x325c
lhu $30 20($0)
# 0x3260
nor $31 $3 $6
# 0x3264
mthi $30
# 0x3268
lb $8 10($0)
# 0x326c
srav $14 $17 $12
# 0x3270
mflo $14
# 0x3274
mfhi $24
# 0x3278
mtlo $9
# 0x327c
lh $18 6($0)
# 0x3280
and $31 $18 $25
# 0x3284
or $13 $10 $23
# 0x3288
addu $22 $31 $9
# 0x328c
sll $7 $19 30
# 0x3290
mflo $23
# 0x3294
lb $18 7($0)
# 0x3298
sllv $7 $13 $6
# 0x329c
sll $18 $3 19
# 0x32a0
add $27 $4 $3
# 0x32a4
multu $13 $17
# 0x32a8
lhu $7 4($0)
# 0x32ac
slt $21 $22 $3
# 0x32b0
or $31 $25 $1
# 0x32b4
mfhi $27
# 0x32b8
lh $17 0($0)
# 0x32bc
xor $13 $11 $26
# 0x32c0
sw $19 48($0)
# 0x32c4
slti $3 $5 24099
# 0x32c8
lh $31 20($0)
# 0x32cc
subu $23 $6 $17
# 0x32d0
and $5 $11 $19
# 0x32d4
and $3 $14 $7
# 0x32d8
multu $10 $5
# 0x32dc
srl $27 $19 0
# 0x32e0
sb $17 20($0)
# 0x32e4
srav $27 $10 $15
# 0x32e8
sw $4 80($0)
# 0x32ec
lhu $20 24($0)
# 0x32f0
sub $25 $1 $3
# 0x32f4
srlv $20 $31 $23
# 0x32f8
sh $30 30($0)
# 0x32fc
lui $21 0xe0a6
# 0x3300
sh $5 4($0)
# 0x3304
mult $6 $13
# 0x3308
sw $31 12($0)
# 0x330c
mthi $6
# 0x3310
lbu $18 18($0)
# 0x3314
slti $5 $25 25690
# 0x3318
nor $10 $12 $20
# 0x331c
sll $18 $24 26
# 0x3320
sltiu $1 $8 14863
# 0x3324
slti $17 $17 30119
# 0x3328
multu $20 $8
# 0x332c
subu $14 $27 $14
# 0x3330
lh $31 16($0)
# 0x3334
lbu $22 18($0)
# 0x3338
sllv $2 $13 $23
# 0x333c
mflo $22
# 0x3340
nor $30 $9 $19
# 0x3344
lw $15 24($0)
# 0x3348
ori $16 $17 0xb19f
# 0x334c
sllv $15 $6 $2
# 0x3350
mthi $23
# 0x3354
lw $13 4($0)
# 0x3358
lhu $9 20($0)
# 0x335c
sltiu $31 $2 11055
# 0x3360
or $23 $2 $7
# 0x3364
srav $24 $23 $12
# 0x3368
lui $22 0x7b15
# 0x336c
mflo $9
# 0x3370
add $10 $10 $11
# 0x3374
xori $21 $30 0x76c3
# 0x3378
srav $9 $7 $2
# 0x337c
srav $7 $11 $20
# 0x3380
xori $13 $5 0x0bfa
# 0x3384
sw $1 8($0)
# 0x3388
lw $13 28($0)
# 0x338c
sllv $9 $27 $26
# 0x3390
lhu $18 12($0)
# 0x3394
lh $31 12($0)
# 0x3398
sw $16 16($0)
# 0x339c
srl $7 $5 30
# 0x33a0
sll $22 $2 6
# 0x33a4
mfhi $7
# 0x33a8
mfhi $14
# 0x33ac
multu $22 $1
# 0x33b0
mthi $19
# 0x33b4
addi $6 $1 -12596
# 0x33b8
mthi $9
# 0x33bc
xor $21 $18 $7
# 0x33c0
lb $13 30($0)
# 0x33c4
addi $31 $4 6557
# 0x33c8
mult $31 $13
# 0x33cc
lb $16 6($0)
# 0x33d0
addi $30 $31 31615
# 0x33d4
lw $16 16($0)
# 0x33d8
mflo $21
# 0x33dc
lh $22 36($0)
# 0x33e0
mult $15 $25
# 0x33e4
lw $10 8($0)
# 0x33e8
xori $18 $15 0x4867
# 0x33ec
mthi $23
# 0x33f0
sltiu $4 $5 11453
# 0x33f4
multu $2 $25
# 0x33f8
xor $27 $20 $11
# 0x33fc
lhu $10 12($0)
# 0x3400
sub $30 $12 $3
# 0x3404
lh $2 2($0)
# 0x3408
multu $20 $19
# 0x340c
nor $18 $18 $9
# 0x3410
nor $7 $16 $26
# 0x3414
srlv $16 $22 $12
# 0x3418
slti $2 $16 29901
# 0x341c
add $16 $4 $17
# 0x3420
addiu $2 $16 1327
# 0x3424
andi $3 $1 0x9e9d
# 0x3428
lw $16 28($0)
# 0x342c
mtlo $23
# 0x3430
sll $2 $6 29
# 0x3434
or $26 $23 $4
# 0x3438
nor $22 $6 $4
# 0x343c
sb $8 14($0)
# 0x3440
mult $15 $9
# 0x3444
and $8 $14 $6
# 0x3448
addiu $14 $14 9756
# 0x344c
srl $8 $22 25
# 0x3450
andi $27 $1 0xc56f
# 0x3454
sh $9 54($0)
# 0x3458
subu $20 $6 $7
# 0x345c
addiu $11 $31 19699
# 0x3460
sll $4 $2 30
# 0x3464
sw $27 16($0)
# 0x3468
sltiu $18 $11 10588
# 0x346c
xori $10 $19 0x338b
# 0x3470
slti $27 $8 -8914
# 0x3474
sw $6 24($0)
# 0x3478
addu $17 $2 $30
# 0x347c
sh $6 16($0)
# 0x3480
mtlo $16
# 0x3484
and $24 $24 $22
# 0x3488
multu $15 $8
# 0x348c
mult $22 $2
# 0x3490
lh $5 36($0)
# 0x3494
mfhi $1
# 0x3498
addi $21 $19 3388
# 0x349c
subu $10 $9 $10
# 0x34a0
or $7 $5 $6
# 0x34a4
srlv $16 $24 $13
# 0x34a8
lb $17 30($0)
# 0x34ac
andi $1 $24 0xb253
# 0x34b0
mult $24 $30
# 0x34b4
lw $23 108($0)
# 0x34b8
lh $31 10($0)
# 0x34bc
and $9 $14 $25
# 0x34c0
sra $13 $13 8
# 0x34c4
lh $22 58($0)
# 0x34c8
slt $9 $25 $24
# 0x34cc
multu $12 $3
# 0x34d0
lui $14 0x4fbe
# 0x34d4
srl $14 $22 8
# 0x34d8
lui $27 0x5011
# 0x34dc
add $26 $4 $26
# 0x34e0
srl $11 $25 6
# 0x34e4
slt $23 $10 $19
# 0x34e8
sltiu $14 $26 15665
# 0x34ec
sw $20 32($0)
# 0x34f0
sh $9 8($0)
# 0x34f4
srav $18 $25 $14
# 0x34f8
sw $2 28($0)
# 0x34fc
mthi $5
# 0x3500
slt $20 $25 $7
# 0x3504
xori $17 $26 0x3aa8
# 0x3508
sb $9 2($0)
# 0x350c
sh $12 54($0)
# 0x3510
mfhi $16
# 0x3514
sw $14 24($0)
# 0x3518
nor $25 $3 $24
# 0x351c
sllv $2 $1 $23
# 0x3520
mtlo $15
# 0x3524
addu $23 $17 $8
# 0x3528
xori $27 $2 0x3c1e
# 0x352c
mfhi $4
# 0x3530
sllv $15 $18 $16
# 0x3534
lh $14 14($0)
# 0x3538
and $20 $11 $2
# 0x353c
lhu $9 8($0)
# 0x3540
subu $18 $27 $12
# 0x3544
and $9 $1 $5
# 0x3548
sh $4 14($0)
# 0x354c
addu $22 $31 $19
# 0x3550
addiu $1 $3 12599
# 0x3554
andi $10 $13 0x4a94
# 0x3558
lui $13 0x3064
# 0x355c
sw $4 16($0)
# 0x3560
sllv $17 $17 $12
# 0x3564
sh $4 10($0)
# 0x3568
srl $4 $15 4
# 0x356c
srav $25 $2 $10
# 0x3570
lhu $10 4($0)
# 0x3574
sllv $15 $22 $11
# 0x3578
lhu $2 16($0)
# 0x357c
sllv $24 $7 $27
# 0x3580
lw $5 28($0)
# 0x3584
slti $7 $27 -11633
# 0x3588
lb $11 13($0)
# 0x358c
mfhi $21
# 0x3590
lw $13 20($0)
# 0x3594
addiu $26 $4 3656
# 0x3598
sll $12 $7 21
# 0x359c
sltiu $1 $16 8853
# 0x35a0
ori $27 $12 0x9615
# 0x35a4
mfhi $27
# 0x35a8
mflo $17
# 0x35ac
xor $19 $16 $24
# 0x35b0
sh $12 6($0)
# 0x35b4
or $2 $21 $4
# 0x35b8
addi $18 $9 27046
# 0x35bc
sh $15 18($0)
# 0x35c0
ori $19 $14 0x25b4
# 0x35c4
lh $27 4($0)
# 0x35c8
sw $13 100($0)
# 0x35cc
slti $17 $12 22783
# 0x35d0
or $10 $26 $15
# 0x35d4
lui $27 0x2bc4
# 0x35d8
mtlo $7
# 0x35dc
mthi $3
# 0x35e0
srlv $6 $19 $1
# 0x35e4
sltiu $15 $15 5806
# 0x35e8
slt $27 $8 $15
# 0x35ec
add $14 $15 $27
# 0x35f0
slt $20 $3 $12
# 0x35f4
xori $6 $19 0x368b
# 0x35f8
sltiu $31 $10 27429
# 0x35fc
sltiu $8 $20 26218
# 0x3600
mult $14 $9
# 0x3604
add $11 $22 $16
# 0x3608
sll $14 $3 22
# 0x360c
andi $12 $14 0xcac2
# 0x3610
sltiu $23 $23 5071
# 0x3614
xori $22 $17 0xecb3
# 0x3618
mfhi $12
# 0x361c
or $11 $23 $4
# 0x3620
mflo $21
# 0x3624
sw $26 16($0)
# 0x3628
multu $16 $7
# 0x362c
addu $3 $21 $9
# 0x3630
mthi $27
# 0x3634
multu $24 $2
# 0x3638
sltiu $3 $1 27370
# 0x363c
sub $20 $9 $18
# 0x3640
lbu $16 20($0)
# 0x3644
add $3 $25 $16
# 0x3648
sra $25 $31 2
# 0x364c
sllv $4 $4 $9
# 0x3650
xor $1 $10 $30
# 0x3654
ori $27 $18 0x5b2e
# 0x3658
mflo $31
# 0x365c
mult $14 $5
# 0x3660
mflo $24
# 0x3664
lhu $4 2($0)
# 0x3668
lw $16 28($0)
# 0x366c
lw $11 28($0)
# 0x3670
lh $10 6($0)
# 0x3674
sllv $17 $15 $19
# 0x3678
lui $9 0x24ca
# 0x367c
sh $22 8($0)
# 0x3680
lh $20 30($0)
# 0x3684
mtlo $15
# 0x3688
addi $15 $14 23716
# 0x368c
srl $16 $5 22
# 0x3690
sh $31 0($0)
# 0x3694
lb $22 27($0)
# 0x3698
srlv $27 $9 $9
# 0x369c
lui $26 0x5b12
# 0x36a0
xor $9 $20 $9
# 0x36a4
or $4 $10 $15
# 0x36a8
mfhi $27
# 0x36ac
sb $24 13($0)
# 0x36b0
addu $27 $13 $5
# 0x36b4
lw $5 72($0)
# 0x36b8
sll $18 $14 27
# 0x36bc
srav $4 $3 $16
# 0x36c0
lbu $22 7($0)
# 0x36c4
or $23 $30 $18
# 0x36c8
sh $13 16($0)
# 0x36cc
addu $6 $23 $22
# 0x36d0
mflo $18
# 0x36d4
sb $11 0($0)
# 0x36d8
sra $27 $6 24
# 0x36dc
srl $4 $10 15
# 0x36e0
sh $19 32($0)
# 0x36e4
andi $12 $17 0xabca
# 0x36e8
xori $13 $7 0x8c6e
# 0x36ec
subu $20 $7 $8
# 0x36f0
add $2 $25 $8
# 0x36f4
mfhi $31
# 0x36f8
lh $22 32($0)
# 0x36fc
mtlo $8
# 0x3700
and $3 $1 $7
# 0x3704
lw $16 68($0)
# 0x3708
add $9 $23 $7
# 0x370c
subu $8 $11 $18
# 0x3710
srl $24 $1 1
# 0x3714
sh $20 24($0)
# 0x3718
sw $25 20($0)
# 0x371c
slti $19 $25 32017
# 0x3720
mtlo $21
# 0x3724
lhu $1 30($0)
# 0x3728
mtlo $9
# 0x372c
sllv $26 $18 $21
# 0x3730
srav $13 $6 $2
# 0x3734
nor $27 $4 $8
# 0x3738
sw $20 16($0)
# 0x373c
nor $14 $30 $30
# 0x3740
lui $24 0xfb52
# 0x3744
nor $20 $31 $9
# 0x3748
lhu $12 26($0)
# 0x374c
lb $12 24($0)
# 0x3750
addiu $24 $10 15851
# 0x3754
sub $9 $24 $19
# 0x3758
addiu $10 $17 29469
# 0x375c
srav $7 $20 $22
# 0x3760
xori $26 $3 0x243d
# 0x3764
srl $10 $27 22
# 0x3768
mfhi $30
# 0x376c
mult $25 $18
# 0x3770
addi $19 $6 -2965
# 0x3774
srlv $7 $20 $3
# 0x3778
addu $13 $8 $10
# 0x377c
mult $15 $2
# 0x3780
addiu $14 $25 4974
# 0x3784
sll $20 $7 12
# 0x3788
multu $11 $26
# 0x378c
lh $7 20($0)
# 0x3790
mfhi $31
# 0x3794
addi $20 $3 -24080
# 0x3798
lbu $21 30($0)
# 0x379c
lb $8 7($0)
# 0x37a0
mflo $4
# 0x37a4
addu $2 $23 $30
# 0x37a8
addi $26 $1 20321
# 0x37ac
andi $17 $22 0xc696
# 0x37b0
xor $31 $21 $18
# 0x37b4
andi $8 $3 0xc3e3
# 0x37b8
lw $21 12($0)
# 0x37bc
sw $27 76($0)
# 0x37c0
lui $24 0x9938
# 0x37c4
srlv $8 $6 $20
# 0x37c8
sh $17 18($0)
# 0x37cc
sltiu $26 $24 27413
# 0x37d0
mfhi $11
# 0x37d4
addu $23 $5 $22
# 0x37d8
sllv $7 $7 $16
# 0x37dc
sw $20 24($0)
# 0x37e0
sb $10 20($0)
# 0x37e4
sltu $22 $4 $10
# 0x37e8
ori $17 $12 0x6a3b
# 0x37ec
mfhi $14
# 0x37f0
sltiu $8 $18 3609
# 0x37f4
and $6 $9 $19
# 0x37f8
slti $6 $8 -31536
# 0x37fc
slti $27 $2 -22799
# 0x3800
xor $11 $14 $24
# 0x3804
sltiu $7 $19 24477
# 0x3808
mtlo $27
# 0x380c
xori $22 $14 0xc32a
# 0x3810
or $14 $4 $7
# 0x3814
srav $11 $8 $12
# 0x3818
srav $23 $12 $27
# 0x381c
addiu $20 $21 31609
# 0x3820
slti $24 $17 7537
# 0x3824
ori $13 $1 0x78bd
# 0x3828
sw $1 24($0)
# 0x382c
mtlo $20
# 0x3830
multu $22 $15
# 0x3834
lh $9 20($0)
# 0x3838
lb $15 12($0)
# 0x383c
mult $22 $10
# 0x3840
lh $23 4($0)
# 0x3844
sh $11 54($0)
# 0x3848
add $20 $7 $12
# 0x384c
mtlo $11
# 0x3850
sltu $5 $30 $23
# 0x3854
lh $19 60($0)
# 0x3858
lh $27 6($0)
# 0x385c
sh $4 10($0)
# 0x3860
sllv $6 $14 $27
# 0x3864
lw $30 8($0)
# 0x3868
lh $10 18($0)
# 0x386c
lh $16 12($0)
# 0x3870
ori $5 $13 0x0d6f
# 0x3874
addiu $24 $22 17123
# 0x3878
sub $5 $19 $9
# 0x387c
mfhi $31
# 0x3880
sh $25 22($0)
# 0x3884
xori $3 $23 0x3f6a
# 0x3888
sw $22 4($0)
# 0x388c
sllv $6 $12 $22
# 0x3890
srl $20 $2 6
# 0x3894
lh $1 50($0)
# 0x3898
mult $18 $23
# 0x389c
lb $27 18($0)
# 0x38a0
xori $10 $30 0xbde3
# 0x38a4
sw $14 8($0)
# 0x38a8
or $7 $16 $4
# 0x38ac
sh $8 54($0)
# 0x38b0
lw $3 28($0)
# 0x38b4
lw $18 28($0)
# 0x38b8
sllv $11 $23 $11
# 0x38bc
xor $21 $7 $24
# 0x38c0
sltu $7 $16 $31
# 0x38c4
mflo $4
# 0x38c8
sllv $17 $19 $20
# 0x38cc
multu $23 $27
# 0x38d0
xori $2 $3 0x8580
# 0x38d4
addiu $23 $6 14291
# 0x38d8
sh $20 30($0)
# 0x38dc
sw $31 8($0)
# 0x38e0
mflo $26
# 0x38e4
sra $11 $4 15
# 0x38e8
sb $27 14($0)
# 0x38ec
sub $22 $2 $20
# 0x38f0
sw $17 0($0)
# 0x38f4
sb $21 12($0)
# 0x38f8
sh $31 14($0)
# 0x38fc
sh $22 26($0)
# 0x3900
sll $8 $6 4
# 0x3904
sh $12 24($0)
# 0x3908
sllv $2 $23 $6
# 0x390c
sltu $20 $12 $2
# 0x3910
sb $25 15($0)
# 0x3914
addi $3 $10 -19975
# 0x3918
lw $10 0($0)
# 0x391c
mult $10 $16
# 0x3920
nor $8 $21 $7
# 0x3924
and $26 $15 $2
# 0x3928
sll $30 $25 28
# 0x392c
srav $25 $7 $20
# 0x3930
nor $18 $21 $9
# 0x3934
srlv $12 $4 $14
# 0x3938
subu $25 $20 $4
# 0x393c
or $14 $13 $30
# 0x3940
sltu $1 $2 $8
# 0x3944
lh $21 32($0)
# 0x3948
sll $24 $27 23
# 0x394c
sltu $11 $5 $10
# 0x3950
sll $16 $10 30
# 0x3954
mthi $1
# 0x3958
sw $14 68($0)
# 0x395c
subu $21 $23 $3
# 0x3960
mflo $9
# 0x3964
srl $16 $19 26
# 0x3968
lw $24 0($0)
# 0x396c
sh $6 10($0)
# 0x3970
lui $23 0xb5fc
# 0x3974
sub $30 $22 $3
# 0x3978
srlv $20 $17 $10
# 0x397c
sltu $15 $25 $5
# 0x3980
sh $14 8($0)
# 0x3984
sra $5 $14 18
# 0x3988
srlv $1 $9 $11
# 0x398c
lw $5 28($0)
# 0x3990
mflo $21
# 0x3994
sh $12 42($0)
# 0x3998
multu $4 $6
# 0x399c
and $25 $26 $18
# 0x39a0
or $1 $22 $19
# 0x39a4
xori $25 $16 0xd20b
# 0x39a8
addi $7 $13 21255
# 0x39ac
sltu $8 $24 $26
# 0x39b0
add $10 $26 $23
# 0x39b4
addi $26 $26 27513
# 0x39b8
addi $24 $23 24790
# 0x39bc
addi $24 $15 8379
# 0x39c0
srlv $8 $2 $26
# 0x39c4
addi $6 $6 -31956
# 0x39c8
addi $10 $1 -768
# 0x39cc
lh $26 18($0)
# 0x39d0
mflo $11
# 0x39d4
andi $14 $31 0xc349
# 0x39d8
subu $5 $30 $7
# 0x39dc
sw $25 16($0)
# 0x39e0
lh $24 8($0)
# 0x39e4
multu $23 $31
# 0x39e8
addi $7 $6 -13647
# 0x39ec
sh $18 44($0)
# 0x39f0
lb $11 1($0)
# 0x39f4
slt $8 $2 $12
# 0x39f8
sll $8 $31 22
# 0x39fc
sw $10 16($0)
# 0x3a00
sh $2 30($0)
# 0x3a04
sra $3 $10 10
# 0x3a08
lhu $16 10($0)
# 0x3a0c
xor $26 $16 $18
# 0x3a10
mfhi $11
# 0x3a14
ori $9 $17 0x0cb5
# 0x3a18
mult $25 $25
# 0x3a1c
lh $9 28($0)
# 0x3a20
srl $22 $19 26
# 0x3a24
lh $18 22($0)
# 0x3a28
ori $21 $16 0xf681
# 0x3a2c
mthi $5
# 0x3a30
sw $10 16($0)
# 0x3a34
lh $6 18($0)
# 0x3a38
sh $22 6($0)
# 0x3a3c
andi $3 $26 0xf1b3
# 0x3a40
sll $19 $15 12
# 0x3a44
sb $17 30($0)
# 0x3a48
multu $6 $9
# 0x3a4c
mflo $26
# 0x3a50
lbu $7 18($0)
# 0x3a54
slt $11 $11 $17
# 0x3a58
ori $2 $13 0x6a53
# 0x3a5c
ori $30 $19 0xa957
# 0x3a60
slt $2 $23 $23
# 0x3a64
mthi $4
# 0x3a68
multu $15 $7
# 0x3a6c
slt $14 $18 $6
# 0x3a70
lw $2 12($0)
# 0x3a74
lh $3 32($0)
# 0x3a78
mthi $31
# 0x3a7c
srlv $1 $5 $15
# 0x3a80
sltiu $26 $27 7040
# 0x3a84
subu $19 $4 $14
# 0x3a88
lbu $27 22($0)
# 0x3a8c
lh $27 46($0)
# 0x3a90
lw $9 4($0)
# 0x3a94
sltu $26 $16 $12
# 0x3a98
xori $21 $31 0xe067
# 0x3a9c
lw $31 84($0)
# 0x3aa0
sh $27 28($0)
# 0x3aa4
sra $27 $3 27
# 0x3aa8
slt $14 $17 $26
# 0x3aac
mthi $8
# 0x3ab0
lb $30 14($0)
# 0x3ab4
andi $4 $9 0xe220
# 0x3ab8
lw $31 72($0)
# 0x3abc
sub $26 $4 $26
# 0x3ac0
mult $20 $21
# 0x3ac4
mult $16 $20
# 0x3ac8
sw $21 64($0)
# 0x3acc
sw $3 36($0)
# 0x3ad0
lw $5 16($0)
# 0x3ad4
add $10 $17 $12
# 0x3ad8
lw $20 4($0)
# 0x3adc
sll $4 $21 4
# 0x3ae0
lh $10 12($0)
# 0x3ae4
add $9 $4 $21
# 0x3ae8
mthi $31
# 0x3aec
or $8 $11 $13
# 0x3af0
ori $30 $14 0xb8d6
# 0x3af4
xor $16 $12 $1
# 0x3af8
mthi $12
# 0x3afc
and $4 $10 $20
# 0x3b00
sltu $25 $19 $24
# 0x3b04
addiu $24 $30 12179
# 0x3b08
addiu $4 $16 88
# 0x3b0c
mtlo $16
# 0x3b10
lw $4 8($0)
# 0x3b14
multu $21 $14
# 0x3b18
addiu $27 $19 29299
# 0x3b1c
andi $18 $17 0x074c
# 0x3b20
andi $5 $19 0xcb2a
# 0x3b24
srav $13 $5 $19
# 0x3b28
multu $26 $19
# 0x3b2c
lui $4 0x6dfe
# 0x3b30
mflo $8
# 0x3b34
mflo $14
# 0x3b38
mthi $21
# 0x3b3c
mflo $10
# 0x3b40
add $8 $9 $12
# 0x3b44
mfhi $3
# 0x3b48
sb $7 2($0)
# 0x3b4c
lb $17 15($0)
# 0x3b50
slti $30 $27 20582
# 0x3b54
multu $24 $18
# 0x3b58
multu $14 $30
# 0x3b5c
lh $2 56($0)
# 0x3b60
andi $8 $14 0xa1a3
# 0x3b64
lh $23 28($0)
# 0x3b68
addiu $4 $17 12258
# 0x3b6c
sllv $12 $21 $17
# 0x3b70
mfhi $25
# 0x3b74
and $24 $12 $3
# 0x3b78
sh $11 0($0)
# 0x3b7c
addi $14 $12 -22550
# 0x3b80
lbu $21 29($0)
# 0x3b84
lh $12 60($0)
# 0x3b88
sw $8 16($0)
# 0x3b8c
add $30 $22 $4
# 0x3b90
slt $9 $6 $2
# 0x3b94
sll $19 $2 22
# 0x3b98
srl $1 $2 13
# 0x3b9c
srl $1 $9 1
# 0x3ba0
lw $27 4($0)
# 0x3ba4
nor $15 $7 $3
# 0x3ba8
sw $27 108($0)
# 0x3bac
addi $7 $7 18297
# 0x3bb0
lh $16 20($0)
# 0x3bb4
mthi $24
# 0x3bb8
slt $16 $27 $22
# 0x3bbc
xor $1 $1 $15
# 0x3bc0
lh $27 16($0)
# 0x3bc4
srav $5 $30 $6
# 0x3bc8
mtlo $6
# 0x3bcc
mthi $19
# 0x3bd0
sw $10 60($0)
# 0x3bd4
ori $10 $22 0x8dac
# 0x3bd8
sh $2 6($0)
# 0x3bdc
lb $15 11($0)
# 0x3be0
sltu $4 $18 $27
# 0x3be4
srav $26 $4 $11
# 0x3be8
add $15 $8 $23
# 0x3bec
lw $14 4($0)
# 0x3bf0
nor $1 $1 $21
# 0x3bf4
sltu $17 $24 $8
# 0x3bf8
mthi $25
# 0x3bfc
add $14 $15 $16
# 0x3c00
mtlo $18
# 0x3c04
sw $21 104($0)
# 0x3c08
sw $10 96($0)
# 0x3c0c
subu $26 $11 $4
# 0x3c10
lb $8 1($0)
# 0x3c14
sb $6 9($0)
# 0x3c18
lw $25 4($0)
# 0x3c1c
and $15 $17 $30
# 0x3c20
xori $18 $8 0xb900
# 0x3c24
lh $26 8($0)
# 0x3c28
lbu $30 3($0)
# 0x3c2c
sh $12 10($0)
# 0x3c30
mult $18 $12
# 0x3c34
mflo $11
# 0x3c38
lh $11 60($0)
# 0x3c3c
mtlo $19
# 0x3c40
nor $26 $12 $14
# 0x3c44
sh $6 2($0)
# 0x3c48
ori $14 $20 0xea08
# 0x3c4c
lh $22 0($0)
# 0x3c50
lh $4 24($0)
# 0x3c54
add $27 $2 $27
# 0x3c58
sh $12 14($0)
# 0x3c5c
slt $14 $16 $26
# 0x3c60
lbu $6 18($0)
# 0x3c64
sb $16 30($0)
# 0x3c68
mfhi $9
# 0x3c6c
srlv $27 $15 $12
# 0x3c70
and $6 $20 $11
# 0x3c74
lui $24 0x2383
# 0x3c78
srlv $30 $3 $15
# 0x3c7c
srav $8 $20 $23
# 0x3c80
lbu $1 23($0)
# 0x3c84
sb $20 13($0)
# 0x3c88
mfhi $11
# 0x3c8c
nor $1 $8 $30
# 0x3c90
or $25 $6 $24
# 0x3c94
sltiu $12 $16 719
# 0x3c98
xor $12 $9 $30
# 0x3c9c
or $23 $2 $5
# 0x3ca0
sll $22 $8 15
# 0x3ca4
sw $9 44($0)
# 0x3ca8
mthi $19
# 0x3cac
mfhi $4
# 0x3cb0
lh $17 16($0)
# 0x3cb4
lbu $13 14($0)
# 0x3cb8
multu $7 $19
# 0x3cbc
sub $13 $13 $23
# 0x3cc0
mtlo $3
# 0x3cc4
sb $16 0($0)
# 0x3cc8
mult $3 $9
# 0x3ccc
mult $24 $15
# 0x3cd0
xor $19 $22 $8
# 0x3cd4
xor $20 $13 $13
# 0x3cd8
slt $5 $3 $19
# 0x3cdc
sra $11 $17 22
# 0x3ce0
sw $11 8($0)
# 0x3ce4
lb $5 24($0)
# 0x3ce8
sw $4 44($0)
# 0x3cec
lui $22 0xbc76
# 0x3cf0
lui $13 0x1a7e
# 0x3cf4
mthi $4
# 0x3cf8
sub $1 $3 $19
# 0x3cfc
sllv $7 $12 $10
# 0x3d00
addiu $31 $16 13913
# 0x3d04
xor $15 $6 $14
# 0x3d08
addu $31 $14 $15
# 0x3d0c
srl $25 $3 1
# 0x3d10
multu $5 $22
# 0x3d14
mult $31 $27
# 0x3d18
sltu $10 $26 $31
# 0x3d1c
lui $1 0x79a9
# 0x3d20
sw $6 20($0)
# 0x3d24
lb $3 7($0)
# 0x3d28
multu $20 $9
# 0x3d2c
mfhi $10
# 0x3d30
nor $1 $26 $8
# 0x3d34
or $1 $17 $31
# 0x3d38
srav $20 $3 $2
# 0x3d3c
lbu $31 8($0)
# 0x3d40
lbu $10 18($0)
# 0x3d44
addu $15 $25 $9
# 0x3d48
add $5 $17 $20
# 0x3d4c
mfhi $8
# 0x3d50
addiu $17 $31 533
# 0x3d54
mflo $7
# 0x3d58
mthi $25
# 0x3d5c
lh $25 2($0)
# 0x3d60
subu $18 $11 $12
# 0x3d64
add $17 $15 $17
# 0x3d68
add $2 $8 $10
# 0x3d6c
sw $10 20($0)
# 0x3d70
slti $22 $3 22663
# 0x3d74
mtlo $16
# 0x3d78
lbu $26 28($0)
# 0x3d7c
lh $4 2($0)
# 0x3d80
ori $13 $5 0x3e57
# 0x3d84
sw $10 0($0)
# 0x3d88
addiu $5 $23 16542
# 0x3d8c
slt $27 $13 $14
# 0x3d90
srlv $6 $4 $17
# 0x3d94
srav $9 $25 $16
# 0x3d98
mflo $10
# 0x3d9c
mfhi $7
# 0x3da0
srlv $30 $30 $5
# 0x3da4
mthi $27
# 0x3da8
slt $24 $10 $24
# 0x3dac
sh $13 56($0)
# 0x3db0
lw $19 0($0)
# 0x3db4
srlv $25 $12 $3
# 0x3db8
sltiu $26 $14 10269
# 0x3dbc
nor $18 $11 $16
# 0x3dc0
lhu $31 16($0)
# 0x3dc4
lh $21 8($0)
# 0x3dc8
nor $12 $23 $31
# 0x3dcc
mfhi $7
# 0x3dd0
ori $12 $25 0xb0c4
# 0x3dd4
sub $3 $10 $11
# 0x3dd8
lw $4 84($0)
# 0x3ddc
srlv $19 $26 $16
# 0x3de0
ori $16 $9 0xab53
# 0x3de4
slt $31 $7 $9
# 0x3de8
srl $18 $8 18
# 0x3dec
mthi $18
# 0x3df0
addi $10 $18 -21586
# 0x3df4
sh $4 16($0)
# 0x3df8
mtlo $18
# 0x3dfc
sra $21 $25 0
# 0x3e00
and $26 $2 $3
# 0x3e04
addu $14 $4 $12
# 0x3e08
sw $26 24($0)
# 0x3e0c
sw $19 80($0)
# 0x3e10
addu $16 $7 $16
# 0x3e14
addu $19 $4 $15
# 0x3e18
lw $1 80($0)
# 0x3e1c
sltiu $31 $30 10754
# 0x3e20
mtlo $3
# 0x3e24
xor $7 $5 $31
# 0x3e28
srl $4 $6 7
# 0x3e2c
sw $26 52($0)
# 0x3e30
subu $6 $25 $23
# 0x3e34
lh $2 20($0)
# 0x3e38
sub $11 $23 $9
# 0x3e3c
sll $15 $23 5
# 0x3e40
mthi $26
# 0x3e44
or $18 $11 $19
# 0x3e48
sltiu $16 $24 5432
# 0x3e4c
subu $8 $3 $19
# 0x3e50
add $19 $7 $31
# 0x3e54
mflo $19
# 0x3e58
mfhi $25
# 0x3e5c
mthi $12
# 0x3e60
xor $6 $23 $5
# 0x3e64
add $22 $12 $14
# 0x3e68
sb $3 17($0)
# 0x3e6c
slti $18 $13 -7367
# 0x3e70
and $10 $3 $2
# 0x3e74
lw $8 12($0)
# 0x3e78
mthi $27
# 0x3e7c
sb $15 0($0)
# 0x3e80
lhu $13 16($0)
# 0x3e84
sll $12 $1 0
# 0x3e88
sltiu $17 $11 29534
# 0x3e8c
srav $5 $26 $7
# 0x3e90
sw $17 108($0)
# 0x3e94
addi $1 $26 -3241
# 0x3e98
add $17 $17 $10
# 0x3e9c
lb $11 6($0)
# 0x3ea0
mtlo $11
# 0x3ea4
ori $27 $21 0x64ae
# 0x3ea8
sub $1 $1 $31
# 0x3eac
lhu $8 14($0)
# 0x3eb0
and $21 $18 $1
# 0x3eb4
addu $11 $17 $18
# 0x3eb8
sllv $4 $5 $22
# 0x3ebc
srl $6 $6 26
# 0x3ec0
slti $25 $16 25799
# 0x3ec4
mult $23 $22
# 0x3ec8
sw $30 4($0)
# 0x3ecc
slti $5 $11 17658
# 0x3ed0
lh $26 12($0)
# 0x3ed4
slt $11 $17 $10
# 0x3ed8
lh $1 28($0)
# 0x3edc
xor $10 $10 $4
# 0x3ee0
addiu $23 $22 8203
# 0x3ee4
addiu $18 $4 8764
# 0x3ee8
lb $1 4($0)
# 0x3eec
mtlo $4
# 0x3ef0
sll $24 $18 7
# 0x3ef4
lh $22 14($0)
# 0x3ef8
sw $10 72($0)
# 0x3efc
mult $5 $11
# 0x3f00
sllv $25 $24 $3
# 0x3f04
sllv $30 $11 $22
# 0x3f08
slt $31 $23 $26
# 0x3f0c
mthi $22
# 0x3f10
lw $13 20($0)
# 0x3f14
or $10 $27 $31
# 0x3f18
sltu $23 $20 $4
# 0x3f1c
nor $20 $6 $18
# 0x3f20
sub $25 $1 $15
# 0x3f24
lh $13 24($0)
# 0x3f28
mult $15 $14
# 0x3f2c
lui $21 0xe92a
# 0x3f30
sh $7 0($0)
# 0x3f34
lw $24 0($0)
# 0x3f38
slt $9 $17 $13
# 0x3f3c
lb $13 8($0)
# 0x3f40
addiu $9 $11 2257
# 0x3f44
srlv $21 $18 $27
# 0x3f48
lw $5 24($0)
# 0x3f4c
multu $1 $13
# 0x3f50
lh $16 8($0)
# 0x3f54
addu $22 $25 $19
# 0x3f58
lui $23 0xcbf2
# 0x3f5c
srlv $20 $25 $30
# 0x3f60
srl $22 $7 24
# 0x3f64
lhu $19 22($0)
# 0x3f68
sb $5 4($0)
# 0x3f6c
sll $31 $9 22
# 0x3f70
mflo $2
# 0x3f74
sltiu $24 $8 8849
# 0x3f78
multu $18 $21
# 0x3f7c
sllv $5 $18 $1
# 0x3f80
sh $15 0($0)
# 0x3f84
sh $13 8($0)
# 0x3f88
sub $4 $30 $14
# 0x3f8c
lui $3 0xb803
# 0x3f90
addu $7 $24 $24
# 0x3f94
and $20 $17 $13
# 0x3f98
addi $31 $12 -9097
# 0x3f9c
nor $7 $11 $22
# 0x3fa0
addu $10 $3 $7

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop