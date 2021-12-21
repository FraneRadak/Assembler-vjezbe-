
.include "m8def.inc"

.DEF temp = R25
.DEF ic = R19

.org 0x000
	rjmp main
.org OVF0addr
	rjmp timer0_overflow

main:
	ldi temp, HIGH(RAMEND)
	out SPH, temp
	ldi temp, LOW(RAMEND)
	out SPL, temp

	ldi temp, (1<<CS01)
	out TCCR0, temp

	ldi temp, (1<<TOIE0)
	out TIMSK, temp

	sei

loop:
	rjmp loop

timer0_overflow:
	inc ic
	cpi ic,0x03
	breq end
	reti

end:
	nop

