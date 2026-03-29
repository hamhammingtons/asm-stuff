section .data
    msg db 'Hello, Assembly!', 0xa  ; The string to print (0xa is a newline)
    len equ $ - msg                 ; Calculate the length of the string

section .text
    global _start

_start:
    ; Write the string to the screen
    mov eax, 4      ; system call for write
    mov ebx, 1      ; file descriptor (1 = screen)
    mov ecx, msg    ; the address of the string
    mov edx, len    ; the length of the string
    int 0x80        ; call kernel

    ; Exit the program
    mov eax, 1      ; system call for exit
    mov ebx, 0      ; status code 0
    int 0x80        ; call kernel