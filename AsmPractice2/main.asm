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

mov ecx, myValue_3			;ecx = 3000h
ADD ebx, ecx				;ebx = 5000h
SUB ebx, ecx				;ebx = 2000h

mov edx, myValue_4			;edx = 4000h
ADD ebx, edx				;ebx = 6000h
SUB ebx, edx				;ebx = 4000h


invoke ExitProcess, 0

main endp 

end main