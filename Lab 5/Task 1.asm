COMMENT*//ƒан целочисленный массив.  
//Ќайти количество чисел в массиве, которые дел€тс€ на 3, но не дел€тс€ на 7.
*
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
Array dd 50,40,30,20,10 
len dd $ - Array
Zero dd 0
Three dd 3
Four dd 4
Seven dd 7
Result dd ?
Garbage dd ?

.code
main PROC
mov eax,len
mov edx,0
div Four
mov ecx,eax
For1:
	mov eax,Array[ecx*4-4]
	push ecx
	push eax
	CALL IFF
	cmp edx,1
	je Nextt
	CALL retur
	Nextt:
Loop For1
jmp TheEnd

Iff PROC
	pop edx ; Clear garbage
	mov ecx,0
	mov edx,0
	div Three
	cmp edx,Zero
	jne retur
	pop eax
	push eax
	mov ecx,0
	mov edx,0
	div Seven
	cmp edx,Zero
	jne Metka
	jmp retur
Iff ENDP

retur PROC
	mov eax,0
	mov ecx,0
	pop eax
	pop ecx
retur ENDP

jmp Nextt

Metka PROC
	add result,1
	mov edx,1
	mov esi,1
	mov eax,0
	mov ecx,0
	pop eax
	pop ecx
Metka ENDP

jmp Nextt

TheEnd:
INVOKE ExitProcess,0

main ENDP
END main
 