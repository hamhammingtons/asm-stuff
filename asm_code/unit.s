section .bss
    num resb 1 ; reserve space for one byte (thx claude)

section .text
    global _start

_start: 
    mov bl, 1 ; 
    mov [num], bl ; store 1 in num (whats [num+3] ?)