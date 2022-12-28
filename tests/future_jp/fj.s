	ldi r7, -1
loop:	in r0
	jeq r0, r7, goto
	jmp end
goto:	jmp loop
end:	jmp end
