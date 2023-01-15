COMMENT *
//Дано натуральное число n. 
//Напишите программу, которая выводит произведение первых N чётных натуральных чисел.
*
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
PerN dd 5
PerA dd 1
del dd 2
result dd ?

.code
main PROC
	mov ecx,PerN
	mov ebx,PerA

c1:
	mov edx,0
	mov eax,ecx
	idiv del
	cmp edx,0
	je c2
Back:
	loop c1
	cmp ecx,0
	je Exit

c2:
	imul ebx,ecx
	jmp Back

Exit:
mov result,ebx

INVOKE ExitProcess,0

main ENDP
END main
 