section .text

global str_len


str_len:
        push ebp
        mov ebp,esp
        mov edx, [ebp+8]
        mov ecx,0

   .ciclo: cmp [edx+ecx],0
        je fin_cadena
        inc ecx
        jmp .ciclo

       fin_cadena:
       mov eax,ecx
       pop ebp
       ret