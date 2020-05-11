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
mthi $9
# 0x3008
mfhi $8
# 0x300c
xori $6 $20 0x1814
# 0x3010
addu $4 $7 $11
# 0x3014
mult $27 $23
# 0x3018
srlv $7 $2 $12
# 0x301c
ori $24 $18 0xe57f
# 0x3020
mthi $16
# 0x3024
srl $1 $13 21
# 0x3028
lw $14 100($0)
# 0x302c
and $9 $21 $15
# 0x3030
sh $8 58($0)
# 0x3034
lw $1 24($0)
# 0x3038
mult $21 $12
# 0x303c
srlv $11 $7 $30
# 0x3040
and $6 $20 $7
# 0x3044
srlv $11 $10 $17
# 0x3048
and $21 $6 $18
# 0x304c
sll $2 $6 4
# 0x3050
sllv $24 $4 $26
# 0x3054
subu $13 $25 $22
# 0x3058
slt $31 $27 $12
# 0x305c
sll $9 $21 30
# 0x3060
sltiu $26 $21 16790
# 0x3064
lui $26 0xb224
# 0x3068
sb $2 24($0)
# 0x306c
ori $12 $9 0x3cba
# 0x3070
srl $3 $27 19
# 0x3074
or $12 $4 $3
# 0x3078
lui $2 0xa465
# 0x307c
addi $27 $14 22101
# 0x3080
and $11 $2 $4
# 0x3084
mult $11 $19
# 0x3088
lbu $17 14($0)
# 0x308c
lbu $9 2($0)
# 0x3090
andi $22 $14 0xea81
# 0x3094
sw $10 20($0)
# 0x3098
lw $9 120($0)
# 0x309c
slt $30 $18 $12
# 0x30a0
sb $10 18($0)
# 0x30a4
sllv $11 $22 $19
# 0x30a8
lhu $13 20($0)
# 0x30ac
slti $14 $9 -8539
# 0x30b0
or $17 $30 $31
# 0x30b4
add $18 $26 $25
# 0x30b8
multu $16 $20
# 0x30bc
or $24 $9 $17
# 0x30c0
add $4 $11 $12
# 0x30c4
lb $21 13($0)
# 0x30c8
or $16 $18 $3
# 0x30cc
sw $7 88($0)
# 0x30d0
ori $21 $25 0xbdc7
# 0x30d4
nor $16 $13 $1
# 0x30d8
sw $21 28($0)
# 0x30dc
mthi $17
# 0x30e0
multu $1 $11
# 0x30e4
sra $14 $9 31
# 0x30e8
srav $9 $9 $31
# 0x30ec
lbu $3 6($0)
# 0x30f0
sltiu $9 $14 20909
# 0x30f4
sra $30 $23 19
# 0x30f8
slti $11 $15 23775
# 0x30fc
addiu $8 $19 10179
# 0x3100
lw $10 12($0)
# 0x3104
mult $3 $18
# 0x3108
lui $9 0x7a83
# 0x310c
addu $3 $15 $25
# 0x3110
sub $10 $21 $31
# 0x3114
lw $9 24($0)
# 0x3118
or $23 $15 $10
# 0x311c
addiu $2 $4 10217
# 0x3120
andi $24 $9 0xaafd
# 0x3124
sh $12 18($0)
# 0x3128
srav $3 $7 $17
# 0x312c
sllv $3 $1 $12
# 0x3130
addi $20 $25 28644
# 0x3134
sh $3 10($0)
# 0x3138
sh $24 4($0)
# 0x313c
sll $8 $31 4
# 0x3140
lh $26 28($0)
# 0x3144
add $17 $11 $18
# 0x3148
sw $18 12($0)
# 0x314c
sllv $30 $21 $12
# 0x3150
lui $17 0x2926
# 0x3154
mflo $11
# 0x3158
xori $20 $30 0xb8fb
# 0x315c
sll $14 $1 22
# 0x3160
lb $14 17($0)
# 0x3164
lh $7 26($0)
# 0x3168
srl $20 $24 3
# 0x316c
mfhi $9
# 0x3170
sw $26 44($0)
# 0x3174
lw $31 12($0)
# 0x3178
slt $21 $21 $16
# 0x317c
sub $27 $4 $30
# 0x3180
multu $16 $31
# 0x3184
srav $8 $16 $7
# 0x3188
slt $13 $22 $9
# 0x318c
lh $10 18($0)
# 0x3190
sw $20 116($0)
# 0x3194
mthi $5
# 0x3198
lh $31 0($0)
# 0x319c
sw $24 44($0)
# 0x31a0
xor $13 $18 $6
# 0x31a4
sw $24 44($0)
# 0x31a8
mtlo $27
# 0x31ac
sub $17 $14 $16
# 0x31b0
slt $4 $3 $26
# 0x31b4
mflo $13
# 0x31b8
addiu $9 $2 32647
# 0x31bc
sh $30 26($0)
# 0x31c0
addiu $10 $1 30071
# 0x31c4
addiu $27 $25 21574
# 0x31c8
lb $8 24($0)
# 0x31cc
addi $24 $27 -23806
# 0x31d0
lui $13 0x698d
# 0x31d4
sh $15 60($0)
# 0x31d8
sllv $8 $18 $6
# 0x31dc
sub $18 $1 $18
# 0x31e0
xori $24 $1 0xc258
# 0x31e4
lbu $15 0($0)
# 0x31e8
sub $2 $13 $9
# 0x31ec
and $12 $12 $13
# 0x31f0
sll $18 $16 15
# 0x31f4
multu $27 $27
# 0x31f8
addu $31 $7 $8
# 0x31fc
slt $5 $11 $16
# 0x3200
mfhi $26
# 0x3204
lhu $6 6($0)
# 0x3208
lh $31 50($0)
# 0x320c
sw $15 12($0)
# 0x3210
and $4 $17 $31
# 0x3214
ori $15 $7 0x7063
# 0x3218
subu $26 $26 $6
# 0x321c
sltiu $6 $5 14943
# 0x3220
sltiu $15 $31 16721
# 0x3224
slti $31 $17 11251
# 0x3228
xor $5 $1 $24
# 0x322c
mfhi $20
# 0x3230
lh $18 32($0)
# 0x3234
and $23 $14 $27
# 0x3238
sub $20 $2 $24
# 0x323c
srlv $19 $11 $25
# 0x3240
lw $22 8($0)
# 0x3244
sltiu $19 $30 28117
# 0x3248
sllv $17 $5 $8
# 0x324c
ori $1 $15 0x10bb
# 0x3250
lbu $30 21($0)
# 0x3254
or $8 $4 $24
# 0x3258
mfhi $5
# 0x325c
slti $5 $10 -13937
# 0x3260
andi $27 $2 0x59ba
# 0x3264
mult $16 $19
# 0x3268
sw $12 28($0)
# 0x326c
sw $31 24($0)
# 0x3270
lbu $12 21($0)
# 0x3274
sh $24 28($0)
# 0x3278
srl $1 $4 29
# 0x327c
multu $3 $2
# 0x3280
lw $14 12($0)
# 0x3284
sltu $15 $13 $31
# 0x3288
lh $10 24($0)
# 0x328c
xori $24 $17 0xf41f
# 0x3290
nor $23 $25 $16
# 0x3294
sltu $12 $7 $13
# 0x3298
srav $9 $5 $16
# 0x329c
lh $27 28($0)
# 0x32a0
slt $15 $14 $31
# 0x32a4
sub $3 $14 $24
# 0x32a8
lh $22 26($0)
# 0x32ac
sllv $18 $18 $19
# 0x32b0
subu $2 $2 $27
# 0x32b4
addi $15 $23 16183
# 0x32b8
lhu $27 14($0)
# 0x32bc
sh $6 60($0)
# 0x32c0
sh $23 14($0)
# 0x32c4
slti $27 $1 -23612
# 0x32c8
sllv $23 $16 $10
# 0x32cc
sltiu $8 $5 5421
# 0x32d0
xori $27 $11 0xcab4
# 0x32d4
sllv $24 $16 $4
# 0x32d8
andi $16 $26 0x3537
# 0x32dc
addi $14 $30 -29682
# 0x32e0
lh $16 20($0)
# 0x32e4
mfhi $4
# 0x32e8
lh $20 14($0)
# 0x32ec
slti $6 $20 14870
# 0x32f0
mthi $23
# 0x32f4
lbu $24 1($0)
# 0x32f8
sltu $22 $14 $5
# 0x32fc
mflo $2
# 0x3300
lw $26 16($0)
# 0x3304
lw $30 8($0)
# 0x3308
sw $16 28($0)
# 0x330c
sw $24 48($0)
# 0x3310
add $16 $13 $26
# 0x3314
sltiu $1 $20 28247
# 0x3318
addi $15 $10 -17207
# 0x331c
slti $11 $26 -19168
# 0x3320
sltiu $12 $23 12358
# 0x3324
lui $14 0x2b92
# 0x3328
sltiu $17 $16 15140
# 0x332c
subu $25 $24 $9
# 0x3330
xori $5 $11 0x1cee
# 0x3334
sh $24 50($0)
# 0x3338
addi $5 $19 -9104
# 0x333c
lw $8 12($0)
# 0x3340
slt $11 $19 $25
# 0x3344
mult $7 $24
# 0x3348
subu $25 $10 $26
# 0x334c
sw $17 104($0)
# 0x3350
sw $31 116($0)
# 0x3354
nor $21 $12 $1
# 0x3358
addi $26 $20 -9366
# 0x335c
lh $5 22($0)
# 0x3360
xori $17 $22 0xa3d1
# 0x3364
addu $4 $26 $19
# 0x3368
sw $23 4($0)
# 0x336c
sll $22 $20 30
# 0x3370
xor $25 $1 $15
# 0x3374
lbu $25 5($0)
# 0x3378
lh $4 52($0)
# 0x337c
srav $2 $24 $25
# 0x3380
srav $10 $10 $10
# 0x3384
ori $14 $10 0xccbb
# 0x3388
xor $30 $15 $13
# 0x338c
lw $11 96($0)
# 0x3390
mfhi $27
# 0x3394
mtlo $13
# 0x3398
sw $31 80($0)
# 0x339c
lhu $23 12($0)
# 0x33a0
multu $17 $31
# 0x33a4
ori $9 $10 0x133a
# 0x33a8
multu $24 $6
# 0x33ac
sltu $15 $13 $12
# 0x33b0
ori $18 $21 0x772a
# 0x33b4
lb $8 6($0)
# 0x33b8
srav $19 $18 $31
# 0x33bc
and $4 $8 $9
# 0x33c0
sllv $24 $21 $9
# 0x33c4
sltiu $8 $13 22559
# 0x33c8
lui $20 0xad5d
# 0x33cc
mthi $6
# 0x33d0
srlv $23 $8 $24
# 0x33d4
sub $22 $24 $6
# 0x33d8
slt $9 $23 $12
# 0x33dc
lui $11 0xa40e
# 0x33e0
sra $3 $23 25
# 0x33e4
srav $21 $1 $26
# 0x33e8
lb $17 18($0)
# 0x33ec
sw $25 12($0)
# 0x33f0
mflo $5
# 0x33f4
sllv $9 $31 $17
# 0x33f8
lw $26 84($0)
# 0x33fc
lh $9 8($0)
# 0x3400
mthi $5
# 0x3404
sll $15 $16 20
# 0x3408
lhu $11 0($0)
# 0x340c
sb $1 5($0)
# 0x3410
nor $2 $25 $16
# 0x3414
andi $19 $23 0x8b8a
# 0x3418
add $24 $14 $7
# 0x341c
lw $26 0($0)
# 0x3420
srlv $15 $11 $27
# 0x3424
sltu $21 $18 $13
# 0x3428
lw $17 24($0)
# 0x342c
sw $8 20($0)
# 0x3430
srl $6 $8 21
# 0x3434
xor $1 $25 $4
# 0x3438
lui $7 0xac91
# 0x343c
srl $19 $17 9
# 0x3440
lh $2 14($0)
# 0x3444
mfhi $10
# 0x3448
lh $3 24($0)
# 0x344c
addu $8 $20 $5
# 0x3450
slti $13 $22 -8243
# 0x3454
subu $17 $27 $8
# 0x3458
sw $17 4($0)
# 0x345c
addi $20 $18 -17150
# 0x3460
add $30 $30 $1
# 0x3464
add $3 $8 $3
# 0x3468
or $26 $11 $26
# 0x346c
sw $8 28($0)
# 0x3470
slti $23 $24 22288
# 0x3474
mtlo $31
# 0x3478
addi $6 $4 19569
# 0x347c
mtlo $7
# 0x3480
sw $25 28($0)
# 0x3484
lhu $8 14($0)
# 0x3488
and $17 $10 $20
# 0x348c
srav $23 $9 $14
# 0x3490
andi $26 $3 0x3372
# 0x3494
and $9 $31 $4
# 0x3498
sh $5 28($0)
# 0x349c
nor $5 $1 $27
# 0x34a0
srlv $11 $11 $31
# 0x34a4
andi $16 $30 0xe2f5
# 0x34a8
sub $22 $3 $1
# 0x34ac
mtlo $3
# 0x34b0
sub $31 $21 $3
# 0x34b4
sh $22 18($0)
# 0x34b8
sh $12 14($0)
# 0x34bc
mflo $11
# 0x34c0
sh $10 2($0)
# 0x34c4
or $4 $25 $14
# 0x34c8
sltiu $17 $2 16802
# 0x34cc
add $3 $15 $4
# 0x34d0
mthi $26
# 0x34d4
addiu $16 $1 23420
# 0x34d8
sh $1 14($0)
# 0x34dc
lhu $6 22($0)
# 0x34e0
add $27 $24 $17
# 0x34e4
lui $2 0x5cd0
# 0x34e8
addiu $7 $1 22759
# 0x34ec
andi $15 $26 0x41f5
# 0x34f0
lui $17 0x42e7
# 0x34f4
addi $15 $7 -8776
# 0x34f8
add $26 $8 $14
# 0x34fc
mfhi $18
# 0x3500
mfhi $14
# 0x3504
sw $16 4($0)
# 0x3508
lbu $8 4($0)
# 0x350c
sw $11 124($0)
# 0x3510
addi $20 $17 -630
# 0x3514
ori $22 $7 0xa1e1
# 0x3518
mult $25 $4
# 0x351c
sltiu $23 $6 22060
# 0x3520
multu $21 $2
# 0x3524
subu $30 $31 $4
# 0x3528
subu $19 $12 $4
# 0x352c
srl $8 $30 21
# 0x3530
subu $6 $19 $11
# 0x3534
addiu $27 $22 22663
# 0x3538
add $10 $6 $5
# 0x353c
lh $11 4($0)
# 0x3540
mtlo $7
# 0x3544
and $18 $9 $18
# 0x3548
sltiu $1 $18 31275
# 0x354c
srav $14 $24 $9
# 0x3550
sllv $12 $1 $10
# 0x3554
lh $25 6($0)
# 0x3558
lui $15 0x9be6
# 0x355c
sll $20 $30 30
# 0x3560
mtlo $23
# 0x3564
multu $27 $3
# 0x3568
slt $22 $18 $3
# 0x356c
and $1 $26 $23
# 0x3570
sllv $4 $23 $19
# 0x3574
lhu $27 2($0)
# 0x3578
lh $30 54($0)
# 0x357c
ori $21 $1 0xae0f
# 0x3580
lw $26 4($0)
# 0x3584
nor $21 $26 $23
# 0x3588
srav $15 $27 $4
# 0x358c
mtlo $24
# 0x3590
slt $21 $26 $7
# 0x3594
lh $24 12($0)
# 0x3598
lui $25 0xf4e0
# 0x359c
sltu $26 $31 $17
# 0x35a0
or $20 $2 $7
# 0x35a4
lbu $21 19($0)
# 0x35a8
sra $7 $10 9
# 0x35ac
lb $16 11($0)
# 0x35b0
srav $27 $6 $27
# 0x35b4
addu $15 $2 $22
# 0x35b8
mtlo $19
# 0x35bc
sltu $4 $25 $19
# 0x35c0
mthi $23
# 0x35c4
andi $18 $4 0xd3da
# 0x35c8
sltu $15 $23 $22
# 0x35cc
subu $22 $2 $13
# 0x35d0
subu $20 $8 $7
# 0x35d4
lh $10 26($0)
# 0x35d8
lh $2 16($0)
# 0x35dc
sltiu $22 $9 139
# 0x35e0
sh $18 8($0)
# 0x35e4
mthi $3
# 0x35e8
sh $1 34($0)
# 0x35ec
andi $14 $5 0x17e9
# 0x35f0
slt $16 $10 $16
# 0x35f4
sub $7 $22 $11
# 0x35f8
lui $11 0x90c9
# 0x35fc
lui $21 0xf241
# 0x3600
multu $19 $21
# 0x3604
nor $30 $20 $1
# 0x3608
addu $12 $9 $27
# 0x360c
lb $21 18($0)
# 0x3610
lw $5 100($0)
# 0x3614
sltu $26 $5 $18
# 0x3618
addiu $19 $27 1292
# 0x361c
sll $11 $3 15
# 0x3620
subu $4 $31 $20
# 0x3624
subu $31 $12 $21
# 0x3628
ori $30 $25 0xce8a
# 0x362c
multu $22 $7
# 0x3630
sb $18 11($0)
# 0x3634
srl $11 $26 19
# 0x3638
slti $13 $17 19437
# 0x363c
nor $6 $2 $27
# 0x3640
lh $27 8($0)
# 0x3644
mfhi $24
# 0x3648
lw $18 100($0)
# 0x364c
ori $20 $30 0xfc21
# 0x3650
mtlo $11
# 0x3654
sh $12 6($0)
# 0x3658
sw $10 64($0)
# 0x365c
sw $19 20($0)
# 0x3660
sh $8 26($0)
# 0x3664
andi $10 $15 0x55ca
# 0x3668
sh $25 26($0)
# 0x366c
subu $14 $21 $23
# 0x3670
mflo $6
# 0x3674
and $11 $3 $6
# 0x3678
lw $7 20($0)
# 0x367c
sh $14 14($0)
# 0x3680
lbu $11 28($0)
# 0x3684
slti $11 $3 -18971
# 0x3688
ori $27 $7 0xc709
# 0x368c
sltiu $3 $10 8879
# 0x3690
lw $24 92($0)
# 0x3694
mult $30 $22
# 0x3698
addi $1 $18 32522
# 0x369c
mflo $13
# 0x36a0
sra $16 $4 3
# 0x36a4
subu $19 $4 $23
# 0x36a8
srlv $6 $30 $16
# 0x36ac
add $16 $12 $30
# 0x36b0
sll $16 $21 9
# 0x36b4
subu $17 $16 $22
# 0x36b8
andi $6 $24 0x13bf
# 0x36bc
addu $1 $23 $5
# 0x36c0
srl $12 $18 19
# 0x36c4
sb $24 8($0)
# 0x36c8
mthi $17
# 0x36cc
mtlo $24
# 0x36d0
lw $27 108($0)
# 0x36d4
slti $12 $14 -2808
# 0x36d8
mthi $1
# 0x36dc
sll $6 $22 19
# 0x36e0
and $3 $13 $2
# 0x36e4
lw $26 16($0)
# 0x36e8
addu $12 $30 $25
# 0x36ec
addiu $3 $2 22560
# 0x36f0
slti $12 $12 30719
# 0x36f4
and $5 $2 $16
# 0x36f8
lb $19 23($0)
# 0x36fc
lw $1 0($0)
# 0x3700
addiu $6 $13 26175
# 0x3704
lh $22 4($0)
# 0x3708
slti $21 $21 -7340
# 0x370c
lhu $15 0($0)
# 0x3710
addiu $18 $9 12543
# 0x3714
and $25 $16 $2
# 0x3718
mfhi $15
# 0x371c
mfhi $2
# 0x3720
lb $5 30($0)
# 0x3724
srlv $7 $16 $8
# 0x3728
sltiu $31 $11 10501
# 0x372c
ori $19 $9 0x56ee
# 0x3730
add $25 $27 $25
# 0x3734
srl $16 $26 10
# 0x3738
xori $3 $13 0xd6a6
# 0x373c
sh $11 10($0)
# 0x3740
sltiu $30 $31 10631
# 0x3744
lw $18 0($0)
# 0x3748
multu $16 $26
# 0x374c
or $20 $4 $5
# 0x3750
andi $26 $16 0xa026
# 0x3754
andi $19 $7 0x95ce
# 0x3758
sw $27 16($0)
# 0x375c
sub $31 $4 $6
# 0x3760
slt $14 $18 $6
# 0x3764
sll $10 $13 7
# 0x3768
sltu $9 $15 $12
# 0x376c
sh $4 40($0)
# 0x3770
add $12 $30 $14
# 0x3774
lbu $30 25($0)
# 0x3778
lw $11 60($0)
# 0x377c
lh $7 60($0)
# 0x3780
lbu $20 11($0)
# 0x3784
lb $14 25($0)
# 0x3788
addu $21 $27 $27
# 0x378c
sh $19 22($0)
# 0x3790
slti $2 $15 -11278
# 0x3794
addi $15 $2 -19243
# 0x3798
mthi $1
# 0x379c
lw $2 4($0)
# 0x37a0
lhu $7 10($0)
# 0x37a4
lw $18 12($0)
# 0x37a8
andi $30 $27 0xab0b
# 0x37ac
slt $8 $27 $14
# 0x37b0
sltu $26 $10 $11
# 0x37b4
lbu $12 3($0)
# 0x37b8
sltiu $18 $13 14113
# 0x37bc
andi $5 $17 0x6cdf
# 0x37c0
mflo $16
# 0x37c4
and $13 $30 $1
# 0x37c8
srl $21 $17 0
# 0x37cc
slt $6 $8 $3
# 0x37d0
add $26 $3 $12
# 0x37d4
andi $1 $17 0xacd0
# 0x37d8
sw $18 104($0)
# 0x37dc
xori $5 $2 0x7e30
# 0x37e0
sra $20 $17 7
# 0x37e4
slt $31 $16 $27
# 0x37e8
srl $19 $20 13
# 0x37ec
multu $13 $10
# 0x37f0
xori $5 $31 0x5989
# 0x37f4
sltu $21 $14 $15
# 0x37f8
sw $24 124($0)
# 0x37fc
lui $14 0x4ab3
# 0x3800
or $6 $26 $11
# 0x3804
sh $11 34($0)
# 0x3808
lui $10 0x4efc
# 0x380c
slt $11 $1 $20
# 0x3810
subu $26 $19 $12
# 0x3814
nor $7 $11 $10
# 0x3818
multu $16 $3
# 0x381c
lbu $4 9($0)
# 0x3820
sb $16 11($0)
# 0x3824
nor $31 $27 $10
# 0x3828
xor $22 $20 $17
# 0x382c
and $12 $6 $2
# 0x3830
slti $16 $3 10526
# 0x3834
addiu $16 $25 11533
# 0x3838
mthi $7
# 0x383c
lb $10 16($0)
# 0x3840
addi $2 $20 -29560
# 0x3844
sw $24 4($0)
# 0x3848
srav $30 $17 $11
# 0x384c
sw $5 12($0)
# 0x3850
sll $9 $26 21
# 0x3854
lui $1 0x7add
# 0x3858
sltu $15 $6 $9
# 0x385c
lh $20 8($0)
# 0x3860
lhu $24 14($0)
# 0x3864
sltu $5 $19 $8
# 0x3868
ori $14 $12 0x019a
# 0x386c
lui $7 0x0931
# 0x3870
sll $15 $1 20
# 0x3874
sub $2 $23 $20
# 0x3878
sh $7 10($0)
# 0x387c
sra $10 $8 11
# 0x3880
xor $26 $5 $15
# 0x3884
addi $9 $31 -22873
# 0x3888
sltiu $4 $27 25287
# 0x388c
lw $25 112($0)
# 0x3890
lw $3 56($0)
# 0x3894
nor $13 $26 $10
# 0x3898
lw $3 116($0)
# 0x389c
lb $5 21($0)
# 0x38a0
xor $23 $22 $30
# 0x38a4
nor $12 $14 $24
# 0x38a8
lhu $18 26($0)
# 0x38ac
sh $26 46($0)
# 0x38b0
sw $15 84($0)
# 0x38b4
lh $9 14($0)
# 0x38b8
and $6 $23 $18
# 0x38bc
addiu $17 $30 27017
# 0x38c0
mfhi $31
# 0x38c4
sh $13 6($0)
# 0x38c8
addu $23 $17 $2
# 0x38cc
sh $16 46($0)
# 0x38d0
srlv $9 $27 $8
# 0x38d4
multu $21 $21
# 0x38d8
lhu $23 20($0)
# 0x38dc
lbu $25 1($0)
# 0x38e0
subu $9 $23 $16
# 0x38e4
addiu $12 $8 22300
# 0x38e8
addu $8 $20 $19
# 0x38ec
sltiu $20 $14 22192
# 0x38f0
sw $9 4($0)
# 0x38f4
srav $31 $5 $9
# 0x38f8
and $3 $24 $22
# 0x38fc
sw $26 72($0)
# 0x3900
sra $26 $12 24
# 0x3904
xori $3 $30 0x0f80
# 0x3908
addu $16 $23 $23
# 0x390c
sw $27 124($0)
# 0x3910
sub $20 $25 $1
# 0x3914
sltiu $9 $4 25468
# 0x3918
add $26 $31 $16
# 0x391c
sll $17 $18 14
# 0x3920
mthi $2
# 0x3924
addu $2 $23 $31
# 0x3928
srlv $30 $11 $6
# 0x392c
sh $7 24($0)
# 0x3930
lw $26 12($0)
# 0x3934
andi $6 $19 0x713a
# 0x3938
mflo $3
# 0x393c
multu $1 $2
# 0x3940
lw $31 4($0)
# 0x3944
srav $21 $17 $2
# 0x3948
slti $12 $13 -24670
# 0x394c
nor $20 $17 $1
# 0x3950
srav $1 $15 $5
# 0x3954
lb $20 5($0)
# 0x3958
sw $8 88($0)
# 0x395c
lw $13 32($0)
# 0x3960
sw $19 76($0)
# 0x3964
add $17 $1 $18
# 0x3968
sw $3 16($0)
# 0x396c
nor $27 $15 $12
# 0x3970
addiu $16 $12 26262
# 0x3974
subu $12 $8 $23
# 0x3978
mflo $18
# 0x397c
add $24 $4 $10
# 0x3980
sh $21 60($0)
# 0x3984
lw $11 60($0)
# 0x3988
mthi $8
# 0x398c
sra $4 $19 16
# 0x3990
add $10 $21 $8
# 0x3994
xor $25 $13 $30
# 0x3998
xori $5 $16 0xf720
# 0x399c
sll $31 $10 23
# 0x39a0
sltiu $18 $5 32114
# 0x39a4
addiu $10 $8 7595
# 0x39a8
sltiu $24 $12 26150
# 0x39ac
mflo $2
# 0x39b0
xori $23 $19 0x3ea2
# 0x39b4
srl $12 $13 15
# 0x39b8
lh $27 22($0)
# 0x39bc
addiu $18 $14 12991
# 0x39c0
nor $6 $24 $8
# 0x39c4
mfhi $23
# 0x39c8
lw $18 16($0)
# 0x39cc
lui $26 0x9d30
# 0x39d0
lw $24 0($0)
# 0x39d4
subu $24 $25 $24
# 0x39d8
sub $4 $22 $23
# 0x39dc
ori $30 $4 0xee3a
# 0x39e0
addu $1 $12 $15
# 0x39e4
addu $9 $27 $25
# 0x39e8
subu $31 $10 $15
# 0x39ec
mfhi $25
# 0x39f0
multu $18 $16
# 0x39f4
add $21 $20 $9
# 0x39f8
sb $30 24($0)
# 0x39fc
mflo $21
# 0x3a00
addiu $9 $11 18943
# 0x3a04
xori $10 $16 0x3d2b
# 0x3a08
mflo $14
# 0x3a0c
lb $15 29($0)
# 0x3a10
lh $7 20($0)
# 0x3a14
srlv $12 $25 $12
# 0x3a18
lw $25 28($0)
# 0x3a1c
slti $23 $22 26242
# 0x3a20
addi $19 $6 12784
# 0x3a24
xori $30 $11 0x1d25
# 0x3a28
sh $16 24($0)
# 0x3a2c
sra $26 $10 16
# 0x3a30
lw $24 4($0)
# 0x3a34
lh $24 26($0)
# 0x3a38
lb $12 6($0)
# 0x3a3c
lh $16 2($0)
# 0x3a40
lb $12 7($0)
# 0x3a44
sb $20 8($0)
# 0x3a48
addi $22 $9 32181
# 0x3a4c
sra $26 $20 7
# 0x3a50
sllv $23 $2 $24
# 0x3a54
slti $13 $25 -19849
# 0x3a58
lb $10 6($0)
# 0x3a5c
lh $12 8($0)
# 0x3a60
sw $2 124($0)
# 0x3a64
lui $19 0xf21f
# 0x3a68
subu $25 $12 $9
# 0x3a6c
addiu $8 $15 29426
# 0x3a70
multu $8 $25
# 0x3a74
lh $31 6($0)
# 0x3a78
or $5 $26 $24
# 0x3a7c
lbu $10 17($0)
# 0x3a80
nor $30 $11 $30
# 0x3a84
sh $3 16($0)
# 0x3a88
slt $20 $24 $16
# 0x3a8c
lbu $11 26($0)
# 0x3a90
sw $27 64($0)
# 0x3a94
addiu $12 $15 19515
# 0x3a98
andi $20 $22 0x7efa
# 0x3a9c
and $25 $22 $26
# 0x3aa0
sltu $13 $25 $27
# 0x3aa4
addu $6 $19 $21
# 0x3aa8
sltiu $9 $23 20535
# 0x3aac
sltu $5 $3 $30
# 0x3ab0
mfhi $13
# 0x3ab4
mflo $7
# 0x3ab8
sw $14 96($0)
# 0x3abc
or $15 $19 $25
# 0x3ac0
srl $5 $21 7
# 0x3ac4
sw $11 112($0)
# 0x3ac8
sub $21 $25 $17
# 0x3acc
add $24 $27 $16
# 0x3ad0
subu $6 $8 $19
# 0x3ad4
sw $14 4($0)
# 0x3ad8
andi $10 $17 0xe186
# 0x3adc
ori $15 $26 0xbbd3
# 0x3ae0
slt $22 $30 $14
# 0x3ae4
or $21 $4 $5
# 0x3ae8
ori $6 $6 0xb5c4
# 0x3aec
lh $6 12($0)
# 0x3af0
lbu $13 17($0)
# 0x3af4
add $31 $12 $24
# 0x3af8
lh $16 22($0)
# 0x3afc
sll $12 $6 28
# 0x3b00
mthi $31
# 0x3b04
sw $25 0($0)
# 0x3b08
lui $26 0x9928
# 0x3b0c
sll $16 $31 16
# 0x3b10
andi $31 $10 0xf439
# 0x3b14
srav $11 $27 $14
# 0x3b18
sub $13 $3 $11
# 0x3b1c
slt $23 $18 $2
# 0x3b20
subu $22 $27 $11
# 0x3b24
add $27 $21 $22
# 0x3b28
addu $13 $30 $21
# 0x3b2c
sltiu $22 $11 4194
# 0x3b30
srlv $6 $20 $30
# 0x3b34
lh $8 4($0)
# 0x3b38
sra $3 $3 12
# 0x3b3c
sllv $16 $10 $2
# 0x3b40
sub $12 $3 $15
# 0x3b44
nor $20 $17 $4
# 0x3b48
mthi $24
# 0x3b4c
sh $26 26($0)
# 0x3b50
sh $21 34($0)
# 0x3b54
mflo $9
# 0x3b58
srl $14 $24 11
# 0x3b5c
lbu $20 16($0)
# 0x3b60
lw $22 20($0)
# 0x3b64
xor $26 $8 $31
# 0x3b68
mtlo $12
# 0x3b6c
mult $9 $26
# 0x3b70
and $3 $14 $16
# 0x3b74
addu $1 $19 $5
# 0x3b78
addiu $26 $6 24537
# 0x3b7c
slt $12 $10 $22
# 0x3b80
sltu $2 $24 $11
# 0x3b84
sllv $1 $7 $9
# 0x3b88
slti $27 $9 20431
# 0x3b8c
lh $26 30($0)
# 0x3b90
lw $8 20($0)
# 0x3b94
lui $31 0xacfa
# 0x3b98
subu $24 $2 $16
# 0x3b9c
sh $30 4($0)
# 0x3ba0
xor $17 $3 $16
# 0x3ba4
mflo $3
# 0x3ba8
lhu $1 0($0)
# 0x3bac
lh $14 28($0)
# 0x3bb0
mflo $6
# 0x3bb4
srav $12 $6 $26
# 0x3bb8
sb $14 7($0)
# 0x3bbc
lb $9 7($0)
# 0x3bc0
xor $27 $11 $7
# 0x3bc4
lh $19 2($0)
# 0x3bc8
or $11 $1 $14
# 0x3bcc
lb $31 6($0)
# 0x3bd0
lb $3 12($0)
# 0x3bd4
sw $4 16($0)
# 0x3bd8
lw $17 24($0)
# 0x3bdc
add $2 $4 $1
# 0x3be0
lui $20 0x4b28
# 0x3be4
srl $11 $26 4
# 0x3be8
lw $25 16($0)
# 0x3bec
lui $26 0xeeac
# 0x3bf0
sb $11 23($0)
# 0x3bf4
lh $24 6($0)
# 0x3bf8
sh $7 24($0)
# 0x3bfc
subu $19 $7 $12
# 0x3c00
sltu $15 $6 $5
# 0x3c04
sub $23 $10 $18
# 0x3c08
lb $21 18($0)
# 0x3c0c
sltiu $15 $22 3817
# 0x3c10
lh $2 4($0)
# 0x3c14
sltiu $6 $30 16422
# 0x3c18
lui $20 0x6812
# 0x3c1c
sllv $2 $17 $6
# 0x3c20
mfhi $14
# 0x3c24
mtlo $25
# 0x3c28
sh $10 16($0)
# 0x3c2c
ori $20 $27 0x2853
# 0x3c30
mult $3 $21
# 0x3c34
add $19 $10 $25
# 0x3c38
sb $10 30($0)
# 0x3c3c
sw $25 0($0)
# 0x3c40
sra $8 $14 22
# 0x3c44
srl $13 $18 25
# 0x3c48
mthi $2
# 0x3c4c
mtlo $24
# 0x3c50
sh $17 26($0)
# 0x3c54
sll $7 $4 16
# 0x3c58
mthi $25
# 0x3c5c
sw $17 84($0)
# 0x3c60
subu $25 $8 $13
# 0x3c64
lhu $26 2($0)
# 0x3c68
lw $12 76($0)
# 0x3c6c
ori $27 $11 0x6557
# 0x3c70
lbu $31 0($0)
# 0x3c74
slt $23 $1 $6
# 0x3c78
xori $30 $23 0x565f
# 0x3c7c
mult $20 $10
# 0x3c80
srlv $16 $9 $2
# 0x3c84
mflo $14
# 0x3c88
sb $9 29($0)
# 0x3c8c
mtlo $1
# 0x3c90
lh $8 2($0)
# 0x3c94
and $11 $7 $23
# 0x3c98
lbu $23 13($0)
# 0x3c9c
sll $25 $25 18
# 0x3ca0
xor $5 $23 $27
# 0x3ca4
subu $2 $24 $25
# 0x3ca8
slti $25 $8 -25275
# 0x3cac
sltu $20 $7 $26
# 0x3cb0
multu $25 $23
# 0x3cb4
sll $6 $24 6
# 0x3cb8
addi $17 $26 32029
# 0x3cbc
lh $9 8($0)
# 0x3cc0
subu $1 $19 $22
# 0x3cc4
multu $2 $14
# 0x3cc8
srav $4 $7 $11
# 0x3ccc
mfhi $10
# 0x3cd0
sub $4 $12 $22
# 0x3cd4
sll $3 $25 16
# 0x3cd8
lw $15 20($0)
# 0x3cdc
andi $7 $20 0xef38
# 0x3ce0
slti $4 $21 31446
# 0x3ce4
sh $1 2($0)
# 0x3ce8
mfhi $7
# 0x3cec
slt $22 $21 $19
# 0x3cf0
sw $20 116($0)
# 0x3cf4
sub $26 $31 $24
# 0x3cf8
sw $31 112($0)
# 0x3cfc
xori $23 $18 0xf859
# 0x3d00
sll $21 $16 6
# 0x3d04
sh $26 28($0)
# 0x3d08
or $25 $30 $18
# 0x3d0c
addi $25 $15 -12870
# 0x3d10
srav $23 $8 $26
# 0x3d14
lh $11 30($0)
# 0x3d18
mult $27 $6
# 0x3d1c
ori $30 $8 0x57f3
# 0x3d20
mfhi $20
# 0x3d24
lh $10 18($0)
# 0x3d28
xori $1 $22 0x88b3
# 0x3d2c
mthi $25
# 0x3d30
lbu $30 24($0)
# 0x3d34
lh $18 42($0)
# 0x3d38
lb $10 12($0)
# 0x3d3c
lh $31 16($0)
# 0x3d40
sh $25 20($0)
# 0x3d44
ori $17 $13 0xcab9
# 0x3d48
lbu $20 4($0)
# 0x3d4c
lhu $26 30($0)
# 0x3d50
lb $22 3($0)
# 0x3d54
mthi $24
# 0x3d58
mfhi $15
# 0x3d5c
srl $20 $1 13
# 0x3d60
lh $20 18($0)
# 0x3d64
lw $9 56($0)
# 0x3d68
ori $4 $24 0x6079
# 0x3d6c
sw $1 0($0)
# 0x3d70
sb $24 20($0)
# 0x3d74
lhu $7 22($0)
# 0x3d78
mult $19 $6
# 0x3d7c
sll $15 $9 11
# 0x3d80
srav $24 $23 $27
# 0x3d84
subu $12 $8 $10
# 0x3d88
addiu $22 $17 17553
# 0x3d8c
lb $22 3($0)
# 0x3d90
mfhi $16
# 0x3d94
lbu $25 10($0)
# 0x3d98
xor $10 $19 $7
# 0x3d9c
sll $26 $27 1
# 0x3da0
lw $30 0($0)
# 0x3da4
lw $1 4($0)
# 0x3da8
sltiu $31 $8 15578
# 0x3dac
lh $10 34($0)
# 0x3db0
mflo $21
# 0x3db4
andi $6 $1 0x2ffd
# 0x3db8
and $16 $15 $15
# 0x3dbc
sltiu $3 $12 25672
# 0x3dc0
srav $15 $1 $3
# 0x3dc4
sltiu $19 $8 17397
# 0x3dc8
nor $19 $16 $25
# 0x3dcc
lbu $20 12($0)
# 0x3dd0
lhu $14 28($0)
# 0x3dd4
lw $11 28($0)
# 0x3dd8
lbu $15 1($0)
# 0x3ddc
sw $18 108($0)
# 0x3de0
sltiu $23 $10 20168
# 0x3de4
or $24 $16 $22
# 0x3de8
sw $9 80($0)
# 0x3dec
andi $5 $31 0x8870
# 0x3df0
sw $20 4($0)
# 0x3df4
addu $7 $20 $27
# 0x3df8
sh $19 4($0)
# 0x3dfc
lb $23 15($0)
# 0x3e00
sw $19 120($0)
# 0x3e04
slti $22 $27 19165
# 0x3e08
xori $23 $7 0x4892
# 0x3e0c
sltiu $11 $19 13851
# 0x3e10
lh $13 8($0)
# 0x3e14
sltiu $6 $8 3613
# 0x3e18
sra $20 $3 27
# 0x3e1c
ori $24 $8 0x3094
# 0x3e20
sub $12 $31 $14
# 0x3e24
subu $16 $2 $26
# 0x3e28
sltiu $4 $8 10795
# 0x3e2c
sltiu $3 $13 22518
# 0x3e30
addiu $7 $1 5804
# 0x3e34
mult $9 $17
# 0x3e38
add $13 $2 $5
# 0x3e3c
sw $15 0($0)
# 0x3e40
slti $18 $6 -30533
# 0x3e44
sltiu $9 $20 1282
# 0x3e48
sw $17 24($0)
# 0x3e4c
sb $10 13($0)
# 0x3e50
lb $12 28($0)
# 0x3e54
sltiu $31 $13 29971
# 0x3e58
sw $20 12($0)
# 0x3e5c
addu $6 $25 $18
# 0x3e60
sltiu $5 $13 15448
# 0x3e64
sltu $7 $14 $4
# 0x3e68
addu $11 $26 $17
# 0x3e6c
srl $18 $9 14
# 0x3e70
mflo $11
# 0x3e74
addiu $1 $2 30481
# 0x3e78
lb $26 14($0)
# 0x3e7c
sltu $20 $5 $14
# 0x3e80
subu $12 $12 $14
# 0x3e84
slt $2 $24 $19
# 0x3e88
srlv $22 $3 $30
# 0x3e8c
sltiu $3 $25 26636
# 0x3e90
mflo $12
# 0x3e94
sb $27 5($0)
# 0x3e98
slti $22 $23 -24657
# 0x3e9c
lhu $27 24($0)
# 0x3ea0
sub $25 $23 $21
# 0x3ea4
srl $24 $31 6
# 0x3ea8
sh $24 20($0)
# 0x3eac
lw $7 24($0)
# 0x3eb0
lw $18 16($0)
# 0x3eb4
or $16 $13 $4
# 0x3eb8
srlv $18 $8 $10
# 0x3ebc
mtlo $16
# 0x3ec0
sw $2 20($0)
# 0x3ec4
lui $25 0x547a
# 0x3ec8
ori $19 $5 0xe932
# 0x3ecc
andi $18 $18 0xc1b0
# 0x3ed0
sw $20 28($0)
# 0x3ed4
slt $4 $26 $27
# 0x3ed8
mflo $7
# 0x3edc
add $14 $24 $7
# 0x3ee0
slti $20 $7 28229
# 0x3ee4
lbu $25 31($0)
# 0x3ee8
sh $14 20($0)
# 0x3eec
mthi $16
# 0x3ef0
sh $25 20($0)
# 0x3ef4
sub $5 $7 $9
# 0x3ef8
srl $19 $25 20
# 0x3efc
lui $18 0x0121
# 0x3f00
srlv $2 $15 $25
# 0x3f04
and $31 $9 $21
# 0x3f08
multu $31 $22
# 0x3f0c
sll $16 $14 21
# 0x3f10
ori $1 $19 0x539b
# 0x3f14
lw $18 72($0)
# 0x3f18
mthi $4
# 0x3f1c
or $18 $26 $27
# 0x3f20
lh $20 22($0)
# 0x3f24
or $25 $23 $5
# 0x3f28
andi $11 $31 0x91e5
# 0x3f2c
nor $19 $4 $12
# 0x3f30
multu $22 $15
# 0x3f34
xori $30 $6 0x7154
# 0x3f38
mult $11 $13
# 0x3f3c
lw $5 16($0)
# 0x3f40
sub $5 $17 $18
# 0x3f44
andi $23 $30 0x8766
# 0x3f48
slti $11 $12 14873
# 0x3f4c
sw $31 0($0)
# 0x3f50
and $6 $31 $11
# 0x3f54
mult $2 $6
# 0x3f58
lw $9 8($0)
# 0x3f5c
srlv $30 $12 $27
# 0x3f60
mtlo $27
# 0x3f64
sw $18 28($0)
# 0x3f68
sw $18 104($0)
# 0x3f6c
lw $26 104($0)
# 0x3f70
lw $23 12($0)
# 0x3f74
mflo $11
# 0x3f78
sw $18 4($0)
# 0x3f7c
lw $15 28($0)
# 0x3f80
mfhi $13
# 0x3f84
addi $3 $4 2759
# 0x3f88
mthi $7
# 0x3f8c
lw $24 20($0)
# 0x3f90
sh $21 2($0)
# 0x3f94
slti $27 $31 -31782
# 0x3f98
xori $16 $17 0xb1a8
# 0x3f9c
sra $3 $17 9
# 0x3fa0
srl $8 $27 16

tail_loop_0:
# 0x3fa4
j tail_loop_0
# 0x3fa8
nop