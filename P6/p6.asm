%include "../LIB/pc_iox.inc"
%include "../LIB/pbin.o"

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point

mov eax, 0x22446688

ror eax, 1

call pHex_dw