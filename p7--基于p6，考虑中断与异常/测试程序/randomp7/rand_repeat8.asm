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
mthi $4
# 0x3008
subu $30 $31 $15
# 0x300c
addiu $12 $8 21878
# 0x3010
sra $27 $4 5
# 0x3014
lh $23 50($0)
# 0x3018
mthi $30
# 0x301c
lb $31 15($0)
# 0x3020
addi $3 $9 12502
# 0x3024
srlv $4 $17 $1
# 0x3028
add $21 $3 $5
# 0x302c
sltiu $11 $18 26885
# 0x3030
mflo $18
# 0x3034
sll $6 $4 7
# 0x3038
ori $31 $18 0x85c8
# 0x303c
lw $13 20($0)
# 0x3040
mthi $25
# 0x3044
nor $21 $3 $6
# 0x3048
addiu $11 $18 31877
# 0x304c
srav $18 $30 $27
# 0x3050
nor $5 $9 $27
# 0x3054
ori $7 $25 0x3ef5
# 0x3058
sltu $14 $21 $20
# 0x305c
sh $10 6($0)
# 0x3060
nor $24 $3 $19
# 0x3064
mult $4 $18
# 0x3068
mthi $12
# 0x306c
lui $19 0x1020
# 0x3070
lb $27 12($0)
# 0x3074
lhu $23 26($0)
# 0x3078
lui $19 0x8746
# 0x307c
andi $26 $5 0x95d2
# 0x3080
sllv $6 $15 $6
# 0x3084
or $19 $4 $31
# 0x3088
mfhi $9
# 0x308c
srav $13 $1 $31
# 0x3090
mthi $3
# 0x3094
addu $5 $7 $6
# 0x3098
add $11 $25 $27
# 0x309c
mtlo $13
# 0x30a0
lh $17 48($0)
# 0x30a4
lui $11 0x713d
# 0x30a8
andi $25 $20 0x7ce2
# 0x30ac
sh $2 28($0)
# 0x30b0
sb $12 29($0)
# 0x30b4
lbu $11 31($0)
# 0x30b8
sb $13 6($0)
# 0x30bc
lbu $1 11($0)
# 0x30c0
slti $16 $8 -25606
# 0x30c4
mfhi $7
# 0x30c8
sub $21 $12 $7
# 0x30cc
sb $12 29($0)
# 0x30d0
add $18 $15 $23
# 0x30d4
lw $24 120($0)
# 0x30d8
sh $9 14($0)
# 0x30dc
sh $5 48($0)
# 0x30e0
sltiu $2 $1 19116
# 0x30e4
sltiu $1 $9 8222
# 0x30e8
xori $12 $31 0xa67f
# 0x30ec
mthi $26
# 0x30f0
addu $27 $7 $31
# 0x30f4
and $21 $10 $11
# 0x30f8
mthi $24
# 0x30fc
lw $20 112($0)
# 0x3100
andi $22 $25 0x6565
# 0x3104
sh $9 48($0)
# 0x3108
lb $17 18($0)
# 0x310c
add $27 $31 $3
# 0x3110
addiu $14 $13 17972
# 0x3114
addiu $2 $6 95
# 0x3118
xor $27 $18 $8
# 0x311c
ori $8 $1 0xed00
# 0x3120
mflo $19
# 0x3124
and $22 $4 $23
# 0x3128
lh $17 58($0)
# 0x312c
sb $13 30($0)
# 0x3130
lbu $10 29($0)
# 0x3134
lb $27 14($0)
# 0x3138
add $10 $31 $13
# 0x313c
sltu $3 $17 $6
# 0x3140
lh $15 36($0)
# 0x3144
mtlo $11
# 0x3148
srlv $31 $20 $15
# 0x314c
andi $25 $25 0xb597
# 0x3150
sll $13 $24 0
# 0x3154
sllv $10 $2 $20
# 0x3158
addu $14 $10 $25
# 0x315c
addu $25 $18 $7
# 0x3160
sltiu $20 $18 11020
# 0x3164
addu $16 $27 $27
# 0x3168
sb $5 30($0)
# 0x316c
mult $25 $2
# 0x3170
andi $26 $26 0xcdef
# 0x3174
lh $25 10($0)
# 0x3178
sllv $1 $15 $17
# 0x317c
sltiu $2 $27 17987
# 0x3180
lb $5 19($0)
# 0x3184
lb $11 7($0)
# 0x3188
srlv $19 $16 $6
# 0x318c
srav $23 $12 $8
# 0x3190
slt $1 $23 $27
# 0x3194
sw $31 4($0)
# 0x3198
lh $3 0($0)
# 0x319c
srlv $13 $31 $19
# 0x31a0
sb $13 26($0)
# 0x31a4
and $19 $13 $12
# 0x31a8
addiu $5 $4 28823
# 0x31ac
sll $2 $7 12
# 0x31b0
subu $5 $13 $19
# 0x31b4
andi $12 $9 0xcfd1
# 0x31b8
sw $14 0($0)
# 0x31bc
lb $20 10($0)
# 0x31c0
lbu $19 12($0)
# 0x31c4
sh $27 58($0)
# 0x31c8
addiu $6 $24 1981
# 0x31cc
lw $4 0($0)
# 0x31d0
slt $5 $22 $13
# 0x31d4
ori $24 $17 0xb854
# 0x31d8
xori $25 $24 0x8a21
# 0x31dc
sw $14 64($0)
# 0x31e0
lb $19 12($0)
# 0x31e4
lbu $22 18($0)
# 0x31e8
lbu $24 4($0)
# 0x31ec
and $12 $10 $23
# 0x31f0
andi $15 $20 0x5f69
# 0x31f4
andi $5 $5 0xf9e6
# 0x31f8
or $25 $22 $27
# 0x31fc
sh $10 16($0)
# 0x3200
sw $1 100($0)
# 0x3204
lw $15 12($0)
# 0x3208
slt $2 $13 $21
# 0x320c
sllv $21 $16 $4
# 0x3210
sub $4 $13 $24
# 0x3214
sllv $11 $16 $30
# 0x3218
addi $24 $2 21151
# 0x321c
lui $11 0x933f
# 0x3220
lh $24 24($0)
# 0x3224
multu $19 $4
# 0x3228
sra $6 $25 20
# 0x322c
mtlo $19
# 0x3230
lbu $2 25($0)
# 0x3234
add $20 $20 $22
# 0x3238
sub $8 $3 $13
# 0x323c
multu $4 $27
# 0x3240
lw $18 20($0)
# 0x3244
addiu $4 $16 8294
# 0x3248
mtlo $22
# 0x324c
mtlo $17
# 0x3250
mthi $5
# 0x3254
sb $26 4($0)
# 0x3258
sll $3 $23 28
# 0x325c
slti $15 $10 -19497
# 0x3260
or $15 $31 $12
# 0x3264
lbu $23 30($0)
# 0x3268
or $23 $14 $10
# 0x326c
ori $7 $23 0x87e4
# 0x3270
sllv $13 $3 $19
# 0x3274
or $12 $25 $22
# 0x3278
andi $17 $31 0x7a62
# 0x327c
add $22 $9 $11
# 0x3280
srav $26 $9 $27
# 0x3284
lui $14 0xac1f
# 0x3288
lb $27 3($0)
# 0x328c
lb $9 12($0)
# 0x3290
srlv $24 $13 $23
# 0x3294
lui $21 0x98e9
# 0x3298
lh $7 58($0)
# 0x329c
mthi $27
# 0x32a0
multu $25 $2
# 0x32a4
ori $31 $19 0xcce4
# 0x32a8
srlv $15 $24 $15
# 0x32ac
or $7 $18 $7
# 0x32b0
andi $11 $13 0xba4f
# 0x32b4
or $8 $12 $27
# 0x32b8
addiu $24 $2 8613
# 0x32bc
or $2 $23 $6
# 0x32c0
sw $27 28($0)
# 0x32c4
sw $9 0($0)
# 0x32c8
lui $3 0x6d94
# 0x32cc
and $22 $4 $22
# 0x32d0
xori $12 $12 0xc70f
# 0x32d4
ori $8 $2 0x6a92
# 0x32d8
slt $20 $21 $25
# 0x32dc
mthi $13
# 0x32e0
or $3 $2 $21
# 0x32e4
ori $26 $3 0x6be7
# 0x32e8
mult $9 $15
# 0x32ec
nor $17 $30 $17
# 0x32f0
or $31 $7 $15
# 0x32f4
mult $19 $12
# 0x32f8
lb $22 15($0)
# 0x32fc
multu $3 $6
# 0x3300
andi $1 $25 0x8a37
# 0x3304
subu $14 $4 $20
# 0x3308
slt $25 $7 $31
# 0x330c
multu $3 $24
# 0x3310
sub $1 $22 $27
# 0x3314
srl $14 $26 14
# 0x3318
lw $17 12($0)
# 0x331c
sltiu $22 $11 22319
# 0x3320
subu $24 $15 $27
# 0x3324
addu $11 $10 $30
# 0x3328
mult $16 $12
# 0x332c
nor $13 $25 $22
# 0x3330
lui $26 0xc771
# 0x3334
lbu $1 17($0)
# 0x3338
lb $30 6($0)
# 0x333c
lh $20 54($0)
# 0x3340
mtlo $14
# 0x3344
mthi $21
# 0x3348
sub $1 $30 $21
# 0x334c
xori $16 $1 0x6f0e
# 0x3350
xor $19 $27 $20
# 0x3354
ori $20 $16 0x6629
# 0x3358
addi $14 $23 6901
# 0x335c
mfhi $8
# 0x3360
mult $6 $17
# 0x3364
lbu $3 16($0)
# 0x3368
lhu $6 16($0)
# 0x336c
sltu $7 $5 $27
# 0x3370
mult $16 $26
# 0x3374
sllv $27 $27 $26
# 0x3378
mtlo $23
# 0x337c
sw $21 28($0)
# 0x3380
lui $23 0x758f
# 0x3384
andi $5 $5 0x31d4
# 0x3388
lh $16 20($0)
# 0x338c
lw $30 8($0)
# 0x3390
addu $21 $20 $21
# 0x3394
xori $16 $7 0xe308
# 0x3398
or $18 $14 $22
# 0x339c
nor $5 $17 $2
# 0x33a0
sb $4 23($0)
# 0x33a4
lw $1 68($0)
# 0x33a8
multu $5 $11
# 0x33ac
sll $13 $20 4
# 0x33b0
slt $13 $27 $23
# 0x33b4
add $2 $26 $10
# 0x33b8
or $22 $16 $13
# 0x33bc
mult $20 $26
# 0x33c0
subu $2 $12 $12
# 0x33c4
sra $13 $24 22
# 0x33c8
mult $6 $1
# 0x33cc
sw $21 8($0)
# 0x33d0
ori $7 $24 0x750f
# 0x33d4
or $8 $2 $23
# 0x33d8
sh $15 26($0)
# 0x33dc
mult $12 $31
# 0x33e0
add $19 $31 $19
# 0x33e4
and $21 $31 $19
# 0x33e8
sb $22 28($0)
# 0x33ec
srl $21 $21 15
# 0x33f0
lbu $18 11($0)
# 0x33f4
and $18 $2 $1
# 0x33f8
multu $18 $9
# 0x33fc
nor $21 $14 $2
# 0x3400
lui $15 0x5abb
# 0x3404
sw $9 0($0)
# 0x3408
subu $3 $8 $13
# 0x340c
add $19 $27 $2
# 0x3410
sw $22 24($0)
# 0x3414
mthi $4
# 0x3418
lbu $31 14($0)
# 0x341c
sllv $18 $1 $3
# 0x3420
srlv $13 $18 $25
# 0x3424
xor $19 $14 $30
# 0x3428
sub $23 $6 $25
# 0x342c
sw $6 0($0)
# 0x3430
sltiu $12 $7 32599
# 0x3434
lui $3 0xb9dd
# 0x3438
lhu $5 16($0)
# 0x343c
sllv $14 $22 $31
# 0x3440
lw $26 20($0)
# 0x3444
lh $24 2($0)
# 0x3448
xor $20 $13 $23
# 0x344c
lw $7 4($0)
# 0x3450
lh $21 48($0)
# 0x3454
mflo $26
# 0x3458
nor $16 $16 $15
# 0x345c
lh $14 20($0)
# 0x3460
xor $9 $10 $20
# 0x3464
mthi $1
# 0x3468
and $30 $9 $19
# 0x346c
srlv $27 $20 $5
# 0x3470
srlv $15 $27 $4
# 0x3474
mfhi $25
# 0x3478
lw $5 36($0)
# 0x347c
lw $11 12($0)
# 0x3480
sb $23 20($0)
# 0x3484
lh $24 10($0)
# 0x3488
sh $5 20($0)
# 0x348c
lhu $8 18($0)
# 0x3490
ori $19 $6 0x4194
# 0x3494
mfhi $10
# 0x3498
lbu $22 6($0)
# 0x349c
srav $12 $24 $7
# 0x34a0
slt $20 $19 $30
# 0x34a4
lui $15 0x6a64
# 0x34a8
lw $22 20($0)
# 0x34ac
andi $1 $1 0x27ab
# 0x34b0
xori $9 $18 0x329e
# 0x34b4
sw $27 20($0)
# 0x34b8
lb $25 15($0)
# 0x34bc
slt $25 $7 $23
# 0x34c0
addiu $23 $18 23234
# 0x34c4
sw $31 120($0)
# 0x34c8
mfhi $21
# 0x34cc
sh $9 28($0)
# 0x34d0
addi $11 $14 23042
# 0x34d4
mfhi $22
# 0x34d8
lh $15 24($0)
# 0x34dc
sltu $15 $4 $14
# 0x34e0
add $24 $19 $9
# 0x34e4
lb $27 27($0)
# 0x34e8
addi $12 $10 -24707
# 0x34ec
sub $14 $18 $20
# 0x34f0
lui $12 0xad44
# 0x34f4
lh $1 40($0)
# 0x34f8
addiu $17 $7 22954
# 0x34fc
sltiu $27 $7 5796
# 0x3500
srav $19 $10 $1
# 0x3504
sh $6 2($0)
# 0x3508
sltu $14 $27 $16
# 0x350c
and $4 $9 $1
# 0x3510
mult $16 $14
# 0x3514
and $7 $18 $1
# 0x3518
sllv $5 $20 $11
# 0x351c
slti $2 $12 14927
# 0x3520
lh $6 20($0)
# 0x3524
sw $18 40($0)
# 0x3528
lui $7 0xdc68
# 0x352c
add $6 $20 $15
# 0x3530
lhu $18 14($0)
# 0x3534
mtlo $18
# 0x3538
slt $11 $15 $12
# 0x353c
sub $11 $6 $8
# 0x3540
lh $15 18($0)
# 0x3544
xor $26 $16 $13
# 0x3548
mfhi $20
# 0x354c
sltu $7 $15 $31
# 0x3550
multu $22 $15
# 0x3554
multu $25 $26
# 0x3558
xor $11 $12 $15
# 0x355c
ori $14 $3 0xdb9f
# 0x3560
xor $1 $24 $10
# 0x3564
multu $13 $2
# 0x3568
srlv $8 $14 $15
# 0x356c
sltu $11 $14 $30
# 0x3570
lhu $4 8($0)
# 0x3574
srlv $9 $11 $14
# 0x3578
sub $6 $26 $14
# 0x357c
and $31 $23 $25
# 0x3580
sltiu $7 $5 2069
# 0x3584
addi $2 $16 -31447
# 0x3588
ori $22 $24 0x33fe
# 0x358c
mflo $11
# 0x3590
mult $7 $10
# 0x3594
sw $22 8($0)
# 0x3598
slti $17 $23 -17323
# 0x359c
sll $12 $4 16
# 0x35a0
xor $25 $26 $2
# 0x35a4
mtlo $4
# 0x35a8
lh $24 14($0)
# 0x35ac
slti $13 $9 9907
# 0x35b0
lb $25 3($0)
# 0x35b4
lhu $9 24($0)
# 0x35b8
srav $18 $1 $8
# 0x35bc
lui $15 0x0b8a
# 0x35c0
lh $30 6($0)
# 0x35c4
lui $1 0x70d0
# 0x35c8
sll $4 $25 16
# 0x35cc
sh $4 56($0)
# 0x35d0
lui $1 0x9263
# 0x35d4
subu $26 $6 $26
# 0x35d8
add $3 $6 $26
# 0x35dc
lb $17 29($0)
# 0x35e0
sw $14 28($0)
# 0x35e4
mthi $20
# 0x35e8
lh $11 4($0)
# 0x35ec
sllv $3 $6 $5
# 0x35f0
lh $30 38($0)
# 0x35f4
lh $9 8($0)
# 0x35f8
add $11 $10 $13
# 0x35fc
sw $31 28($0)
# 0x3600
nor $12 $31 $6
# 0x3604
or $31 $15 $16
# 0x3608
nor $9 $13 $27
# 0x360c
srlv $15 $18 $19
# 0x3610
sw $1 36($0)
# 0x3614
sw $14 88($0)
# 0x3618
multu $4 $7
# 0x361c
sltiu $4 $23 6089
# 0x3620
xor $25 $8 $2
# 0x3624
sub $24 $23 $14
# 0x3628
add $1 $27 $20
# 0x362c
srlv $18 $12 $14
# 0x3630
sra $18 $17 25
# 0x3634
sw $14 108($0)
# 0x3638
and $24 $10 $18
# 0x363c
srlv $5 $2 $19
# 0x3640
addu $12 $25 $14
# 0x3644
xori $31 $10 0x55ea
# 0x3648
lw $15 96($0)
# 0x364c
sltu $25 $19 $13
# 0x3650
srlv $11 $27 $8
# 0x3654
slti $25 $26 5464
# 0x3658
sllv $27 $7 $2
# 0x365c
mfhi $17
# 0x3660
lb $13 0($0)
# 0x3664
slt $17 $27 $1
# 0x3668
addu $18 $4 $19
# 0x366c
sw $14 28($0)
# 0x3670
sub $27 $17 $30
# 0x3674
slt $8 $27 $19
# 0x3678
sw $9 28($0)
# 0x367c
lb $20 12($0)
# 0x3680
sub $9 $12 $12
# 0x3684
sllv $3 $5 $12
# 0x3688
mthi $22
# 0x368c
sltu $27 $6 $2
# 0x3690
srlv $18 $11 $2
# 0x3694
srlv $30 $8 $7
# 0x3698
add $10 $18 $22
# 0x369c
mult $5 $15
# 0x36a0
nor $25 $6 $5
# 0x36a4
nor $15 $22 $30
# 0x36a8
addi $5 $1 25343
# 0x36ac
nor $14 $23 $13
# 0x36b0
sltu $21 $31 $2
# 0x36b4
or $24 $24 $19
# 0x36b8
mtlo $4
# 0x36bc
lw $5 36($0)
# 0x36c0
sw $19 28($0)
# 0x36c4
addiu $31 $12 2057
# 0x36c8
mthi $20
# 0x36cc
sub $27 $24 $18
# 0x36d0
multu $19 $23
# 0x36d4
sw $10 4($0)
# 0x36d8
lhu $5 14($0)
# 0x36dc
nor $15 $12 $17
# 0x36e0
addiu $9 $16 10326
# 0x36e4
srav $26 $2 $17
# 0x36e8
sb $12 19($0)
# 0x36ec
sh $10 4($0)
# 0x36f0
sw $1 24($0)
# 0x36f4
lbu $16 8($0)
# 0x36f8
lui $10 0x229a
# 0x36fc
lhu $4 0($0)
# 0x3700
mtlo $2
# 0x3704
addu $9 $30 $3
# 0x3708
lh $30 22($0)
# 0x370c
andi $13 $6 0x3a69
# 0x3710
lw $25 12($0)
# 0x3714
addu $31 $11 $17
# 0x3718
sll $7 $16 13
# 0x371c
lhu $25 26($0)
# 0x3720
slti $11 $3 -25249
# 0x3724
xor $19 $2 $5
# 0x3728
add $12 $6 $21
# 0x372c
lh $27 56($0)
# 0x3730
or $2 $11 $14
# 0x3734
or $20 $12 $12
# 0x3738
sll $19 $1 3
# 0x373c
lh $14 20($0)
# 0x3740
andi $22 $15 0x3f2f
# 0x3744
xor $21 $3 $31
# 0x3748
addu $5 $9 $17
# 0x374c
sh $16 8($0)
# 0x3750
mflo $10
# 0x3754
lhu $19 28($0)
# 0x3758
lhu $22 12($0)
# 0x375c
sub $24 $2 $5
# 0x3760
and $22 $9 $31
# 0x3764
mthi $7
# 0x3768
andi $19 $26 0xde7f
# 0x376c
lbu $31 24($0)
# 0x3770
slti $22 $9 12189
# 0x3774
sb $16 12($0)
# 0x3778
lbu $13 0($0)
# 0x377c
mthi $10
# 0x3780
mult $27 $26
# 0x3784
addi $21 $22 -3931
# 0x3788
srlv $11 $6 $20
# 0x378c
sra $9 $8 17
# 0x3790
sra $22 $22 31
# 0x3794
lh $5 28($0)
# 0x3798
srl $10 $11 31
# 0x379c
sll $16 $17 31
# 0x37a0
slti $9 $1 -20615
# 0x37a4
xori $26 $22 0xa5d4
# 0x37a8
sltu $13 $6 $23
# 0x37ac
mfhi $26
# 0x37b0
sllv $4 $5 $23
# 0x37b4
multu $9 $5
# 0x37b8
mtlo $7
# 0x37bc
sllv $5 $23 $26
# 0x37c0
lh $22 36($0)
# 0x37c4
addi $27 $11 -10847
# 0x37c8
lui $26 0x2abf
# 0x37cc
sh $19 14($0)
# 0x37d0
addu $2 $9 $23
# 0x37d4
add $26 $8 $19
# 0x37d8
srl $4 $19 15
# 0x37dc
addi $12 $30 -238
# 0x37e0
sw $1 20($0)
# 0x37e4
lh $25 56($0)
# 0x37e8
lh $30 16($0)
# 0x37ec
lui $22 0xcfef
# 0x37f0
lh $15 42($0)
# 0x37f4
sb $3 1($0)
# 0x37f8
nor $30 $18 $9
# 0x37fc
multu $18 $14
# 0x3800
lhu $25 12($0)
# 0x3804
sh $25 46($0)
# 0x3808
sll $2 $14 13
# 0x380c
mfhi $21
# 0x3810
lw $4 80($0)
# 0x3814
mthi $12
# 0x3818
mfhi $1
# 0x381c
multu $30 $17
# 0x3820
lw $3 20($0)
# 0x3824
andi $30 $1 0x34a3
# 0x3828
sw $30 88($0)
# 0x382c
lh $14 6($0)
# 0x3830
mthi $26
# 0x3834
srl $2 $13 20
# 0x3838
mfhi $16
# 0x383c
sw $1 80($0)
# 0x3840
addiu $3 $17 13231
# 0x3844
sh $21 22($0)
# 0x3848
addiu $17 $8 6224
# 0x384c
lh $15 40($0)
# 0x3850
sltu $16 $24 $27
# 0x3854
nor $18 $12 $31
# 0x3858
add $12 $16 $31
# 0x385c
slt $19 $18 $18
# 0x3860
nor $3 $13 $17
# 0x3864
sh $7 28($0)
# 0x3868
lhu $9 30($0)
# 0x386c
lh $10 26($0)
# 0x3870
sra $26 $22 22
# 0x3874
lui $16 0xea57
# 0x3878
sllv $9 $14 $5
# 0x387c
addi $10 $16 -16043
# 0x3880
lw $22 16($0)
# 0x3884
andi $15 $9 0xe5d3
# 0x3888
lui $24 0xde82
# 0x388c
xori $6 $9 0x5fc9
# 0x3890
slt $4 $24 $10
# 0x3894
mfhi $11
# 0x3898
mfhi $8
# 0x389c
slti $10 $12 24698
# 0x38a0
mtlo $14
# 0x38a4
mflo $6
# 0x38a8
addi $20 $1 -18697
# 0x38ac
slti $22 $12 8778
# 0x38b0
or $2 $12 $4
# 0x38b4
multu $25 $12
# 0x38b8
mtlo $31
# 0x38bc
ori $26 $2 0x5f95
# 0x38c0
slti $17 $7 -3812
# 0x38c4
xori $26 $2 0xbf2f
# 0x38c8
nor $24 $20 $9
# 0x38cc
srav $2 $11 $20
# 0x38d0
sw $8 12($0)
# 0x38d4
andi $8 $12 0xf7ac
# 0x38d8
xor $31 $4 $16
# 0x38dc
sltu $4 $2 $23
# 0x38e0
sb $21 16($0)
# 0x38e4
xor $25 $6 $6
# 0x38e8
lw $17 28($0)
# 0x38ec
slti $23 $18 -5789
# 0x38f0
slti $19 $19 5412
# 0x38f4
andi $26 $7 0x42ec
# 0x38f8
lw $31 0($0)
# 0x38fc
multu $14 $22
# 0x3900
srav $1 $31 $22
# 0x3904
sub $14 $12 $11
# 0x3908
sh $17 46($0)
# 0x390c
mthi $2
# 0x3910
lh $21 48($0)
# 0x3914
sltiu $15 $24 18133
# 0x3918
or $8 $26 $8
# 0x391c
addu $23 $27 $8
# 0x3920
mthi $20
# 0x3924
lui $26 0xc9b8
# 0x3928
lh $9 20($0)
# 0x392c
lhu $17 4($0)
# 0x3930
nor $9 $7 $17
# 0x3934
lw $8 120($0)
# 0x3938
srl $20 $7 27
# 0x393c
addu $13 $18 $11
# 0x3940
lhu $13 2($0)
# 0x3944
srl $4 $17 26
# 0x3948
srlv $23 $16 $5
# 0x394c
slti $25 $23 -10128
# 0x3950
addi $11 $31 32164
# 0x3954
sll $30 $23 8
# 0x3958
sllv $16 $20 $10
# 0x395c
andi $1 $1 0x6a5e
# 0x3960
addi $15 $7 -11812
# 0x3964
lb $22 4($0)
# 0x3968
xor $25 $13 $1
# 0x396c
lh $21 42($0)
# 0x3970
sra $10 $14 15
# 0x3974
lh $16 6($0)
# 0x3978
sltu $26 $24 $2
# 0x397c
lh $26 12($0)
# 0x3980
sw $18 16($0)
# 0x3984
ori $3 $1 0x9471
# 0x3988
lw $11 4($0)
# 0x398c
lw $13 28($0)
# 0x3990
lh $18 2($0)
# 0x3994
addu $18 $2 $23
# 0x3998
lh $27 24($0)
# 0x399c
lui $6 0x3db2
# 0x39a0
mflo $9
# 0x39a4
andi $25 $14 0xb8b4
# 0x39a8
mthi $1
# 0x39ac
subu $14 $19 $9
# 0x39b0
sll $2 $4 18
# 0x39b4
sh $20 42($0)
# 0x39b8
lh $2 22($0)
# 0x39bc
lhu $26 6($0)
# 0x39c0
and $12 $1 $22
# 0x39c4
ori $6 $12 0x1afb
# 0x39c8
xor $16 $12 $11
# 0x39cc
mtlo $11
# 0x39d0
nor $14 $30 $14
# 0x39d4
andi $12 $8 0xaf33
# 0x39d8
sb $5 12($0)
# 0x39dc
ori $2 $22 0xc097
# 0x39e0
mtlo $4
# 0x39e4
sh $27 54($0)
# 0x39e8
addu $24 $11 $3
# 0x39ec
sltu $1 $15 $8
# 0x39f0
sh $22 10($0)
# 0x39f4
lw $27 12($0)
# 0x39f8
srav $17 $13 $16
# 0x39fc
and $3 $11 $4
# 0x3a00
andi $11 $27 0x9241
# 0x3a04
addu $3 $13 $8
# 0x3a08
sltu $13 $12 $21
# 0x3a0c
sw $4 12($0)
# 0x3a10
lui $3 0x96fb
# 0x3a14
lw $15 24($0)
# 0x3a18
xori $20 $23 0x60e1
# 0x3a1c
sra $16 $3 8
# 0x3a20
or $11 $17 $12
# 0x3a24
lw $26 0($0)
# 0x3a28
srl $4 $9 6
# 0x3a2c
addiu $19 $13 14592
# 0x3a30
lw $21 36($0)
# 0x3a34
slti $14 $26 -24273
# 0x3a38
srlv $10 $27 $22
# 0x3a3c
mult $5 $24
# 0x3a40
xor $20 $24 $3
# 0x3a44
mflo $14
# 0x3a48
srlv $11 $9 $16
# 0x3a4c
sub $1 $23 $22
# 0x3a50
mtlo $22
# 0x3a54
subu $14 $13 $6
# 0x3a58
sw $7 4($0)
# 0x3a5c
sb $9 18($0)
# 0x3a60
lh $21 28($0)
# 0x3a64
slt $24 $9 $10
# 0x3a68
lhu $9 30($0)
# 0x3a6c
andi $7 $10 0x6ed2
# 0x3a70
lb $11 2($0)
# 0x3a74
sh $14 22($0)
# 0x3a78
subu $14 $24 $31
# 0x3a7c
sb $14 30($0)
# 0x3a80
lh $18 8($0)
# 0x3a84
addiu $19 $31 15508
# 0x3a88
sra $20 $14 20
# 0x3a8c
subu $14 $17 $6
# 0x3a90
nor $22 $1 $31
# 0x3a94
xor $13 $19 $30
# 0x3a98
lw $20 24($0)
# 0x3a9c
addu $19 $31 $9
# 0x3aa0
mult $30 $6
# 0x3aa4
lh $11 16($0)
# 0x3aa8
lui $2 0x9497
# 0x3aac
and $8 $25 $3
# 0x3ab0
multu $21 $9
# 0x3ab4
lbu $3 11($0)
# 0x3ab8
mthi $20
# 0x3abc
add $9 $17 $14
# 0x3ac0
andi $21 $5 0x266f
# 0x3ac4
lh $16 24($0)
# 0x3ac8
addi $5 $26 9338
# 0x3acc
sllv $25 $2 $10
# 0x3ad0
sltiu $12 $8 15391
# 0x3ad4
lbu $2 11($0)
# 0x3ad8
add $19 $27 $3
# 0x3adc
lw $11 12($0)
# 0x3ae0
mult $4 $3
# 0x3ae4
slt $30 $14 $31
# 0x3ae8
srav $16 $24 $24
# 0x3aec
srav $25 $4 $12
# 0x3af0
and $31 $5 $11
# 0x3af4
sra $9 $5 22
# 0x3af8
slt $14 $9 $22
# 0x3afc
lb $23 14($0)
# 0x3b00
lw $24 4($0)
# 0x3b04
lhu $26 24($0)
# 0x3b08
sltu $26 $22 $11
# 0x3b0c
and $25 $23 $13
# 0x3b10
lh $27 26($0)
# 0x3b14
mfhi $21
# 0x3b18
nor $18 $13 $14
# 0x3b1c
lh $3 2($0)
# 0x3b20
mfhi $31
# 0x3b24
srlv $12 $1 $3
# 0x3b28
subu $14 $26 $15
# 0x3b2c
srlv $13 $10 $2
# 0x3b30
slti $27 $22 -25089
# 0x3b34
multu $20 $19
# 0x3b38
mflo $24
# 0x3b3c
mtlo $31
# 0x3b40
xor $26 $30 $1
# 0x3b44
addiu $17 $7 18931
# 0x3b48
lbu $22 7($0)
# 0x3b4c
mfhi $6
# 0x3b50
slti $12 $11 -19927
# 0x3b54
nor $20 $16 $23
# 0x3b58
slti $8 $11 8068
# 0x3b5c
and $24 $31 $20
# 0x3b60
mflo $17
# 0x3b64
srlv $20 $1 $19
# 0x3b68
lhu $24 22($0)
# 0x3b6c
sll $26 $15 20
# 0x3b70
srlv $9 $17 $25
# 0x3b74
lw $24 28($0)
# 0x3b78
mflo $2
# 0x3b7c
sb $21 0($0)
# 0x3b80
mthi $25
# 0x3b84
sra $22 $8 29
# 0x3b88
subu $21 $22 $20
# 0x3b8c
srav $11 $23 $4
# 0x3b90
addiu $14 $12 9342
# 0x3b94
lb $19 17($0)
# 0x3b98
mflo $26
# 0x3b9c
ori $1 $6 0x6ef1
# 0x3ba0
sllv $8 $11 $30
# 0x3ba4
sll $30 $9 20
# 0x3ba8
addu $7 $30 $8
# 0x3bac
sub $3 $20 $11
# 0x3bb0
addu $6 $15 $23
# 0x3bb4
sh $22 4($0)
# 0x3bb8
mthi $12
# 0x3bbc
or $17 $4 $2
# 0x3bc0
subu $3 $5 $19
# 0x3bc4
slti $20 $31 11162
# 0x3bc8
slti $9 $24 31357
# 0x3bcc
lw $2 72($0)
# 0x3bd0
lh $26 4($0)
# 0x3bd4
mflo $4
# 0x3bd8
andi $22 $5 0x0af4
# 0x3bdc
or $13 $30 $4
# 0x3be0
mflo $10
# 0x3be4
lw $25 12($0)
# 0x3be8
andi $30 $27 0x7824
# 0x3bec
sltu $18 $1 $6
# 0x3bf0
lh $26 6($0)
# 0x3bf4
mtlo $21
# 0x3bf8
sb $13 15($0)
# 0x3bfc
lh $11 2($0)
# 0x3c00
mflo $26
# 0x3c04
slt $18 $2 $13
# 0x3c08
xori $1 $11 0x3057
# 0x3c0c
mtlo $8
# 0x3c10
sh $12 52($0)
# 0x3c14
srlv $7 $23 $25
# 0x3c18
addi $26 $13 908
# 0x3c1c
slti $31 $17 1897
# 0x3c20
slti $7 $1 -10265
# 0x3c24
mult $8 $17
# 0x3c28
srl $2 $31 0
# 0x3c2c
multu $27 $17
# 0x3c30
ori $3 $18 0x6655
# 0x3c34
addu $21 $20 $14
# 0x3c38
sh $10 16($0)
# 0x3c3c
nor $10 $19 $19
# 0x3c40
srav $17 $2 $1
# 0x3c44
sub $17 $31 $2
# 0x3c48
sllv $24 $31 $3
# 0x3c4c
add $6 $31 $27
# 0x3c50
sw $21 60($0)
# 0x3c54
or $27 $18 $27
# 0x3c58
or $23 $26 $30
# 0x3c5c
sltiu $12 $5 19792
# 0x3c60
sub $8 $20 $8
# 0x3c64
sll $14 $22 13
# 0x3c68
srlv $2 $26 $4
# 0x3c6c
mfhi $25
# 0x3c70
mfhi $12
# 0x3c74
andi $10 $22 0xe16b
# 0x3c78
sra $25 $8 14
# 0x3c7c
add $12 $21 $23
# 0x3c80
mflo $18
# 0x3c84
slt $16 $15 $5
# 0x3c88
srlv $11 $22 $23
# 0x3c8c
srl $13 $2 13
# 0x3c90
ori $24 $12 0x479d
# 0x3c94
slt $27 $12 $23
# 0x3c98
mult $27 $12
# 0x3c9c
lh $20 0($0)
# 0x3ca0
xor $31 $5 $5
# 0x3ca4
lhu $16 6($0)
# 0x3ca8
addiu $5 $20 25267
# 0x3cac
slti $19 $21 10949
# 0x3cb0
sw $2 12($0)
# 0x3cb4
slt $31 $17 $9
# 0x3cb8
addi $20 $12 18986
# 0x3cbc
mflo $4
# 0x3cc0
or $26 $12 $7
# 0x3cc4
slti $12 $4 -12935
# 0x3cc8
sltu $14 $5 $15
# 0x3ccc
andi $3 $24 0xe245
# 0x3cd0
sh $9 30($0)
# 0x3cd4
lh $20 28($0)
# 0x3cd8
lui $2 0x69c5
# 0x3cdc
mflo $6
# 0x3ce0
sw $6 20($0)
# 0x3ce4
mult $8 $5
# 0x3ce8
addu $18 $24 $8
# 0x3cec
lh $3 2($0)
# 0x3cf0
sltu $31 $6 $26
# 0x3cf4
nor $21 $20 $11
# 0x3cf8
mfhi $8
# 0x3cfc
lb $4 12($0)
# 0x3d00
ori $23 $31 0x4195
# 0x3d04
lh $12 30($0)
# 0x3d08
sw $22 56($0)
# 0x3d0c
lui $16 0x7f01
# 0x3d10
ori $19 $25 0x19b4
# 0x3d14
lb $10 14($0)
# 0x3d18
sw $14 20($0)
# 0x3d1c
mflo $2
# 0x3d20
sh $4 18($0)
# 0x3d24
sh $6 36($0)
# 0x3d28
srlv $9 $7 $4
# 0x3d2c
lhu $17 10($0)
# 0x3d30
sub $17 $27 $7
# 0x3d34
addiu $25 $27 16290
# 0x3d38
lbu $8 24($0)
# 0x3d3c
xor $27 $15 $22
# 0x3d40
mfhi $6
# 0x3d44
mfhi $3
# 0x3d48
sb $13 23($0)
# 0x3d4c
sltu $6 $2 $16
# 0x3d50
sltiu $11 $12 15180
# 0x3d54
sh $21 62($0)
# 0x3d58
srlv $12 $22 $15
# 0x3d5c
addiu $2 $14 95
# 0x3d60
lw $7 12($0)
# 0x3d64
sh $16 2($0)
# 0x3d68
srl $15 $22 24
# 0x3d6c
addiu $30 $13 23652
# 0x3d70
sltiu $24 $16 12675
# 0x3d74
slti $15 $23 -8770
# 0x3d78
lbu $19 25($0)
# 0x3d7c
slti $24 $30 -26149
# 0x3d80
lbu $22 28($0)
# 0x3d84
sw $27 96($0)
# 0x3d88
andi $25 $18 0x5790
# 0x3d8c
srl $27 $13 26
# 0x3d90
slt $9 $23 $3
# 0x3d94
sltu $23 $22 $30
# 0x3d98
add $2 $18 $23
# 0x3d9c
xor $20 $15 $20
# 0x3da0
sll $3 $10 26
# 0x3da4
or $16 $30 $5
# 0x3da8
subu $27 $14 $12
# 0x3dac
multu $24 $27
# 0x3db0
sb $11 30($0)
# 0x3db4
sw $20 100($0)
# 0x3db8
sub $6 $3 $2
# 0x3dbc
lhu $27 16($0)
# 0x3dc0
sh $13 22($0)
# 0x3dc4
or $22 $11 $12
# 0x3dc8
sb $22 12($0)
# 0x3dcc
lui $11 0xca5d
# 0x3dd0
addiu $23 $2 6340
# 0x3dd4
sh $31 0($0)
# 0x3dd8
subu $9 $17 $10
# 0x3ddc
subu $19 $13 $20
# 0x3de0
nor $24 $22 $30
# 0x3de4
slti $17 $18 -31390
# 0x3de8
sh $11 26($0)
# 0x3dec
lw $8 24($0)
# 0x3df0
sw $8 4($0)
# 0x3df4
lb $23 15($0)
# 0x3df8
slti $16 $5 -29807
# 0x3dfc
addiu $7 $12 16964
# 0x3e00
lh $1 42($0)
# 0x3e04
lbu $19 5($0)
# 0x3e08
mthi $31
# 0x3e0c
srav $19 $16 $15
# 0x3e10
lhu $10 8($0)
# 0x3e14
slti $26 $31 30985
# 0x3e18
ori $5 $7 0x9e40
# 0x3e1c
lw $30 84($0)
# 0x3e20
nor $15 $7 $15
# 0x3e24
lhu $25 14($0)
# 0x3e28
sub $23 $3 $15
# 0x3e2c
or $13 $16 $4
# 0x3e30
slti $7 $2 -29958
# 0x3e34
lui $22 0x42d8
# 0x3e38
lb $2 13($0)
# 0x3e3c
sltu $7 $30 $14
# 0x3e40
ori $10 $18 0x2f83
# 0x3e44
multu $4 $9
# 0x3e48
sltiu $25 $9 31788
# 0x3e4c
addi $22 $7 -6076
# 0x3e50
or $8 $3 $25
# 0x3e54
and $2 $18 $11
# 0x3e58
andi $14 $16 0x05f6
# 0x3e5c
addi $21 $26 11758
# 0x3e60
srav $5 $13 $2
# 0x3e64
nor $17 $6 $27
# 0x3e68
srl $16 $17 30
# 0x3e6c
lbu $17 18($0)
# 0x3e70
addu $8 $30 $7
# 0x3e74
sh $1 14($0)
# 0x3e78
addi $17 $21 26047
# 0x3e7c
sra $21 $4 16
# 0x3e80
sw $31 28($0)
# 0x3e84
addi $3 $10 17052
# 0x3e88
sh $10 26($0)
# 0x3e8c
sw $16 56($0)
# 0x3e90
andi $20 $26 0xfb90
# 0x3e94
andi $7 $30 0xef86
# 0x3e98
sra $6 $14 24
# 0x3e9c
or $24 $3 $13
# 0x3ea0
sh $26 36($0)
# 0x3ea4
lw $17 112($0)
# 0x3ea8
srav $5 $26 $17
# 0x3eac
lui $27 0x7668
# 0x3eb0
mfhi $3
# 0x3eb4
sltu $8 $3 $15
# 0x3eb8
andi $11 $1 0x644a
# 0x3ebc
lh $16 4($0)
# 0x3ec0
mfhi $11
# 0x3ec4
slti $5 $31 15856
# 0x3ec8
sub $17 $16 $17
# 0x3ecc
or $15 $19 $26
# 0x3ed0
slti $18 $7 24162
# 0x3ed4
multu $3 $14
# 0x3ed8
lui $27 0x8628
# 0x3edc
mthi $25
# 0x3ee0
sub $31 $3 $27
# 0x3ee4
sh $12 56($0)
# 0x3ee8
xori $10 $11 0x469c
# 0x3eec
lb $11 20($0)
# 0x3ef0
lbu $22 8($0)
# 0x3ef4
sltu $16 $18 $25
# 0x3ef8
xori $18 $5 0x229a
# 0x3efc
or $11 $19 $5
# 0x3f00
srlv $13 $8 $30
# 0x3f04
mtlo $24
# 0x3f08
srlv $24 $31 $17
# 0x3f0c
sub $26 $11 $17
# 0x3f10
lw $21 16($0)
# 0x3f14
sw $24 60($0)
# 0x3f18
mthi $23
# 0x3f1c
mtlo $14
# 0x3f20
nor $19 $21 $12
# 0x3f24
ori $26 $10 0x1720
# 0x3f28
lui $14 0x0f90
# 0x3f2c
addu $9 $30 $2
# 0x3f30
ori $26 $3 0x8d86
# 0x3f34
xor $15 $23 $17
# 0x3f38
srav $5 $9 $2
# 0x3f3c
add $2 $14 $4
# 0x3f40
andi $25 $20 0x1c23
# 0x3f44
sh $8 2($0)
# 0x3f48
sw $9 64($0)
# 0x3f4c
sltiu $19 $3 30356
# 0x3f50
lw $13 12($0)
# 0x3f54
sh $26 44($0)
# 0x3f58
sb $22 26($0)
# 0x3f5c
ori $27 $31 0x3de4
# 0x3f60
mfhi $6
# 0x3f64
srl $13 $31 18
# 0x3f68
sll $20 $6 7
# 0x3f6c
sub $21 $27 $9
# 0x3f70
nor $9 $15 $1
# 0x3f74
add $21 $15 $20
# 0x3f78
srlv $15 $16 $2
# 0x3f7c
lhu $31 24($0)
# 0x3f80
and $14 $17 $19
# 0x3f84
lh $21 20($0)
# 0x3f88
slt $25 $8 $27
# 0x3f8c
lhu $8 8($0)
# 0x3f90
mthi $13
# 0x3f94
andi $22 $16 0xd27b
# 0x3f98
lbu $2 30($0)
# 0x3f9c
mult $1 $3
# 0x3fa0
mtlo $15

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop