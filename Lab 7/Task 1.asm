
call Prin
call EnDecrypt
call Prin
call EnDecrypt
call Prin

ret

Prin proc
    mov ah,09
    lea dx,string
    int 21h
    mov ah,09
    lea dx,godown 
    int 21h 
    
    ret
EnDecrypt proc
    mov cl, len
    dec cl
    mov si, 0
    Begin:
        mov dl,string[si]
        push cx
        push si
        mov cl, 8
        mov si, 0
        Shift:
            shl dl,1
            jc El1;jump if carry is set CF=1        
            mov temp[si], 0
            jmp En 
            
            El1:
                mov temp[si], 1
            En:
            inc si
            loop Shift
            ;Swap
            add dl, temp[2]
            shl dl,1;bit shift left
            add dl, temp[1]
            shl dl,1
            add dl, temp[0]
            shl dl,1
            add dl, temp[6]
            shl dl,1
            add dl, temp[4]
            shl dl,1
            add dl, temp[5]
            shl dl,1
            add dl, temp[3]
            shl dl,1
            add dl, temp[7]
        pop si
        mov string[si], dl
        pop cx
        inc si
        loop Begin
    ret

string db 'Hello world!$'
len db $-string
temp db 8 DUP(?)
godown db 0dh, 0ah,'$'
