section .text
  global _start 
  
_start: 
  mov eax, 0x11BBAA ; -> 0x11AABB 
  
  mov ebx, eax; 
  mov ecx, eax;
  
  and ebx, 0x00FF00 ; masking to get BB 
  shr ebx, 8; moved to end 
  
  and ecx, 0x0000FF; 
  shl ecx, 8; moved to middle 
  
  mov edx, ebx; problem didnt move 11 into this but i dont care anymore  
  add edx, ecx; 
  
  mov eax, edx ; you would get 0x00BBAA 