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
mult $21 $9
# 0x3008
andi $15 $24 0x3eeb
# 0x300c
sw $10 64($0)
# 0x3010
srlv $30 $20 $24
# 0x3014
mthi $30
# 0x3018
mflo $22
# 0x301c
sll $20 $5 2
# 0x3020
and $1 $3 $8
# 0x3024
sh $25 30($0)
# 0x3028
ori $13 $25 0xd842
# 0x302c
lh $13 24($0)
# 0x3030
lh $22 14($0)
# 0x3034
srl $18 $7 4
# 0x3038
and $27 $21 $2
# 0x303c
sh $1 52($0)
# 0x3040
ori $7 $27 0x6cd8
# 0x3044
sra $11 $23 22
# 0x3048
addi $11 $25 24134
# 0x304c
ori $3 $7 0xc793
# 0x3050
srl $18 $27 0
# 0x3054
lhu $15 2($0)
# 0x3058
lw $11 104($0)
# 0x305c
or $24 $4 $11
# 0x3060
and $31 $15 $31
# 0x3064
srlv $21 $2 $1
# 0x3068
sh $2 16($0)
# 0x306c
sb $13 31($0)
# 0x3070
and $31 $6 $21
# 0x3074
or $14 $30 $13
# 0x3078
sllv $26 $19 $15
# 0x307c
slt $30 $22 $31
# 0x3080
or $23 $11 $16
# 0x3084
sb $10 11($0)
# 0x3088
sw $27 0($0)
# 0x308c
lbu $27 0($0)
# 0x3090
add $9 $6 $22
# 0x3094
lb $12 31($0)
# 0x3098
addu $10 $19 $1
# 0x309c
srl $9 $17 28
# 0x30a0
mtlo $10
# 0x30a4
sub $21 $30 $19
# 0x30a8
mtlo $9
# 0x30ac
lhu $21 12($0)
# 0x30b0
xor $1 $26 $18
# 0x30b4
addi $23 $24 11083
# 0x30b8
addu $3 $23 $3
# 0x30bc
subu $19 $20 $26
# 0x30c0
srlv $12 $26 $2
# 0x30c4
andi $1 $21 0x559b
# 0x30c8
xor $25 $11 $23
# 0x30cc
mtlo $12
# 0x30d0
mfhi $9
# 0x30d4
lw $23 124($0)
# 0x30d8
srl $8 $5 27
# 0x30dc
srav $17 $1 $13
# 0x30e0
addi $17 $9 13734
# 0x30e4
subu $22 $2 $26
# 0x30e8
subu $2 $18 $13
# 0x30ec
slt $2 $21 $9
# 0x30f0
nor $23 $22 $30
# 0x30f4
sll $15 $9 9
# 0x30f8
subu $7 $30 $11
# 0x30fc
add $5 $24 $1
# 0x3100
nor $11 $10 $30
# 0x3104
or $15 $24 $9
# 0x3108
add $16 $27 $24
# 0x310c
srl $17 $31 4
# 0x3110
lhu $31 2($0)
# 0x3114
lbu $18 3($0)
# 0x3118
sltu $17 $30 $3
# 0x311c
lw $15 24($0)
# 0x3120
slti $8 $27 -1055
# 0x3124
multu $19 $25
# 0x3128
lh $23 28($0)
# 0x312c
sub $25 $25 $1
# 0x3130
slti $19 $6 -2077
# 0x3134
sh $10 26($0)
# 0x3138
srl $19 $27 31
# 0x313c
mthi $15
# 0x3140
sh $16 2($0)
# 0x3144
and $9 $15 $25
# 0x3148
multu $11 $21
# 0x314c
xor $18 $20 $27
# 0x3150
sh $15 6($0)
# 0x3154
add $17 $18 $20
# 0x3158
addiu $18 $20 18496
# 0x315c
andi $9 $18 0x820f
# 0x3160
mthi $1
# 0x3164
sw $16 8($0)
# 0x3168
lb $16 28($0)
# 0x316c
sltu $4 $17 $4
# 0x3170
addu $22 $7 $5
# 0x3174
mult $24 $7
# 0x3178
lw $18 20($0)
# 0x317c
srl $6 $21 22
# 0x3180
slti $6 $6 -16150
# 0x3184
lb $20 13($0)
# 0x3188
add $11 $3 $15
# 0x318c
and $16 $4 $11
# 0x3190
sh $1 8($0)
# 0x3194
lhu $23 6($0)
# 0x3198
add $13 $9 $2
# 0x319c
mflo $21
# 0x31a0
mfhi $19
# 0x31a4
lh $1 8($0)
# 0x31a8
sll $26 $10 18
# 0x31ac
add $19 $22 $27
# 0x31b0
lw $27 4($0)
# 0x31b4
nor $25 $7 $1
# 0x31b8
sh $15 62($0)
# 0x31bc
sb $26 22($0)
# 0x31c0
srlv $25 $8 $13
# 0x31c4
mult $11 $20
# 0x31c8
mthi $27
# 0x31cc
andi $27 $22 0xd444
# 0x31d0
sw $6 8($0)
# 0x31d4
sh $6 26($0)
# 0x31d8
sllv $14 $9 $9
# 0x31dc
mtlo $26
# 0x31e0
sub $9 $4 $11
# 0x31e4
sra $26 $18 5
# 0x31e8
or $6 $17 $23
# 0x31ec
mtlo $1
# 0x31f0
or $6 $19 $16
# 0x31f4
sra $22 $12 16
# 0x31f8
add $11 $6 $27
# 0x31fc
slti $5 $17 -27692
# 0x3200
lhu $14 14($0)
# 0x3204
multu $17 $8
# 0x3208
and $17 $7 $27
# 0x320c
addi $25 $13 -25968
# 0x3210
mfhi $23
# 0x3214
lw $7 36($0)
# 0x3218
lbu $1 22($0)
# 0x321c
lb $23 13($0)
# 0x3220
xori $3 $13 0xb772
# 0x3224
lui $18 0x5c10
# 0x3228
sll $7 $27 12
# 0x322c
srav $19 $4 $12
# 0x3230
lbu $8 23($0)
# 0x3234
lui $12 0x3836
# 0x3238
sw $18 0($0)
# 0x323c
lw $27 108($0)
# 0x3240
lui $4 0xcbec
# 0x3244
lw $26 116($0)
# 0x3248
xor $9 $21 $9
# 0x324c
sltiu $23 $21 11505
# 0x3250
andi $11 $20 0x35ea
# 0x3254
mflo $6
# 0x3258
mthi $20
# 0x325c
lb $8 29($0)
# 0x3260
sh $26 38($0)
# 0x3264
sh $1 24($0)
# 0x3268
mfhi $19
# 0x326c
sub $19 $31 $20
# 0x3270
sltu $10 $22 $20
# 0x3274
mthi $30
# 0x3278
slt $6 $9 $5
# 0x327c
addiu $20 $22 8399
# 0x3280
xor $13 $19 $16
# 0x3284
srlv $4 $21 $21
# 0x3288
sb $2 2($0)
# 0x328c
sllv $18 $24 $19
# 0x3290
add $21 $7 $23
# 0x3294
xori $6 $19 0x3576
# 0x3298
or $9 $22 $12
# 0x329c
andi $10 $11 0xdb7a
# 0x32a0
and $25 $11 $16
# 0x32a4
sll $30 $6 29
# 0x32a8
sra $1 $10 11
# 0x32ac
sltu $27 $4 $25
# 0x32b0
lh $11 28($0)
# 0x32b4
srl $24 $14 29
# 0x32b8
lw $22 16($0)
# 0x32bc
sb $21 4($0)
# 0x32c0
andi $10 $4 0xb4a0
# 0x32c4
xor $8 $16 $15
# 0x32c8
sltiu $6 $25 12078
# 0x32cc
lhu $9 24($0)
# 0x32d0
srl $14 $18 5
# 0x32d4
lh $13 26($0)
# 0x32d8
sb $6 5($0)
# 0x32dc
slti $15 $12 -13227
# 0x32e0
srlv $18 $20 $20
# 0x32e4
mthi $18
# 0x32e8
mthi $19
# 0x32ec
sub $25 $14 $20
# 0x32f0
sra $3 $24 10
# 0x32f4
and $23 $10 $3
# 0x32f8
lh $1 4($0)
# 0x32fc
sh $21 2($0)
# 0x3300
add $1 $24 $10
# 0x3304
sw $6 28($0)
# 0x3308
or $22 $14 $10
# 0x330c
mult $21 $1
# 0x3310
sltiu $18 $27 13154
# 0x3314
slt $23 $26 $24
# 0x3318
addu $24 $31 $19
# 0x331c
sltiu $22 $18 32081
# 0x3320
addi $10 $27 -24242
# 0x3324
lw $30 16($0)
# 0x3328
slt $1 $25 $13
# 0x332c
mult $27 $20
# 0x3330
mult $6 $14
# 0x3334
srl $21 $9 5
# 0x3338
ori $20 $19 0xd7ad
# 0x333c
multu $6 $12
# 0x3340
mflo $31
# 0x3344
mfhi $20
# 0x3348
mfhi $8
# 0x334c
subu $31 $19 $5
# 0x3350
srlv $14 $20 $30
# 0x3354
slt $11 $15 $24
# 0x3358
sh $14 34($0)
# 0x335c
mtlo $14
# 0x3360
lh $10 30($0)
# 0x3364
lb $24 8($0)
# 0x3368
mult $12 $23
# 0x336c
lw $24 4($0)
# 0x3370
multu $26 $4
# 0x3374
sh $31 50($0)
# 0x3378
lhu $31 8($0)
# 0x337c
sb $12 22($0)
# 0x3380
sh $4 46($0)
# 0x3384
lw $13 104($0)
# 0x3388
lb $14 18($0)
# 0x338c
lhu $20 28($0)
# 0x3390
add $10 $20 $27
# 0x3394
multu $27 $27
# 0x3398
addiu $21 $15 17890
# 0x339c
slti $22 $31 -31428
# 0x33a0
slt $19 $15 $10
# 0x33a4
mfhi $11
# 0x33a8
multu $5 $31
# 0x33ac
lw $18 44($0)
# 0x33b0
lh $21 8($0)
# 0x33b4
slt $10 $13 $30
# 0x33b8
lbu $9 23($0)
# 0x33bc
xor $30 $27 $25
# 0x33c0
addi $25 $14 16968
# 0x33c4
mthi $18
# 0x33c8
sh $4 58($0)
# 0x33cc
lh $5 2($0)
# 0x33d0
and $25 $6 $31
# 0x33d4
xor $7 $31 $23
# 0x33d8
sb $10 16($0)
# 0x33dc
mtlo $31
# 0x33e0
mthi $1
# 0x33e4
sh $3 18($0)
# 0x33e8
sh $3 0($0)
# 0x33ec
lhu $11 8($0)
# 0x33f0
nor $3 $27 $15
# 0x33f4
sb $23 21($0)
# 0x33f8
addi $9 $16 -21749
# 0x33fc
sll $18 $22 24
# 0x3400
mflo $8
# 0x3404
srlv $26 $5 $14
# 0x3408
sw $8 24($0)
# 0x340c
and $18 $30 $12
# 0x3410
xor $4 $20 $15
# 0x3414
sw $15 8($0)
# 0x3418
subu $22 $6 $1
# 0x341c
subu $10 $16 $2
# 0x3420
mult $5 $1
# 0x3424
mflo $7
# 0x3428
add $9 $10 $25
# 0x342c
addiu $9 $2 28919
# 0x3430
sub $13 $2 $22
# 0x3434
nor $13 $21 $14
# 0x3438
sltu $24 $25 $9
# 0x343c
srlv $8 $9 $13
# 0x3440
multu $20 $9
# 0x3444
mult $16 $23
# 0x3448
sw $18 92($0)
# 0x344c
sw $3 40($0)
# 0x3450
and $12 $31 $13
# 0x3454
lbu $14 17($0)
# 0x3458
mtlo $17
# 0x345c
srl $4 $13 25
# 0x3460
multu $19 $21
# 0x3464
xor $9 $7 $18
# 0x3468
sb $13 17($0)
# 0x346c
lw $26 28($0)
# 0x3470
sra $10 $10 22
# 0x3474
addiu $23 $14 6962
# 0x3478
lw $11 16($0)
# 0x347c
sll $18 $23 28
# 0x3480
mflo $26
# 0x3484
sb $21 23($0)
# 0x3488
lw $18 8($0)
# 0x348c
lw $3 96($0)
# 0x3490
addiu $2 $31 26416
# 0x3494
add $4 $7 $22
# 0x3498
lbu $3 15($0)
# 0x349c
srl $20 $23 13
# 0x34a0
mtlo $15
# 0x34a4
add $22 $22 $5
# 0x34a8
slti $4 $4 16131
# 0x34ac
multu $9 $30
# 0x34b0
addiu $24 $17 15970
# 0x34b4
sb $9 7($0)
# 0x34b8
srlv $18 $13 $23
# 0x34bc
lbu $17 28($0)
# 0x34c0
lh $31 4($0)
# 0x34c4
lh $3 12($0)
# 0x34c8
sb $11 25($0)
# 0x34cc
lw $23 72($0)
# 0x34d0
mfhi $13
# 0x34d4
add $24 $13 $22
# 0x34d8
sub $23 $30 $1
# 0x34dc
sltiu $17 $27 12496
# 0x34e0
sra $26 $2 31
# 0x34e4
lbu $17 16($0)
# 0x34e8
sw $17 116($0)
# 0x34ec
mflo $3
# 0x34f0
and $20 $25 $21
# 0x34f4
sltiu $21 $12 28522
# 0x34f8
ori $10 $3 0x2f5d
# 0x34fc
ori $3 $5 0x6b1e
# 0x3500
and $15 $20 $26
# 0x3504
lbu $23 19($0)
# 0x3508
andi $16 $24 0x67b6
# 0x350c
xori $30 $17 0x2164
# 0x3510
and $14 $6 $24
# 0x3514
mflo $24
# 0x3518
sw $4 92($0)
# 0x351c
lhu $7 2($0)
# 0x3520
lh $15 30($0)
# 0x3524
add $14 $5 $23
# 0x3528
or $4 $7 $24
# 0x352c
mfhi $3
# 0x3530
addu $24 $8 $20
# 0x3534
sw $27 12($0)
# 0x3538
lhu $7 4($0)
# 0x353c
addi $6 $31 18630
# 0x3540
slt $8 $16 $18
# 0x3544
lw $1 28($0)
# 0x3548
lh $9 12($0)
# 0x354c
srl $6 $8 19
# 0x3550
sb $25 27($0)
# 0x3554
sw $17 4($0)
# 0x3558
sllv $21 $12 $17
# 0x355c
lw $3 4($0)
# 0x3560
srl $31 $24 13
# 0x3564
addu $6 $12 $25
# 0x3568
sub $9 $17 $23
# 0x356c
lbu $25 16($0)
# 0x3570
mthi $2
# 0x3574
sll $31 $22 17
# 0x3578
lw $12 56($0)
# 0x357c
slti $14 $15 9028
# 0x3580
nor $26 $23 $15
# 0x3584
and $15 $26 $31
# 0x3588
srl $15 $15 20
# 0x358c
sw $23 28($0)
# 0x3590
subu $5 $1 $13
# 0x3594
or $3 $30 $12
# 0x3598
srlv $17 $7 $18
# 0x359c
lbu $21 28($0)
# 0x35a0
lui $27 0x7fc2
# 0x35a4
mtlo $30
# 0x35a8
lb $10 13($0)
# 0x35ac
sub $16 $4 $19
# 0x35b0
lh $25 28($0)
# 0x35b4
andi $9 $13 0xf54b
# 0x35b8
xor $17 $7 $7
# 0x35bc
sllv $12 $6 $10
# 0x35c0
addi $11 $30 12663
# 0x35c4
sll $21 $14 9
# 0x35c8
lui $7 0x2cc2
# 0x35cc
lh $8 62($0)
# 0x35d0
mtlo $6
# 0x35d4
sllv $17 $1 $10
# 0x35d8
sra $6 $11 26
# 0x35dc
sb $14 20($0)
# 0x35e0
xor $30 $22 $30
# 0x35e4
sw $31 4($0)
# 0x35e8
lhu $9 14($0)
# 0x35ec
lh $1 24($0)
# 0x35f0
xori $11 $17 0x10a8
# 0x35f4
xor $24 $30 $2
# 0x35f8
srl $15 $31 16
# 0x35fc
or $13 $11 $1
# 0x3600
sh $20 10($0)
# 0x3604
mtlo $30
# 0x3608
addiu $2 $9 23279
# 0x360c
mfhi $8
# 0x3610
lhu $22 0($0)
# 0x3614
sh $4 10($0)
# 0x3618
sh $24 22($0)
# 0x361c
mthi $7
# 0x3620
lh $19 0($0)
# 0x3624
lh $13 14($0)
# 0x3628
srl $19 $6 5
# 0x362c
lb $14 9($0)
# 0x3630
addiu $9 $20 22738
# 0x3634
lb $25 11($0)
# 0x3638
slti $31 $23 -24284
# 0x363c
lw $30 20($0)
# 0x3640
xor $2 $21 $16
# 0x3644
xor $31 $20 $12
# 0x3648
lui $6 0x410b
# 0x364c
xori $2 $3 0x06a4
# 0x3650
addu $30 $24 $16
# 0x3654
srl $31 $25 11
# 0x3658
xor $26 $31 $15
# 0x365c
sub $24 $31 $7
# 0x3660
sw $2 20($0)
# 0x3664
slti $17 $26 -6135
# 0x3668
sltu $12 $22 $19
# 0x366c
lb $25 12($0)
# 0x3670
lh $15 6($0)
# 0x3674
sllv $10 $8 $2
# 0x3678
sll $3 $22 15
# 0x367c
subu $14 $10 $20
# 0x3680
mtlo $23
# 0x3684
srav $9 $11 $19
# 0x3688
mfhi $27
# 0x368c
lw $2 12($0)
# 0x3690
sltiu $27 $12 7901
# 0x3694
and $1 $8 $17
# 0x3698
sll $20 $6 11
# 0x369c
lw $23 20($0)
# 0x36a0
lui $27 0xfe6a
# 0x36a4
addi $23 $26 14167
# 0x36a8
addu $14 $4 $7
# 0x36ac
add $12 $27 $2
# 0x36b0
lw $26 108($0)
# 0x36b4
addu $24 $27 $25
# 0x36b8
mult $13 $13
# 0x36bc
srl $18 $6 27
# 0x36c0
ori $16 $24 0x6742
# 0x36c4
addiu $5 $12 11323
# 0x36c8
lw $24 124($0)
# 0x36cc
mfhi $6
# 0x36d0
sltu $16 $1 $3
# 0x36d4
addiu $6 $20 30314
# 0x36d8
ori $21 $30 0x99c1
# 0x36dc
add $19 $10 $31
# 0x36e0
sub $18 $16 $2
# 0x36e4
slt $7 $17 $24
# 0x36e8
lui $13 0xe220
# 0x36ec
mult $18 $16
# 0x36f0
add $14 $30 $6
# 0x36f4
andi $5 $30 0x7c39
# 0x36f8
srlv $3 $13 $31
# 0x36fc
srav $24 $31 $14
# 0x3700
sllv $9 $30 $14
# 0x3704
lhu $16 26($0)
# 0x3708
srlv $16 $23 $11
# 0x370c
sllv $11 $27 $26
# 0x3710
sw $25 28($0)
# 0x3714
sh $10 54($0)
# 0x3718
addi $9 $23 3663
# 0x371c
sh $3 60($0)
# 0x3720
sw $23 92($0)
# 0x3724
mflo $15
# 0x3728
andi $23 $11 0xd4e8
# 0x372c
sb $12 16($0)
# 0x3730
ori $22 $10 0xfb57
# 0x3734
slt $16 $14 $8
# 0x3738
sw $30 20($0)
# 0x373c
mthi $7
# 0x3740
lw $6 28($0)
# 0x3744
or $22 $20 $25
# 0x3748
lw $4 40($0)
# 0x374c
xori $13 $8 0xf0c9
# 0x3750
ori $11 $1 0x9c34
# 0x3754
sb $18 10($0)
# 0x3758
xor $22 $30 $25
# 0x375c
sltiu $10 $20 8477
# 0x3760
mthi $15
# 0x3764
ori $9 $14 0x6140
# 0x3768
addu $22 $30 $19
# 0x376c
slt $13 $15 $1
# 0x3770
xor $3 $3 $1
# 0x3774
addu $8 $13 $8
# 0x3778
sltiu $1 $22 13125
# 0x377c
lb $31 13($0)
# 0x3780
or $9 $10 $26
# 0x3784
mult $19 $24
# 0x3788
nor $11 $20 $12
# 0x378c
lh $7 6($0)
# 0x3790
srl $1 $15 23
# 0x3794
mflo $27
# 0x3798
sub $25 $31 $14
# 0x379c
lui $15 0x4d5a
# 0x37a0
lui $3 0x359e
# 0x37a4
lh $4 14($0)
# 0x37a8
addi $19 $18 -23246
# 0x37ac
srlv $6 $11 $1
# 0x37b0
sb $14 5($0)
# 0x37b4
sltiu $31 $6 1569
# 0x37b8
slti $11 $11 -12294
# 0x37bc
sllv $22 $15 $7
# 0x37c0
sh $13 22($0)
# 0x37c4
sh $19 6($0)
# 0x37c8
nor $23 $21 $5
# 0x37cc
mtlo $1
# 0x37d0
addiu $14 $13 11231
# 0x37d4
lw $3 28($0)
# 0x37d8
sub $23 $26 $30
# 0x37dc
slti $23 $5 -7703
# 0x37e0
slti $31 $19 199
# 0x37e4
sltu $9 $18 $6
# 0x37e8
sw $21 44($0)
# 0x37ec
lw $26 28($0)
# 0x37f0
multu $13 $9
# 0x37f4
srl $3 $26 24
# 0x37f8
xori $27 $14 0xd403
# 0x37fc
sllv $7 $30 $2
# 0x3800
sw $8 20($0)
# 0x3804
sllv $24 $17 $9
# 0x3808
sltu $12 $5 $16
# 0x380c
sh $1 16($0)
# 0x3810
sllv $27 $18 $19
# 0x3814
mtlo $20
# 0x3818
lw $21 16($0)
# 0x381c
mfhi $16
# 0x3820
mult $9 $19
# 0x3824
lh $24 12($0)
# 0x3828
and $24 $2 $19
# 0x382c
sltiu $31 $18 24196
# 0x3830
nor $10 $4 $15
# 0x3834
lw $5 16($0)
# 0x3838
mult $11 $24
# 0x383c
lw $1 8($0)
# 0x3840
lhu $4 16($0)
# 0x3844
sub $2 $20 $17
# 0x3848
sllv $2 $2 $10
# 0x384c
addu $25 $6 $22
# 0x3850
lui $8 0x1cc5
# 0x3854
sll $25 $16 2
# 0x3858
sub $4 $1 $12
# 0x385c
sw $31 28($0)
# 0x3860
mthi $3
# 0x3864
xor $7 $2 $3
# 0x3868
mfhi $3
# 0x386c
and $26 $21 $18
# 0x3870
sub $18 $8 $30
# 0x3874
srlv $20 $12 $10
# 0x3878
ori $19 $4 0x2a7b
# 0x387c
lw $9 112($0)
# 0x3880
mult $25 $9
# 0x3884
addu $31 $21 $12
# 0x3888
add $10 $10 $18
# 0x388c
slti $31 $3 -13113
# 0x3890
lh $1 52($0)
# 0x3894
sub $19 $22 $5
# 0x3898
and $15 $22 $18
# 0x389c
slt $26 $17 $7
# 0x38a0
srl $21 $4 3
# 0x38a4
lw $13 60($0)
# 0x38a8
nor $14 $16 $15
# 0x38ac
addu $12 $22 $20
# 0x38b0
addi $26 $7 11464
# 0x38b4
add $15 $22 $9
# 0x38b8
lb $24 7($0)
# 0x38bc
sra $23 $19 9
# 0x38c0
sra $20 $7 9
# 0x38c4
sub $31 $30 $4
# 0x38c8
lw $19 68($0)
# 0x38cc
srlv $12 $3 $25
# 0x38d0
lh $19 14($0)
# 0x38d4
slt $20 $13 $26
# 0x38d8
sub $3 $9 $22
# 0x38dc
sub $16 $24 $18
# 0x38e0
mflo $26
# 0x38e4
lw $22 16($0)
# 0x38e8
sw $25 24($0)
# 0x38ec
sb $24 24($0)
# 0x38f0
srav $27 $19 $21
# 0x38f4
lui $11 0x4dff
# 0x38f8
lb $20 12($0)
# 0x38fc
sllv $7 $19 $4
# 0x3900
mtlo $11
# 0x3904
lb $6 7($0)
# 0x3908
mthi $1
# 0x390c
sllv $21 $7 $17
# 0x3910
xor $16 $30 $16
# 0x3914
sub $6 $18 $21
# 0x3918
lbu $16 9($0)
# 0x391c
sltu $5 $5 $5
# 0x3920
lw $9 80($0)
# 0x3924
sh $14 24($0)
# 0x3928
sw $27 32($0)
# 0x392c
sh $5 2($0)
# 0x3930
addu $16 $12 $13
# 0x3934
sb $31 27($0)
# 0x3938
lw $25 52($0)
# 0x393c
lw $27 28($0)
# 0x3940
andi $30 $30 0x3ebc
# 0x3944
or $16 $11 $27
# 0x3948
sltiu $22 $2 26131
# 0x394c
sh $4 20($0)
# 0x3950
slti $2 $18 23283
# 0x3954
mfhi $30
# 0x3958
lui $23 0x06d1
# 0x395c
lbu $18 31($0)
# 0x3960
slt $9 $21 $30
# 0x3964
lh $14 30($0)
# 0x3968
sh $21 50($0)
# 0x396c
addiu $10 $16 31732
# 0x3970
addu $20 $3 $18
# 0x3974
add $20 $26 $24
# 0x3978
srlv $19 $26 $5
# 0x397c
srav $19 $25 $13
# 0x3980
nor $2 $25 $12
# 0x3984
sh $24 32($0)
# 0x3988
or $20 $18 $22
# 0x398c
lhu $11 8($0)
# 0x3990
add $3 $20 $1
# 0x3994
sra $5 $15 26
# 0x3998
and $16 $24 $3
# 0x399c
addi $20 $22 -8468
# 0x39a0
sh $3 6($0)
# 0x39a4
mflo $16
# 0x39a8
xori $16 $12 0x59a1
# 0x39ac
add $19 $15 $26
# 0x39b0
nor $6 $17 $3
# 0x39b4
sltiu $30 $31 7456
# 0x39b8
andi $12 $25 0x6a87
# 0x39bc
sltu $18 $14 $20
# 0x39c0
sllv $27 $11 $19
# 0x39c4
sra $7 $15 16
# 0x39c8
slt $13 $8 $12
# 0x39cc
xor $24 $11 $27
# 0x39d0
sllv $19 $6 $12
# 0x39d4
or $17 $15 $6
# 0x39d8
nor $27 $22 $30
# 0x39dc
sltu $30 $19 $25
# 0x39e0
srav $12 $22 $9
# 0x39e4
multu $13 $12
# 0x39e8
addu $21 $19 $1
# 0x39ec
sw $12 28($0)
# 0x39f0
sw $13 28($0)
# 0x39f4
sltu $18 $4 $22
# 0x39f8
slti $16 $25 -1072
# 0x39fc
mthi $21
# 0x3a00
mfhi $15
# 0x3a04
ori $23 $18 0x31ed
# 0x3a08
sh $17 12($0)
# 0x3a0c
lh $11 30($0)
# 0x3a10
andi $3 $6 0xdad4
# 0x3a14
mflo $1
# 0x3a18
mfhi $12
# 0x3a1c
srl $30 $26 13
# 0x3a20
sltu $31 $21 $2
# 0x3a24
multu $15 $11
# 0x3a28
srav $14 $3 $6
# 0x3a2c
xori $11 $4 0xfbd6
# 0x3a30
slti $7 $25 -27504
# 0x3a34
sltiu $31 $8 1165
# 0x3a38
lhu $23 26($0)
# 0x3a3c
sltiu $5 $2 7187
# 0x3a40
mtlo $30
# 0x3a44
nor $27 $24 $19
# 0x3a48
lw $8 104($0)
# 0x3a4c
lw $25 4($0)
# 0x3a50
xor $5 $26 $20
# 0x3a54
lh $1 12($0)
# 0x3a58
lhu $7 12($0)
# 0x3a5c
mflo $25
# 0x3a60
lh $15 58($0)
# 0x3a64
sra $11 $15 9
# 0x3a68
lb $18 1($0)
# 0x3a6c
lh $9 0($0)
# 0x3a70
mflo $14
# 0x3a74
sllv $11 $26 $5
# 0x3a78
sw $19 80($0)
# 0x3a7c
sh $9 22($0)
# 0x3a80
sra $5 $13 20
# 0x3a84
sllv $17 $7 $13
# 0x3a88
addi $20 $3 -17638
# 0x3a8c
lhu $19 20($0)
# 0x3a90
lbu $23 29($0)
# 0x3a94
mflo $15
# 0x3a98
sltiu $30 $19 17353
# 0x3a9c
srav $21 $6 $15
# 0x3aa0
lhu $21 8($0)
# 0x3aa4
srl $13 $13 22
# 0x3aa8
multu $24 $6
# 0x3aac
lw $18 28($0)
# 0x3ab0
subu $22 $13 $23
# 0x3ab4
sb $15 13($0)
# 0x3ab8
sltiu $25 $21 6954
# 0x3abc
srl $27 $31 30
# 0x3ac0
and $11 $13 $23
# 0x3ac4
and $30 $30 $7
# 0x3ac8
addiu $6 $23 23560
# 0x3acc
or $1 $13 $15
# 0x3ad0
sltu $31 $18 $12
# 0x3ad4
xori $11 $19 0x931e
# 0x3ad8
lh $1 56($0)
# 0x3adc
mthi $7
# 0x3ae0
andi $11 $14 0x8af3
# 0x3ae4
mthi $30
# 0x3ae8
sw $14 24($0)
# 0x3aec
multu $25 $5
# 0x3af0
sh $12 4($0)
# 0x3af4
sub $10 $20 $18
# 0x3af8
sllv $21 $5 $17
# 0x3afc
sub $19 $14 $15
# 0x3b00
sub $1 $31 $15
# 0x3b04
lh $13 0($0)
# 0x3b08
sltiu $1 $1 665
# 0x3b0c
addiu $2 $8 14540
# 0x3b10
mtlo $5
# 0x3b14
mtlo $2
# 0x3b18
sll $26 $3 12
# 0x3b1c
sb $26 28($0)
# 0x3b20
mult $13 $25
# 0x3b24
addiu $14 $8 21249
# 0x3b28
sltiu $2 $16 14742
# 0x3b2c
sw $3 116($0)
# 0x3b30
addi $17 $8 12516
# 0x3b34
addiu $18 $27 21170
# 0x3b38
mult $12 $5
# 0x3b3c
sb $31 3($0)
# 0x3b40
sll $1 $1 21
# 0x3b44
mtlo $3
# 0x3b48
xori $11 $27 0x6601
# 0x3b4c
add $24 $8 $2
# 0x3b50
sra $25 $19 10
# 0x3b54
lw $2 52($0)
# 0x3b58
sh $1 46($0)
# 0x3b5c
mfhi $31
# 0x3b60
lh $10 4($0)
# 0x3b64
lw $19 12($0)
# 0x3b68
sb $5 29($0)
# 0x3b6c
srav $2 $25 $7
# 0x3b70
sub $12 $2 $20
# 0x3b74
sub $13 $2 $25
# 0x3b78
or $16 $5 $30
# 0x3b7c
sb $8 12($0)
# 0x3b80
sub $16 $7 $23
# 0x3b84
mthi $17
# 0x3b88
lhu $3 8($0)
# 0x3b8c
or $22 $13 $30
# 0x3b90
sw $3 104($0)
# 0x3b94
add $17 $23 $27
# 0x3b98
sltu $27 $24 $5
# 0x3b9c
andi $14 $9 0xa5d9
# 0x3ba0
sltiu $26 $30 25539
# 0x3ba4
lb $30 23($0)
# 0x3ba8
sh $9 0($0)
# 0x3bac
sw $17 84($0)
# 0x3bb0
xori $2 $24 0xc2fb
# 0x3bb4
nor $15 $25 $31
# 0x3bb8
mtlo $5
# 0x3bbc
sltu $13 $17 $1
# 0x3bc0
multu $13 $14
# 0x3bc4
mult $12 $18
# 0x3bc8
xor $4 $21 $30
# 0x3bcc
lh $25 18($0)
# 0x3bd0
andi $25 $9 0x7708
# 0x3bd4
mfhi $14
# 0x3bd8
addiu $5 $20 18101
# 0x3bdc
mult $1 $11
# 0x3be0
sub $9 $24 $20
# 0x3be4
lh $1 56($0)
# 0x3be8
addiu $13 $18 3200
# 0x3bec
add $1 $3 $3
# 0x3bf0
sb $6 22($0)
# 0x3bf4
lw $19 56($0)
# 0x3bf8
mthi $11
# 0x3bfc
andi $16 $7 0xf199
# 0x3c00
sllv $23 $13 $26
# 0x3c04
sllv $26 $6 $22
# 0x3c08
sltiu $8 $19 13273
# 0x3c0c
xor $14 $24 $12
# 0x3c10
subu $26 $5 $19
# 0x3c14
mflo $3
# 0x3c18
sltu $7 $26 $31
# 0x3c1c
sltiu $26 $2 32229
# 0x3c20
mtlo $20
# 0x3c24
sltiu $5 $25 22154
# 0x3c28
mtlo $8
# 0x3c2c
sllv $15 $22 $12
# 0x3c30
srav $13 $17 $15
# 0x3c34
ori $5 $30 0xf536
# 0x3c38
srl $27 $5 23
# 0x3c3c
srlv $23 $27 $30
# 0x3c40
mtlo $26
# 0x3c44
sra $4 $26 2
# 0x3c48
lb $14 5($0)
# 0x3c4c
lh $4 24($0)
# 0x3c50
sw $26 16($0)
# 0x3c54
lui $7 0xd3e4
# 0x3c58
or $17 $21 $1
# 0x3c5c
andi $15 $31 0xce07
# 0x3c60
srl $31 $1 13
# 0x3c64
lh $12 2($0)
# 0x3c68
addiu $11 $21 22074
# 0x3c6c
lhu $18 12($0)
# 0x3c70
multu $2 $23
# 0x3c74
lh $4 40($0)
# 0x3c78
nor $1 $20 $7
# 0x3c7c
srlv $10 $13 $25
# 0x3c80
mflo $27
# 0x3c84
mthi $6
# 0x3c88
sw $7 100($0)
# 0x3c8c
sw $13 4($0)
# 0x3c90
sllv $24 $25 $4
# 0x3c94
sh $2 14($0)
# 0x3c98
sb $17 30($0)
# 0x3c9c
mult $30 $22
# 0x3ca0
slti $14 $19 -1781
# 0x3ca4
sh $25 14($0)
# 0x3ca8
lbu $8 8($0)
# 0x3cac
xori $26 $23 0x2b06
# 0x3cb0
srl $15 $12 21
# 0x3cb4
lui $19 0x01ee
# 0x3cb8
add $23 $17 $26
# 0x3cbc
lbu $6 20($0)
# 0x3cc0
addu $1 $30 $21
# 0x3cc4
sh $17 26($0)
# 0x3cc8
addi $13 $24 6478
# 0x3ccc
lw $2 20($0)
# 0x3cd0
and $30 $10 $4
# 0x3cd4
lui $21 0x6d52
# 0x3cd8
sltiu $25 $12 12135
# 0x3cdc
lhu $21 4($0)
# 0x3ce0
addi $4 $17 14307
# 0x3ce4
sh $3 18($0)
# 0x3ce8
sw $30 64($0)
# 0x3cec
lh $10 16($0)
# 0x3cf0
mthi $25
# 0x3cf4
mtlo $31
# 0x3cf8
addiu $25 $16 4488
# 0x3cfc
add $9 $26 $20
# 0x3d00
mthi $20
# 0x3d04
sll $2 $15 13
# 0x3d08
xori $19 $25 0x8702
# 0x3d0c
lh $1 48($0)
# 0x3d10
sw $6 28($0)
# 0x3d14
mfhi $4
# 0x3d18
or $9 $6 $1
# 0x3d1c
mflo $25
# 0x3d20
lhu $2 0($0)
# 0x3d24
mthi $9
# 0x3d28
lui $2 0x147f
# 0x3d2c
srlv $13 $2 $27
# 0x3d30
mflo $14
# 0x3d34
lui $23 0x81c0
# 0x3d38
sltu $8 $31 $4
# 0x3d3c
addiu $21 $4 10696
# 0x3d40
sltiu $5 $15 8766
# 0x3d44
addi $7 $19 5496
# 0x3d48
mfhi $13
# 0x3d4c
sub $27 $15 $22
# 0x3d50
sub $16 $6 $31
# 0x3d54
sllv $11 $22 $7
# 0x3d58
mtlo $21
# 0x3d5c
sllv $8 $1 $9
# 0x3d60
srl $7 $26 0
# 0x3d64
sll $7 $15 14
# 0x3d68
mult $9 $31
# 0x3d6c
sh $7 6($0)
# 0x3d70
sra $3 $9 12
# 0x3d74
sw $1 4($0)
# 0x3d78
sw $26 36($0)
# 0x3d7c
srlv $17 $21 $23
# 0x3d80
lh $15 28($0)
# 0x3d84
slti $31 $23 12737
# 0x3d88
srlv $24 $15 $7
# 0x3d8c
addi $13 $2 -3893
# 0x3d90
mfhi $15
# 0x3d94
sh $17 4($0)
# 0x3d98
lh $27 0($0)
# 0x3d9c
nor $21 $26 $3
# 0x3da0
srlv $9 $27 $14
# 0x3da4
sb $11 2($0)
# 0x3da8
srlv $2 $21 $11
# 0x3dac
slti $10 $17 26746
# 0x3db0
subu $25 $11 $18
# 0x3db4
and $18 $24 $12
# 0x3db8
mtlo $3
# 0x3dbc
lw $15 72($0)
# 0x3dc0
add $13 $22 $6
# 0x3dc4
mthi $18
# 0x3dc8
nor $7 $22 $27
# 0x3dcc
lh $24 26($0)
# 0x3dd0
or $25 $21 $31
# 0x3dd4
xori $3 $17 0xc371
# 0x3dd8
sltu $22 $1 $12
# 0x3ddc
nor $16 $15 $7
# 0x3de0
xor $4 $4 $9
# 0x3de4
andi $12 $7 0x75c7
# 0x3de8
xori $8 $7 0x9d23
# 0x3dec
multu $4 $22
# 0x3df0
nor $31 $7 $13
# 0x3df4
mult $31 $27
# 0x3df8
addi $24 $30 13948
# 0x3dfc
srlv $2 $14 $14
# 0x3e00
sll $13 $16 17
# 0x3e04
multu $11 $16
# 0x3e08
andi $9 $30 0xe9eb
# 0x3e0c
srav $3 $14 $31
# 0x3e10
nor $3 $11 $11
# 0x3e14
sltu $11 $15 $9
# 0x3e18
lw $9 4($0)
# 0x3e1c
sllv $24 $8 $18
# 0x3e20
xori $18 $9 0xe291
# 0x3e24
lhu $2 12($0)
# 0x3e28
mfhi $8
# 0x3e2c
sllv $26 $24 $27
# 0x3e30
and $30 $26 $26
# 0x3e34
lb $14 17($0)
# 0x3e38
mult $26 $18
# 0x3e3c
lhu $26 16($0)
# 0x3e40
srlv $20 $1 $11
# 0x3e44
mfhi $6
# 0x3e48
nor $5 $22 $23
# 0x3e4c
xor $3 $25 $2
# 0x3e50
and $20 $5 $12
# 0x3e54
and $19 $6 $1
# 0x3e58
nor $3 $17 $5
# 0x3e5c
sb $8 18($0)
# 0x3e60
slt $18 $15 $5
# 0x3e64
slt $24 $20 $30
# 0x3e68
sw $27 24($0)
# 0x3e6c
slti $12 $21 -32463
# 0x3e70
sllv $13 $2 $27
# 0x3e74
lh $21 40($0)
# 0x3e78
sb $22 21($0)
# 0x3e7c
slt $11 $25 $18
# 0x3e80
subu $15 $19 $31
# 0x3e84
addu $17 $20 $24
# 0x3e88
sub $31 $25 $13
# 0x3e8c
addu $16 $19 $4
# 0x3e90
sllv $4 $24 $8
# 0x3e94
sub $20 $25 $23
# 0x3e98
multu $11 $31
# 0x3e9c
mfhi $11
# 0x3ea0
srl $17 $17 11
# 0x3ea4
sra $5 $23 27
# 0x3ea8
mflo $26
# 0x3eac
srl $2 $4 1
# 0x3eb0
slti $11 $10 6282
# 0x3eb4
sra $26 $22 30
# 0x3eb8
lh $14 2($0)
# 0x3ebc
xori $6 $1 0xeaae
# 0x3ec0
srl $17 $21 25
# 0x3ec4
multu $22 $27
# 0x3ec8
mfhi $15
# 0x3ecc
lui $23 0xdf44
# 0x3ed0
srav $16 $23 $17
# 0x3ed4
srav $21 $24 $5
# 0x3ed8
mfhi $15
# 0x3edc
sltiu $16 $16 11501
# 0x3ee0
subu $31 $24 $14
# 0x3ee4
sll $2 $19 5
# 0x3ee8
slt $31 $17 $16
# 0x3eec
slti $15 $12 -30018
# 0x3ef0
lui $21 0xb91a
# 0x3ef4
lw $27 24($0)
# 0x3ef8
lb $10 19($0)
# 0x3efc
sub $16 $19 $22
# 0x3f00
lw $16 48($0)
# 0x3f04
mflo $23
# 0x3f08
sh $31 28($0)
# 0x3f0c
addu $6 $16 $12
# 0x3f10
sw $17 124($0)
# 0x3f14
slti $12 $10 1327
# 0x3f18
sra $27 $11 13
# 0x3f1c
or $16 $5 $21
# 0x3f20
sw $31 16($0)
# 0x3f24
sw $14 12($0)
# 0x3f28
sltiu $26 $8 4815
# 0x3f2c
sub $30 $22 $2
# 0x3f30
sltu $27 $1 $18
# 0x3f34
lw $5 12($0)
# 0x3f38
addi $21 $8 -12488
# 0x3f3c
multu $11 $25
# 0x3f40
addu $17 $8 $12
# 0x3f44
mtlo $10
# 0x3f48
slt $23 $31 $17
# 0x3f4c
or $1 $9 $16
# 0x3f50
lbu $6 31($0)
# 0x3f54
mthi $21
# 0x3f58
lhu $27 8($0)
# 0x3f5c
mthi $3
# 0x3f60
add $9 $20 $2
# 0x3f64
xor $21 $2 $1
# 0x3f68
mult $3 $5
# 0x3f6c
mthi $10
# 0x3f70
addu $13 $1 $30
# 0x3f74
xori $10 $13 0x5be3
# 0x3f78
mfhi $5
# 0x3f7c
sh $22 0($0)
# 0x3f80
multu $15 $23
# 0x3f84
xor $31 $1 $21
# 0x3f88
nor $24 $15 $19
# 0x3f8c
sltiu $16 $11 4566
# 0x3f90
lui $20 0x9800
# 0x3f94
addiu $23 $4 2984
# 0x3f98
sltiu $27 $11 18811
# 0x3f9c
sh $27 44($0)
# 0x3fa0
sltu $31 $25 $7

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop