section .data
    ; (Empty for now)

section .text
    global _start

_start:          ; 1. The CPU looks for this label first
    mov eax, 1   ; 2. Then it executes this
    mov ebx, 1   ; 3. Then this
    int 80h      ; 4. Then it talks to the Kernel and exits