	ldi r0, 49
	ldi r1, 57

	ldi r6, 105
	out r6
	ldi r6, 63
	out r6

loop:	in r7
	jlt r7, r0, loop
	jlt r1, r7, loop

	out r7
	subi r6, r7, 24
	subi r7, r6, 24

	ldi r0, 97
	ldi r1, 122

	ldi r6, 13
	out r6
	ldi r6, 99
	out r6
	ldi r6, 63
	out r6

getc:	in r5
	jlt r5, r0, getc
	jlt r1, r5, getc

	out r5
	ldi r6, 13
	out r6

	ldi r3, 0
	add r0, r7, 0
line:	add r1, r7, 0

putc:   out r5
	subi r2, r1, 1
	add r1, r2, 0
	jeq r1, r3, nextl
	jmp putc

nextl:	out r6

	subi r2, r0, 1
	add r0, r2, 0
	jeq r0, r3, end
	jmp line

end:    jmp end
