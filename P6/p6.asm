%include "../LIB/pc_iox.inc"


extern pBin_n   
extern pBin_b  
extern pBin_w 
extern pBin_dw

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov eax, 0x22446688

ror eax, 4

call pHex_dw

mov al,10       ; cambio de linea
call putchar

mov cx, 0x3F48

shl cx,3

mov ax,cx

call pHex_w

mov al,10       ; cambio de linea
call putchar

mov esi, 0x20D685F3

mov eax,esi

call pBin_dw

mov al,10       ; cambio de linea
call putchar

xor esi, 0x40042021

push esi

mov eax,esi

call pBin_dw

mov al,10       ; cambio de linea
call putchar

mov ch, 0xA7

mov al,ch

call pBin_b

mov al,10       ; cambio de linea
call putchar

or ch,0x48

mov al,ch

call pBin_b

mov al,10       ; cambio de linea
call putchar

mov bp,0x67DA

mov ax,bp

call pBin_w

mov al,10       ; cambio de linea
call putchar



mov eax, 1	;system call number (sys_exit) -- fin del programa
int 0x80        ;call kernel