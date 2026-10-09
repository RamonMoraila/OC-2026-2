%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov edx, msg
mov ebx,0

call getche

.ciclo: cmp al,byte[msg+ebx]

jz .letra

cmp al,byte[msg1+ebx]

jz .numero

inc ebx

loop .ciclo

.letra: mov al,10       ; cambio de linea
call putchar
mov edx,msg2
call puts
jmp .terminar

.numero: mov al,10       ; cambio de linea
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
msg1 db '0123456789',0xa,0
msg2 db 'es una letra',0xa,0
msg3 db 'es un numero',0xa,0