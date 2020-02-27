    global strchr
    section .text

strchr:
    xor rcx, rcx
strchr_begin:
    cmp byte [rdi + rcx], 0
    je strchr_end
    cmp [rdi + rcx], sil
    jne strchr_not_found
    mov rax, rdi
    add rax, rcx
    ret
strchr_not_found:
    inc rcx
    jmp strchr_begin
strchr_end:
    xor rax, rax
    ret
