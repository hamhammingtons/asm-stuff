section .data
    list db 1, 2, 3, 4, 5
section .text
    global _start

_start:
    mov eax, 0 ; track of arr 
    mov cl, 0 ; track of sum 

loop: 
    mov bl, [list+ eax] ; retrive value at index -> move to bl
    add cl, bl; add value to sum
    add eax, 1; increment index
    ; you can also do that via inc eax, but i dont really care 

    cmp eax, 5 ; it just checks if the sizeof arr = 5.
    ; btw the hardcoded 5 is a bad practice, you should set a var or null terminator to be the
    ; end of the list then you can get better checking. 
    je loop_end; if its true [size = 5] then jump to loop_end
    jmp loop; if not then come back to the loop

loop_end: 
    mov eax, 1 ; 
    mov ebx, 0; 
    int 80h; 