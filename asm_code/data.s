section .data
    num dd 5          ; Indented!

section .text
    global _start

_start:
    mov eax, 1        ; Indented!
    mov ebx, [num]    ; Indented!
    int 0x80
