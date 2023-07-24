org 0x7C00 ; Inicio del bootloader

start:
     mov ah, 0x0E
     mov al, 'H'
     int 0x10
     
  mov al, 'o'
     int 0x10

mov al, 'l'
     int 0x10
     
mov al, 'a'
     int 0x10


     jmp $ ; Bucle infinito
     

times 510 - ($-$$) db 0 ; Rellenar el sector de arranque con ceros

dw 0xAA55     
