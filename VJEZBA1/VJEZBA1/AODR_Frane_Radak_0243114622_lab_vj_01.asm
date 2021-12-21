;zadatak1
.DEF rez=R18
.DEF op1=R17
.DEF op2=R16
;-------------------------
;zadatak2
ldi op1,67
ldi op2,76
ldi rez,0
;------------------------------------
;zadatak3
inc op1
add rez,op1
add rez,op2
;-----------------------------------
;zadatak4
dec rez
sub rez,op2
;---------------------------------------------
;zadatak5
.DEF br1_0=R20
.DEF br1_1=R21
.DEF br1_2=R22

ldi br1_0,0xC2
ldi br1_1,0xFF
ldi br1_2,0x0F

.DEF br2_0=R23
.DEF br2_1=R24
.DEF br2_2=R25

ldi br2_0,0x5F
ldi br2_1,0x82
ldi br2_2,0xA2

add br1_0,br2_0
adc br1_1,br2_1
adc br1_1,br2_2

;----------------------
;zadatak6
.DEF a=R19
.DEF b=R20
 mul a,b
 ;--------------------------
 ;zadatak7
 ldi op1,68
 sbr op1,0x90
 ;-----------------------------
 ;zadatak8
 ldi op2,76
 cbr op2,0x2C
 ;-------------------------



