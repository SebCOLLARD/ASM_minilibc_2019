    global strncmp
    section .text

strncmp:
    xor rcx, rcx
strcmp_begin:
    cmp rcx, rdx
    je strcmp_end
    mov r8b, [rsi + rcx]
    cmp [rdi + rcx], r8b
    jne strcmp_end
    cmp byte [rdi + rcx], 0
    je strcmp_end
    inc rcx
    jmp strcmp_begin
strcmp_end:
    sub r8b, [rdi + rcx]
    mov rax, r8
    ret
