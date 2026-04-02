section .data ; -------
    char DB 'A'
    list DB 1,2,3,4, -1 ; -1 is end of list 
    string DB "asm is c but harder", 0 ; 0 is end of string

section .text
    global _start ;indented

_start: 
    xor ebx, ebx ; zero out ebx
    mov bl, [char]; i 

    mov eax, 1 ;intedned  
    int 80h; i 
