%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov ecx, N
mov ebx, vprueba

call guardarYmostrar

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

guardarYmostrar:

                mov esi,0
                .repetir: call getch
                mov ebp,0

                                            .comparacion: cmp al,byte[rango+ebp]
                                            jz .esnumero
                                            inc ebp
                                            jnz .comparacion
                                            jz .repetir
            
                .esnumero:
                                            sub al,48

                                            mov [ebx+esi],al

                                            mov eax,[ebx+esi]

                                            call pHex_b

                                            mov al,10       ; cambio de linea
				                            call putchar

                                            inc esi

                                            loop .repetir

                                             ret

section	.data
N equ 7
i equ 10
vprueba db 0,0,0,0,0,0,0
rango db '0123456789'
