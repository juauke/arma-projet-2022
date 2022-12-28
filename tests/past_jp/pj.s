	ldi r7, -1
loop:	in r0
	jeq r0, r7, loop
	out r0
end: jmp end
