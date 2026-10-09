%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov edx, msg

call getche

cmp al,byte[msg+13]

jb .menor

mov al,10       ; cambio de linea
call putchar
mov edx,msg2
call puts
jmp .terminar

.menor: mov al,10       ; cambio de linea
call putchar
mov edx,msg3
call puts
jmp .terminar

mov al,10       ; cambio de linea
call putchar

.terminar: mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

section	.data
msg	db 'abcdefghijklmnopqrstuvwxyz',0xa,0
msg2 db 'mayor a m',0xa,0
msg3 db 'menor a m',0xa,0