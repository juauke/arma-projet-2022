        ldi r7, -1 # r7 <- 255
loop:   in r0 # r0 <- getchar()
        jeq r0, r7, loop # if (r0 == r7), goto loop
        out r0 # putchar() <- r0
end:    jmp end

