section .data

section .text
   global _start   

_start:
    mov eax, 2
    shr eax, 1 ; 0b0010 shift to the right, step: 1
    ; meaning; move everything to the right by 1 bit 
    ; 0010 -> 0001, res. : 1
    ; the rightmost bit goes to the carry flag, and the leftmost bit is filled with 0
    ; btw: shift is like diving by 2, because binary is base 2, every shift = divide by 2
    
    shl eax, 1 ; is just multiplication by 2
    ; so 0001 -> step: 1 -> 0010, res. : 2
    ; the leftmost bit goes to the carry flag, and the rightmost bit is filled

    ; sar, sal does the same thing but its for signed numbers 
    int 80h;