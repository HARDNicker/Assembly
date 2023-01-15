include 'emu8086.inc' 

mov al, x0
mov x1, al
call Prints
call Encrypt
call Prints
mov al, x0
mov x1, al
call Encrypt
call Prints
ret

Gamma proc
    ;X1 = ( a * x0 + c) (mod m)
    mov al, x1
    mul a   ;ax = a * x0
    add al, c    ;ax = a * x0
    div m   ;in ah ostatok
    mov x1, ah
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
    cycle:
        call Gamma
        mov si, dx     ; number in string in si
        mov bh, string[si]    ;plus in bh in ascii code
        sub bh, 30h
        mov ah, x1
        xor ah, bh
        add ah, 30h
        mov string[si], ah    ;new number in string
        inc dx          ;next number
        loop cycle
    ret
    
string db '0010110011101010110100101001', 0
str_len db $-string
a db 2;(0 <= a < m)
c db 5;(0 <= c < m)
m db 10;(m > 0)
x0 db 22;random number
x1 db ?
define_print_string
end