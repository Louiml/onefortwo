section .text
    global _start

_start:
    call _hello
    call _goodbye
    mov eax, 1   
    xor ebx, ebx   
    int 0x80   

_hello:
    call load_hello
    ret

_goodbye:
    call load_goodbye
    ret

load_hello:
    ret

load_goodbye:
    ret
