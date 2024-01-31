;Tanner Bebb
;Assembly language practice
;Practicing using the addition and subtraction commands.

includelib irvine32.lib
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data

myValue WORD 1000h		;H is for the hexadecimal notation.

.code

main proc

inc myValue				;myValue = 1001h
mov bx, myValue			;This will store myValue in the bx register.
dec bx					;bx = 1000h

	invoke ExitProcess, 0

main endp 

end main