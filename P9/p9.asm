section .text

global suma

suma:
        push ebp
        mov ebp,esp

        mov edx, [ebp+8]
        mov eax, [ebp+12]

        add eax,edx

        mov esp,ebp

        pop ebp

        ret