mov ah, 0x0e
mov al, 65
int 0x10

mov bh, 0x0e
mov bl, 1

loop:
    inc al
    cmp al, 'Z' + 1
    je exit

    cmp bl, 1
    je alternate

    int 0x10
    jmp loop

exit:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
