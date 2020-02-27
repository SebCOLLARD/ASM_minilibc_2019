    global strlen
    section .text

strlen:
    push rbp
    mov rbp, rsp
    xor rax, rax
my_strlen_begin:
    mov cl, [rdi + rax]
    cmp cl, 0
    je my_strlen_end
    inc rax
    jmp my_strlen_begin
my_strlen_end:
    leave
    ret
