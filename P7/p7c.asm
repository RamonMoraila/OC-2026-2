%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov edx,msg
mov ebx,0
mov ecx, 10

.ciclo: call getche
mov al, byte[msg+ebx]

inc ebx

loop .ciclo
mov al,10       ; cambio de linea
call putchar


mov edx, msg1
call puts

mov al,10       ; cambio de linea
call putchar

mov ebx,0

mov ecx, 10

mov edx, msg

.mostrar: mov al,byte[msg+ebx] 
call puts

push ax

mov al,10       ; cambio de linea
call putchar

pop ax

inc ebx

loop .mostrar

mov al,10       ; cambio de linea
call putchar

.terminar: mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

section	.data
msg db 10
msg1 db 'Datos guardados',0xa,0
