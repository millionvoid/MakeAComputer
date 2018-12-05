.globl __start
__start:
initmem:
init1:
	lui $6,0x8041
	lui $7,0x8041
	addiu $7,$7,0x0320
loop1:
	sb $0,0($6)
	addiu $6,$6,1
	bne $7,$6,loop1
	nop
set1:
	lui $6,0x8041
	li $7,10
	sb $7,0($6)
	sb $7,1($6)
init2:
	lui $6,0x8041
	addiu $6,$6,0x0320
	lui $7,0x8041
	addiu $7,$7,0x04B0
loop2:
	sb $0,0($6)
	addiu $6,$6,1
	bne $7,$6,loop2
	nop
set2:
	lui $6,0x8041
	addiu $6,$6,0x0320
	addiu $6,$6,0xd2
	li $7,0x3
	sb $7,0($6)
	li $7,0x2
	sb $7,2($6)
setReg:
	li $2,1
	li $3,0
	lui $4,0x8041
	lui $5,0x8041
	lui $22,0x67B1
	addiu $22,$22,0xE714

	xor $9,$31,$0
	jal clkGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal clkGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal clkGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal clkGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal leftGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal upGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal rightGot
	nop
	xor $31,$9,$0

	xor $9,$31,$0
	jal downGot
	nop
	xor $31,$9,$0

	b return
	nop

moveSnakeHead:
	addiu $4,$4,2
	lui $8,0x8041
	addiu $8,$8,0x0320
	bne $4,$8,moveHeadChangeMap
	lui $4,0x8041
moveHeadChangeMap:
	sb $11,0($4)
	sb $12,1($4)
	xor $14,$11,$0
	xor $15,$12,$0
	lui $8,0x8041
	addiu $8,$8,0x0320
	addu $11,$11,$8
moveHeadMapCalculateStart:
	sll $8,$12,4
	addu $11,$11,$8
	sll $8,$12,2
	addu $11,$11,$8
moveHeadMapCalculateCompleted:
	li $8,3
	sb $8,0($11)
	xor $11,$14,$0
	xor $12,$15,$0
headReturn:
	jr $31
	nop

moveSnakeTail:
	lb $17,0($5)//读取地图中旧尾位置（$17,$18)
	lb $18,1($5)
moveTailMapCalculateStart:
	lui $8,0x8041//计算旧尾在地图信息中的地址
	addiu $8,$8,0x0320
	addu $17,$17,$8
	sll $8,$18,4
	addu $17,$17,$8
	sll $8,$18,2
	addu $17,$17,$8
moveTailMapCalculateCompleted:
	li $8,0//存成0
	sb $8,0($17)
checkAheadofHead:
	bne $4,$5,notequal
equal:
	addiu $5,$5,2//更新尾巴地址
	lui $8,0x8041
	addiu $8,$8,0x0320
	bne $5,$8,moveHeadChangeMap
	lui $5,0x8041
	b tailReturn
notequal:
	addiu $5,$5,2//更新尾巴地址
	lui $8,0x8041
	addiu $8,$8,0x0320
	bne $5,$8,moveTailChangeMap
	lui $5,0x8041
moveTailChangeMap:
	lb $17,0($5)//读取新尾位置
	lb $18,1($5)
	lui $8,0x8041//计算新尾在地图信息中的地址
	addiu $8,$8,0x0320
	addu $17,$17,$8
	sll $8,$18,4
	addu $17,$17,$8
	sll $8,$18,2
	addu $17,$17,$8
	li $8,4//存成4
	sb $8,0($17)
	b tailReturn
tailReturn:
	jr $31
	nop

notMoveSnakeTail:
	lb $17,0($5)//读取地图中旧尾位置（$17,$18)
	lb $18,1($5)
notMoveTailMapCalculateStart:
	lui $8,0x8041//计算旧尾在地图信息中的地址
	addiu $8,$8,0x0320
	addu $17,$17,$8
	sll $8,$18,4
	addu $17,$17,$8
	sll $8,$18,2
	addu $17,$17,$8
notMoveTailMapCalculateCompleted:
	li $8,4//存成4
	sb $8,0($17)
notTailReturn:
	jr $31
	nop

snakeMove://根据当前的蛇位置、地图信息、蛇头速度，执行一步蛇的移动并更新上述信息
//已完成：更新蛇头蛇尾的位置，更新蛇头将要到达的地方信息
	lb $11,0($4)
	lb $12,1($4)
	addu $11,$11,$2
	addu $12,$12,$3
	xor $10,$31,$0
	jal checkHit
	nop
	xor $31,$10,$0
	li $14,0
	beq $13,$0,normalMove//没撞到东西($13==0)
	nop
	addiu $13,$13,0xFFFF
	beq $13,$0,gameOver//撞墙($13==1)
	nop
	addiu $13,$13,0xFFFF
	beq $13,$0,eatFruit//吃到食物($13==2)
	nop
	addiu $13,$13,0xFFFF
	beq $13,$0,gameOver//咬到身体($13==3)
	nop
	addiu $13,$13,0xFFFF
	beq $13,$0,normalMove//咬到尾巴（尾巴会移开）($13==4)
	nop
	b snakeMoveReturn
	nop
	normalMove:
		xor $10,$31,$0
		jal moveSnakeTail
		nop
		jal moveSnakeHead
		nop
		xor $31,$10,$0
		li $14,1
		b snakeMoveReturn
		nop
	eatFruit:
		xor $10,$31,$0
		jal moveSnakeHead
		nop
		jal notMoveSnakeTail
		nop
		jal setFruitRandomly
		nop
		xor $31,$10,$0
		li $14,1
		b snakeMoveReturn
		nop
	hitWallOrBody:
		b gameOver
		nop
gameOver:
	li $16,1
snakeMoveReturn:
	lui $8,0xFFFF
	addiu $8,$8,0x7FFF
	addiu $8,$8,0x7FFF
	addiu $8,$8,1
	xor $19,$5,$8
	addiu $19,$19,1
	addu $19,$19,$4
	srl $19,$19,1
	addiu $19,$19,1

	jr $31
	nop

checkHit://通过$11 与$12 (蛇头将要到达的位置)与地图内存的比较，
//输出结果到$13 (0为空白，1为墙，2为食物，3为蛇头/蛇身，4为蛇尾)
//0<=$11<=19 && 0<=$12<=19: 
	xor $14,$11,$0
	xor $15,$12,$0
	addiu $11,$11,1
	bgtz $11,passed1
	nop
	b hitWall
	nop
	passed1:
		addiu $11,$11,0xFFEC
		bgtz $11,hitWall
		nop
	addiu $12,$12,1
	bgtz $12,passed2
	nop
	b hitWall
	nop
	passed2:
		addiu $12,$12,0xFFEC
		bgtz $12,hitWall
		nop
	addiu $11,$11,19
	addiu $12,$12,19
	b lookupMap
	nop
hitWall:
	li $13,1
	b checkHitReturn
	nop
lookupMap:
	lui $6,0x8041
	addiu $6,$6,0x0320
	addu $6,$6,$11
	mulloop:
		beq $12,$0,mulloopout
		nop
		addiu $12,$12,0xFFFF
		addiu $6,$6,20
		b mulloop
		nop
	mulloopout:
		lb $13,0($6)
checkHitReturn:
	xor $11,$14,$0
	xor $12,$15,$0
	jr $31
	nop

getRandom://将一个0~($20 空格数-1)的随机数装进$21
//$20 空格数为400-蛇长 $19
//$19 蛇长为($4-$5)/2+1
	addiu $22,$22,0x6194
	andi $22,$22,0x7FFF
	lui $8,0xFFFF
	addiu $8,$8,0x7FFF
	addiu $8,$8,0x7FFF
	addiu $8,$8,1
	xor $19,$5,$8
	addiu $19,$19,1
	addu $19,$19,$4
	srl $19,$19,1
	addiu $19,$19,1  
	xor $19,$19,$8
	addiu $19,$19,1
	addiu $20,$19,400
	addu $21,$22,$0
	xor $20,$20,$8
	addiu $20,$20,1
	addu $23,$21,$0
startDec:
	addu $21,$23,$0
	addu $23,$23,$20
	bgtz $23,startDec
	xor $20,$20,$8
	addiu $20,$20,1
	bne $21,$20,getRandomReturn
	li $21,0
getRandomReturn:
	jr $31
	nop

setFruitRandomly://使用随机数生成器生成随机数，并在地图上将相应序号的空格子标成水果（2）
	xor $24,$31,$0
	jal getRandom
	nop
	xor $31,$24,$0//此时随机数已经在$21 中
	lui $6,0x8041
	addiu $6,$6,0x0320
	addu $7,$6,$21
	addiu $7,$7,1
	addiu $25,$6,0
startReadMap:
	lb $8,0($6)
	addiu $6,$6,1
	bne $8,$0,blankCountNotAdd
	addiu $25,$25,1
blankCountNotAdd:
	bne $25,$7,startReadMap
	addiu $6,$6,0xFFFF
	li $8,2
	sb $8,0($6)
setFruitRandomlyReturn:
	jr $31
	nop

clkGot:
	xor $26,$31,$0
	jal snakeMove
	nop
	xor $31,$26,$0
	jr $31
	nop

upGot:
	bne $3,$0,upDownGoing1
	nop
	lui $3,0xFFFF
	addiu $3,$3,0x7FFF
	addiu $3,$3,0x7FFF
	addiu $3,$3,1
	li $2,0
	xor $26,$31,$0
	jal snakeMove
	nop
	xor $31,$26,$0
upDownGoing1:
	jr $31
	nop

downGot:
	bne $3,$0,upDownGoing2
	nop
	li $3,1
	li $2,0
	xor $26,$31,$0
	jal snakeMove
	nop
	xor $31,$26,$0
upDownGoing2:
	jr $31
	nop

leftGot:
	bne $2,$0,leftRightGoing1
	nop
	li $3,0
	lui $2,0xFFFF
	addiu $2,$2,0x7FFF
	addiu $2,$2,0x7FFF
	addiu $2,$2,1
	xor $26,$31,$0
	jal snakeMove
	nop
	xor $31,$26,$0
leftRightGoing1:
	jr $31
	nop

rightGot:
	bne $2,$0,leftRightGoing2
	nop
	li $3,0
	li $2,1
	xor $26,$31,$0
	jal snakeMove
	nop
	xor $31,$26,$0
leftRightGoing2:
	jr $31
	nop

return:
	jr $31
	nop