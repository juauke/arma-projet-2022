	ldi r0, 0
	ldi r5, 0

	ldi r3, 13

loop:	in r7
	jeq r7, r3, eol
	out r7
	add r6, r5, r0
	st r7, r6, 0
	addi r1, r0, 1
	add r0, r1, 0
	jmp loop

eol:	out r3
	ldi r3, 0
	
loop2:
	add r6, r5, r3
	ld r7, r6, 0
	subi r6, r7, 16
	subi r7, r6, 16
	out r7 
	addi r2, r3, 0
	addi r3, r2, 1
	jeq r0, r3, end
	jmp loop2

end:	jmp end
