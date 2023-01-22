section .text
    global _start

_start:
    call _hello
    call _goodbye
    mov eax, 1         ; system call number (sys_exit)
    xor ebx, ebx       ; exit status (0)
    int 0x80           ; call kernel

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
