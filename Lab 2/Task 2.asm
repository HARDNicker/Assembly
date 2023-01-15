COMMENT *
//Даны три числа. Найти сумму двух наибольших из них. 
* 
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
 PerA dd 1
 PerB dd 2
 PerC dd 3
 result dd ?

.code
main PROC
	mov eax,PerA
	mov ebx,PerB
	mov ecx,PerC
	mov edx,0
	cmp eax,ebx
	jg c1
	jmp Elsepart
	a1:
	cmp ebx,ecx
	jg c2
	jmp Elsepart1
 
 c1:
 add edx,eax
 jmp a1
 c2:
 add edx,ebx
 mov result,edx
 jmp EndOfIf

 Elsepart1:
 add edx,ecx
 mov result,edx
 jmp EndOfIf

 Elsepart:
 cmp eax,ecx
 jg c3
 jmp Elsepart2
 c3:
	add edx,ebx
	add edx,eax
	mov result,edx
	jmp EndOfIf
Elsepart2:
 add edx,ebx
 add edx,ecx
 mov result,edx
 jmp EndOfIf
 EndOfIf:

 
INVOKE ExitProcess,0

main ENDP
END main
 