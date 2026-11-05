section .text

global pBin8b

pBin8b:
        push ebp
        mov ebp,esp
        mov eax, [ebp+8]
        mov ecx,8

        .ciclo: shl al,1
        jc .esuno
        jnc .escero
        .continuar: inc dl
        loop .ciclo

        mov esp,ebp

        pop ebp

        ret

        .esuno: mov al,'1'
        call my_putchar
        jmp .continuar

        .escero: mov al,'0'
        call my_putchar
        jmp .continuar



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