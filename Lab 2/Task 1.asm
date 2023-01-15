COMMENT *
//Из трех данных чисел выбрать наименьшее.
* 
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
 PerA dd 10
 PerB dd 3
 PerC dd 2
 Min dd ?
.code
main PROC
	mov eax,PerA
	mov ebx,PerB
	mov ecx,PerC
	cmp eax,ebx
	jl c1
	a1:
	cmp ebx,ecx
	jl c2
	jmp EndOfIf
	
 
 c1:
 mov ebx,eax
 jmp a1
 c2:
 mov ecx,ebx
 EndOfIf:
 mov Min,ecx
INVOKE ExitProcess,0

main ENDP
END main
 