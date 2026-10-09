%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov cx,4

mov ebx,ecx

mov edx,msg

.ci: call puts

cmp cx,bx

jz .cambiar

loop .ci

.cambiar: mov al,10       ; cambio de linea
call putchar
dec bx
jz .abajo
jnz .ci

.abajo: mov bx,cx

mov edx, msg

.ciclo: call puts

loop .ciclo

mov cx,bx

dec bx
dec cx

mov al,10       ; cambio de linea
call putchar

jz .terminar

jnz .ciclo

mov al,10       ; cambio de linea
call putchar

.terminar: mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

section	.data

msg db '*',0