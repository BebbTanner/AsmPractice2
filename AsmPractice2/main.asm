;Tanner Bebb
;Assembly language practice
;Unsure of the current goal.

includelib irvine32.lib
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data

.code

main proc

	invoke ExitProcess, 0

;The main endp is like the closing parenthesis on a c++ function.
main endp 

;I am pretty sure that this statement ends the whole program.
end main