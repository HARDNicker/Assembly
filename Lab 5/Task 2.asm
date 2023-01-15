COMMENT*//ƒана строка a. 
//ѕолучить строку b, котора€ получена из строки а, если ее скопировать три раза.
*
 
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data 
String dd 'Test',0
DString dd ?

.code
main PROC
lea esi, String
lea edi, DString
mov ecx,2
c1:
cat1:
  lodsb
  stosb
  test al, al
	jnz cat1
	lea esi, String
	dec edi
cat2:
  lodsb
  stosb
  test al, al
jnz cat2
dec edi
loop c1
	mov edx,offset DString
INVOKE ExitProcess,0

main ENDP
END main
 