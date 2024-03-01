    BITS 64
    section .text
    global my_find

my_find:
    xor rsi, rsi
    xor rcx, rcx

comp:
    cmp BYTE[rsi + rcx], 0
    je returerr
    cmp BYTE[rsi + rcx], sil
    jmp okay

loop:
    cmp sil, 5
    jle inf

    jne sup

    je okay
    inc rsi
    jmp loop

inf:
    add sil, 1
    ret

sup:
    sub sil, 1
    ret

okay:
    mov rax, '9'
    ret

returerr:
    ret
