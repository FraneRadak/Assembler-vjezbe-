;
; vjezba06.asm
;
; Created: 10/06/2021 16:15:49
; Author : karlo
;


// 1. ZAD
//Napiši  kod  koji bitove registra  R20  (proizvoljna  rije?) koristi   za odre?ivanje  ulaza/izlaza porta  D 
//te  na port  Dproslje?uje  vrijednost sadržanu u registru R21.

.include "m8def.inc"

start1:
	ldi R20,0b100100
	ldi R21, 0x5
	out DDRD, R20
	out PORTD, R21
end1:
	nop



// 2. ZAD
//Napiši kod koji s porta B?ita 8 bitnu vrijednost svakih 256 mikro sekundite ju zapisuje u registar R18.

.DEF temp = R16
.DEF br=R17

start:
	ldi R19,0b00000000
	out DDRB, R19

loop:
	inc br
	cpi br, 0x10
	brne loop
	in R18, PINB
	ldi br, 0x00
	rjmp loop

end:
	nop