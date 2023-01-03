	ldi r7, -1 # r7 <- -1
loop:	in r0 # r0 <- getchar()
	jeq r0, r7, goto # if (r0 == r7) goto 'goto' (+2)
	jmp end
goto:	jmp loop # goto loop (-3)
end:	jmp end
