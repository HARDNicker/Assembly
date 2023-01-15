COMMENT *
//Даны два целых числа A,B (A<B). 
//Найти сумму целых чисел от A до B, которые делятся на четыре, но не делятся на шесть.
*

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
PerA dd 10
PerB dd 30
Result dd ?
Del4 dd 4
Del6 dd 6
SH dd ?

.code
main PROC
	mov eax, PerA
	mov ebx, PerB
	mov SH,0
	mov ecx,ebx
	dec PerA
Loop1:
	cmp ecx,PerA
	je TheEnd
	mov edx,0
	cmp eax,ebx
	jle c1
	jmp TheEnd
c1:
	push eax
	idiv Del4
	cmp edx,0
	jne c3
	pop eax
	push eax
	mov edx,0
	idiv Del6
	cmp edx,0
	jne c2
	jmp c3
c2:
	pop eax
	push eax
	inc eax
	inc SH
	loop Loop1

c3:
	pop eax
	inc eax
	loop Loop1

TheEnd:
	mov ecx,SH
	mov eax,0
Loop2:
	pop eax
	add Result,eax
	loop Loop2

 
INVOKE ExitProcess,0

main ENDP
END main
 