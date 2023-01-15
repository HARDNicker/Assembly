include 'emu8086.inc'
call Prints
mov bl, gamma_len
call Encrypt
call Encrypt
ret
Prints proc
    lea si, string
    call print_string
    PRINTN ''
    ret
Encrypt proc  
    mov cl, str_len
    dec cl
    xor dx, dx
    cycle_1:
        mov ax, dx
        div bl
        mov si, dx
        mov al, ah
        xor ah, ah
        mov di, ax
        mov ah, gamma[di]
        mov bh, string[si]
        sub ah, 30h
        sub bh, 30h
        xor ah, bh
        add ah, 30h
        mov string[si], ah
        inc dx
        loop cycle_1
    call Prints
    ret

gamma db '1001110101011'
gamma_len db $-gamma
string db '0010110011101010110100101001', 0
str_len db $-string
define_print_string
end