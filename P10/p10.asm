section .text

global pBin8b
global pBin16b
global pBin32b

pBin8b:
        push ebp
        mov ebp,esp
        mov edx, [ebp+8]
        mov ecx,8

.ciclo: shl dl,1
        jc .esuno
        mov al,'0'
        jmp .imprimir
.esuno: mov al,'1'
.imprimir: call my_putchar

        loop .ciclo

        pop ebp

        ret

pBin16b:
        push ebp
        mov ebp,esp
        mov edx, [ebp+8]
        mov ecx,16

.ciclo: shl dx,1
        jc .esuno
        mov al,'0'
        jmp .imprimir
.esuno: mov al,'1'
.imprimir: call my_putchar

        loop .ciclo

        pop ebp

        ret

pBin32b:
        push ebp
        mov ebp,esp
        mov edx, [ebp+8]
        mov ecx,32

.ciclo: shl edx,1
        jc .esuno
        mov al,'0'
        jmp .imprimir
.esuno: mov al,'1'
.imprimir: call my_putchar

        loop .ciclo

        pop ebp

        ret




my_putchar:
            pushad
            push eax
            mov eax,4
            mov ebx,1
            mov ecx,esp
            mov edx,1
            int 80h
            pop eax
            popad
            ret