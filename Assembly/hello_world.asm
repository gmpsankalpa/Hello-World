global _start

section .text
_start:
    mov     eax, 4          ; syscall: sys_write
    mov     ebx, 1          ; file descriptor: stdout
    mov     ecx, message    ; pointer to message
    mov     edx, 13         ; message length
    int     0x80            ; call kernel

    mov     eax, 1          ; syscall: sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; call kernel

section .data
message db  "Hello, World!", 0x0A  ; message and newline

