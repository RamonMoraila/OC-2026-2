section .text

global str_len
global clrBit


str_len:
        push ebp
        mov ebp,esp
        mov edx, [ebp+8]
        mov ecx,0

   .ciclo: mov al,[edx+ecx]
        cmp al,0
        je .fin_cadena
        inc ecx
        jmp .ciclo

       .fin_cadena:
       mov eax,ecx
       pop ebp
       ret

clrBit:
       push ebp
       mov ebp,esp
       mov eax, [ebp+8]
       mov edx, [ebp+12]

       not edx
       and eax,edx

       pop ebp
       ret
