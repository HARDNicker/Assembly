COMMENT *
//Ќайти наименьшее число из п€ти заданных чисел.
*
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
PerA dd 10
PerB dd 12
PerC dd 11
PerD dd 9
PerE dd 5
Min dd ?

 
.code
main PROC
	mov eax,PerA
	mov Min,eax
	mov eax,PerB
	call Iff
	mov eax,PerC
	call Iff
	mov eax,PerD
	call Iff
	mov eax,PerE
	call Iff
	jmp TheEnd

	
Iff Proc
	cmp Min,eax
	jg Srav
	ret
Iff ENDP

Srav Proc
	mov Min,eax
	ret
Srav ENDP
TheEnd:

INVOKE ExitProcess,0

main ENDP
END main
 