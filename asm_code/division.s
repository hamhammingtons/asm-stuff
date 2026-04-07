section .data

section .text 
    global _start

_start:
    mov eax, 11; being divided 
    mov ecx, 3; divisor
    mov edx, 0; 
    div ecx; 

    ; this will return a modulo and a quotient, so "how many times 3 does it fit into 11"
    ; so 3 * 3 = 9, thats the max we can fit into 11, 11-9 = 2, so the result is 2

    ; IDEA: EAX will get 3, because 3 fits into 11 three times,
    ; EDX will get the remainder, which is 2
    
    int 80h; 