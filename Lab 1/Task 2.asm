COMMENT *
//ƒаны три переменные a, b и c. »зменить значени€ этих переменных так, чтобы в a хранилось значение a+b, 
// в b хранилась разность старых значений c-a, а в c хранилось сумма старых значений a+b+c. 
//Ќапример, a=0, b=2, c=5, тогда новые значени€ a=2, b=5 и c=7.
*
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data

.code
main PROC
	mov eax,0
	mov ebx,2
	mov ecx,5
	mov edx,0
	add eax,ebx
	mov edx,ecx
	sub edx,eax
	add ebx,edx
	add ecx,eax

 
INVOKE ExitProcess,0

main ENDP
END main
