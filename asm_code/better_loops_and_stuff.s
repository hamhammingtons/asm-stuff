section .data
  my_list db 12, 45, 88, 12, 34, 99
  list_len equ $ - my_list
  target db 88
 
section .text 
  global _start 

_start: 
  mov eax, 0

loop: 
  mov bl, [my_list+eax]
  
  cmp bl, [target]
  je if_true       ; Jump to set ebx=1 then exit
  
  inc eax
  cmp eax, list_len
  jl loop

not_found:
  mov ebx, 0       ; Target not found
  jmp boob         ; Go to the common exit

if_true: 
  mov ebx, 1       ; Target found

boob:              ; The "EXIT" label
  mov eax, 1       ; Syscall for sys_exit
  int 80h