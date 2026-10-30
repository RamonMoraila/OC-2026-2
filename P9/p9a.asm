section .text

global mystrcmp

mystrcmp:
            push ebp
            mov ebp,esp

            mov edx, [ebp+8];
            mov eax, [ebp+12];
            mov ecx,0

            .ciclo:
            mov al,[eax+ecx]
            mov dl,[edx+ecx]
            cmp al,dl
            jz .incrementar
            jmp .noson
            .incrementar:
                        inc ecx
                        cmp byte[eax+ecx],0
                        jnz .ciclo

            mov eax,0
            pop ebp
            ret


            .noson:
            mov eax,1
            pop ebp
            ret
