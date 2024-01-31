;Tanner Bebb
;Assembly language practice
;Practicing using the addition and subtraction commands.

includelib irvine32.lib
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data

myValue_1 DWORD 1000h
myValue_2 DWORD 2000h
myValue_3 DWORD 3000h
myValue_4 DWORD 4000h

.code

main proc

inc myValue_1				;myValue_1 = 1001h
mov eax, myValue_1			;eax = 1001h
dec eax						;eax = 1000h

mov ebx, myValue_2			;ebx = 2000h
ADD eax, ebx				;eax = 3000h
SUB eax, ebx				;eax = 1000h


	invoke ExitProcess, 0

main endp 

end main