;hello_world.asm

global _WinMain@16

section .text:
_WinMain@16:
    mov eax, 0x4            ; uses the write syscall "0x4"
    mov ecx, 1              ; uses stdout as the filedescriptor
    mov ecx, message        ; moves the message variable into the ECX register.
    mov edx, message_length ; supplies message length
    int 0x80                ; int = interrupt, 0x80 = hex val for running syscall

    ; exit program


    mov eax, 0x1            
    mov ebx, 0              ; returns 0.
    int 0x80                ; actually run it

section .data:
    message: db "Hello World!", 0xA
    message_length equ $-message
