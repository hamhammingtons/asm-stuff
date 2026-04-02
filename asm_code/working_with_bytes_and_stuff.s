section .data             ; <--- Tell NASM we are defining variables now
    num db 1 
    num2 db 2

section .text             ; <--- Tell NASM we are starting the code now
    global _start

_start:
    mov bl, [num]         ; Move the 1 into the bottom of EBX
    mov cl, [num2]        ; Move the 2 into the bottom of ECX
    
    ; Setup Exit
    mov eax, 1            ; sys_exit
    mov ebx, 0            ; return 0
    int 80h