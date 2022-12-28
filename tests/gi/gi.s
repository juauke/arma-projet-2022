begin:	ldi r0, 48
	ldi r1, 57
	ldi r2, 0
	ldi r3, 1
	ldi r4, 255

	ldi r6, 69
	out r6
	ldi r6, 110
	out r6
	ldi r6, 116
	out r6
	ldi r6, 105
	out r6
	ldi r6, 101
	out r6
	ldi r6, 114
	out r6
	ldi r6, 32
	out r6
	ldi r6, 63
	out r6
	ldi r6, 32
	out r6

loop:	in r7
	ldi r5, 13
	jeq r7, r5, end
	jlt r7, r0, loop
	jlt r1, r7, loop
	subi r7, r7, 24
	subi r7, r7, 24
	mul r5, r2, r3
	add r5, r5, r7
	jlt r4, r5, end
	addi r2, r5, 0
	muli r3, r3, 10
	addi r7, r7, 24
	addi r7, r7, 24
	out r7
	jmp loop

end:	ldi r6, 34
	out r6
	addi r2, r2, 24
	addi r2, r2, 24
	out r2
	ldi r6, 34
	out r6

ende: 	jmp ende
