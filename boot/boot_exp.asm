mov ah, 0x0e
mov al, 'k'
int 0x10

mov ah, 0x0e
mov al, 'u'
int 0x10

mov ah, 0x0e
mov al, 't'
int 0x10

mov ah, 0x0e
mov al, 'O'
int 0x10

mov ah, 0x0e
mov al, 'S'
int 0x10

mov ah, 0x0e
mov al, '-'
int 0x10

mov ah, 0x0e
mov al, 'A'
int 0x10

mov ah, 0x0e
mov al, 'l'
int 0x10

mov ah, 0x0e
mov al, 'i'
int 0x10

mov ah, 0x0e
mov al, 'v'
int 0x10

mov ah, 0x0e
mov al, 'e'
int 0x10

mov ah, 0x0e
mov al, '.'
int 0x10

mov ah, 0x0e
mov al, '.'
int 0x10

mov ah, 0x0e
mov al, '.'
int 0x10
jmp $

times 510-($-$$) db 0
db 0x55, 0xaa

; ------------------------------------ Loop Experiments
mov ah, 0x0e
mov al, 65
int 0x10

loop:
    inc al
    cmp al, 'Z' + 1
    je exit
    int 0x10
    jmp loop

exit:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
