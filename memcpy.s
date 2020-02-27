    global memset
    section .text

memcpy:
    xor rcx, rcx
memcpy_begin:
    cmp rcx, rdx
    je memcpy_end
    mov r8b, [rsi + rcx]
    mov [rdi + rcx], r8b
    inc rcx
    jmp memcpy_begin
memcpy_end:
    mov rax, rdi
    ret