//zadatak1
/*
ldi R16, 0x2B
STS 0x21F, R16
LDS R20, 0x21F
*/


//zadatak2
	.include "m8def.inc"
	.EQU DESTINATION = 0x021F
	.DEF block=R18
	.DEF temp = R19
	rjmp main

transfer:
	lpm
	st Y+,R0
	adiw ZL,1
	dec block
	brne transfer
ret

main:
	ldi temp, low(RAMEND)
	out SPL, temp
	ldi temp, high(RAMEND)
	out SPH, temp

	ldi ZH, high(constant_table<<1)
	ldi ZL, low(constant_table<<1)

	ldi YH, high(DESTINATION)
	ldi YL, low(DESTINATION)

	ldi block,2
	rcall transfer

constant_table:
	.dw 0x00BF

