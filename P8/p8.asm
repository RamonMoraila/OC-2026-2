%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov ecx, N
mov ebx, vector

call desplegarVector

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

desplegarVector:
				mov esi,0

				.ciclo: mov eax, [ebx+esi]

				call pHex_b

				mov al,10       ; cambio de linea
				call putchar

				inc esi

				loop .ciclo
				ret

section	.data
N equ 9
vector db 9,0,3,1,2,6,5,7,8