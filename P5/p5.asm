%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov ebx, 0x5C4B2A60

mov eax,ebx

call pHex_dw

mov al,10       ; cambio de linea
call putchar

add ebx, 0x2209470

mov eax,ebx

call pHex_dw

mov al,10       ; cambio de linea
call putchar

push bx;

mov al,10       ; cambio de linea
call putchar

mov al,bl

call pHex_b

mov al,10       ; cambio de linea
call putchar

mov al,8h

mul bl

call pHex_w

mov al,10       ; cambio de linea
call putchar

mov [n],al

mov al,[n]

call pHex_b

mov al,10       ; cambio de linea
call putchar

inc byte[n]

mov al,[n]

call pHex_b

mov al,10       ; cambio de linea
call putchar

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

section	.data
n dw 0h