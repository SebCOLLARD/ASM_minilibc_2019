    global memset
    section .text

memset:
    xor rcx, rcx
memset_begin:
    cmp rcx, rdx
    je memset_end
    mov byte [rdi + rcx], sil
    inc rcx
    jmp memset_begin
memset_end:
    mov rax, rdi
    ret