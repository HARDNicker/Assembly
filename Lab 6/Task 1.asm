COMMENT*//Пусть дан массив из 5 элементов в двоичном формате. 
//Вывести на консоль сумму элементов массива в десятичном формате.
*
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

include C:\masm32\include\kernel32.inc 
include C:\masm32\include\user32.inc 
includelib C:\masm32\lib\kernel32.lib 
includelib C:\masm32\lib\user32.lib

.data
Array dd 0001b,0010b,0100b,1000b,0011b,100111b
	lenM dd $ - Array ;изнчально в двоичном, все сложжить и перевести в десятичное
sum dd 0
perA dd ?
perB dd ?
perP dd ?
perN dd ?
	Two dd 2
	Four dd 4
	Ten dd 10

BSIZE equ 15   ; так задается константа BSIZE
ifmt db "%d", 0     ;строка формата
buf db BSIZE dup(?) ;буфер
stdout dd ?         
cWritten dd ?

.code
main PROC

mov eax,lenM
mov edx,0
div Four
mov ecx,eax

For1: 
	mov eax,1
	mov PerP,eax
	mov eax,0
	mov PerN,eax
	mov PerB,eax
	mov eax,Array[ecx*4-4]
	add sum,eax
loop for1		

TheEnd:
invoke GetStdHandle, -11 ; дескриптор вывода
mov stdout,eax           ; по умолчанию помещается в eax
invoke wsprintf, ADDR buf, ADDR ifmt, sum
invoke WriteConsoleA, stdout, ADDR buf, BSIZE, ADDR cWritten, 0
INVOKE ExitProcess,0

main ENDP
END main
 