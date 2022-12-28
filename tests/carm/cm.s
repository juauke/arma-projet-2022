	ldi r0, 0
	ldi r5, 0

loop:	in r7
	ldi r5, 13
	jeq r7, r5, eol
	out r7
	addi r1, r0, 1
	add r0, r1, 0
	add r6, r5, r0
	st r7, r6, 0
	jmp loop

eol:	ldi r3, 0
	
loop2:
	add r6, r5, r0
	ld r7, r6, 0
	out r7 
	subi r1, r0, 1
	add r0, r1, 0
	jeq r1, r3, end
	jmp loop2

end:	jmp end
