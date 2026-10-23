%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov ecx, N
mov ebx, vectori1

call guardarVector

mov ecx, N
mov edx, vectori2

call guardarVector2

mov ecx,N

call sumaVector

mov ecx,N

call productoEscalar

mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel

guardarVector:
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

guardarVector2:
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

                                            mov [edx+esi],al

                                            mov eax,[edx+esi]

                                            call pHex_b

                                            mov al,10       ; cambio de linea
				                            call putchar

                                            inc esi

                                            loop .repetir

                                            ret

sumaVector:
                mov esi,0

				.ciclo: mov eax, [ebx+esi]

                add eax,[edx+esi]

                mov [vectori3+esi],eax

                mov eax, [vectori3+esi]

				call pHex_b

				mov al,10       ; cambio de linea
				call putchar

				inc esi

				loop .ciclo
				ret

productoEscalar:

                mov esi,0
                mov ebp, acumulador

				.ciclo: mov al, [ebx+esi]

                mul byte[edx+esi]

                push eax

                movzx eax,al

                add ebp,eax

                pop eax

				inc esi

				loop .ciclo

                mov eax,ebp

                call pHex_w

                mov al,10       ; cambio de linea
				call putchar

				ret

section	.data
N equ 9
acumulador db 0
vectori1 db 0,0,0,0,0,0,0,0,0
vectori2 db 0,0,0,0,0,0,0,0,0
vectori3 db 0,0,0,0,0,0,0,0,0
rango db '0123456789'