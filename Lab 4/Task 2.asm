COMMENT *
//Написать подпрограмму, вычисляющую значение функции 
//fx = 2x^3 - 9x^2 + 16. Вычислить 2f(x1) + f(x2).
*
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
x1 dd 5
x2 dd 6
fx1 dd ?
fx2 dd ?
Otv dd ?

.code
main PROC
	mov eax,x1
	call FunK
	mov fx1,ecx
	mov eax,x2
	call FunK
	mov fx2,ecx
	mov eax,fx1
	imul eax,2
	add eax,fx2
	mov Otv,eax
	jmp TheEnd


FunK Proc
	mov ebx,eax
	mov ecx,0
	imul eax,eax
	imul eax,ebx
	imul eax,2
	imul ebx,ebx
	imul ebx,9
	mov ecx,eax
	sub ecx,ebx
	add ecx,16
	ret
Funk ENDP

TheEnd:

INVOKE ExitProcess,0

main ENDP
END main
 