/*zadatak1
.DEF a=R20
.DEF b=R21

ldi a,37
ldi b,20
cp a,b
brlt smaller
mov b,a
rjmp end

smaller:
	inc a
	inc a
end:
	nop
*/
.DEF str1=R18
.DEF str2=R19
.DEF temp=R17
rjmp main
Povrsina:
	mul str1,str2
	ret
main:
	ldi str1,20
	ldi str2,15
	ldi temp,low(RAMEND)
	out SPL,temp
	ldi temp,high(RAMEND)
	out SPH,temp
	rcall Povrsina
end:
	nop
