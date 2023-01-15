COMMENT *
//Пользователь вводит три числа. 
Увеличьте первое число в два раза, второе числа уменьшите на 3, третье число возведите в квадрат и затем найдите сумму новых трех чисел.
* 
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
 
.data
a dd 1
b dd 4
ac dd 5
result dd ?

.code
main PROC 
	mov eax, a
	mov ebx, b
	mov ecx, ac
	mov edx, 0
	imul eax, 2
	sub ebx, 3
	imul ecx,ecx
	add edx,eax
	add edx,ebx
	add edx,ecx
	add result,edx


 
INVOKE ExitProcess,0

main ENDP
END main
 