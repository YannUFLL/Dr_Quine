bits 64

;outside comment

extern printf

section .data
    str_pgrm db "bits 64%1$c%1$c;outside comment%1$c%1$cextern printf%1$c%1$csection .data%1$c    str_pgrm db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c    global main%1$c%1$c    emptyFunction:%1$c        ret%1$c%1$c    main:%1$c        sub rsp, 8 ; stack alignement for respect the x86_64 calling convention%1$c        mov rdi, str_pgrm%1$c        mov rsi, 10%1$c        mov rdx, 34%1$c        mov rcx, str_pgrm%1$c        xor rax, rax%1$c        call printf wrt ..plt%1$c        call emptyFunction%1$c    return:%1$c        add rsp, 8%1$c        ret", 0

section .text
    global main

    emptyFunction:
        ret

    main:
        sub rsp, 8 ; stack alignement for respect the x86_64 calling convention
        mov rdi, str_pgrm
        mov rsi, 10
        mov rdx, 34
        mov rcx, str_pgrm
        xor rax, rax
        call printf wrt ..plt
        call emptyFunction
    return:
        add rsp, 8
        ret