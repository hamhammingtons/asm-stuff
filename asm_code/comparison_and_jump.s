section .data

section .text 
    global _start  

_start:
    mov eax, 1; 
    mov ebx, 2; 
    cmp eax, ebx; compare eax and ebx, it will set the flags accordingly 

    ; basically we have 3 flags which are pretty importnat to us 
    ; ZF(zero flag) is set when the result of the cmp is zero, meaning EQUAL [1-1=0]
    ; SF(sign flag) is set when the result of the cmp is negative, meaning LESS THAN
    ; CF(carry flag) is set when the result of the cmp is positive, meaning LESS THAN too but 
        ; for unsigned numbers, same thing.  

    ; cf is for unsigned numbers, sf is for signed numbers

    jl lesser; jump if less, it just checks the sign flag.
    jmp end ; condition is not met, so we jump to the end

lesser; 
    mov ecx, 1 
    int 80h;
end:
    int 80h;