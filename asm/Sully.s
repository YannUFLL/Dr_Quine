bits 64

extern fprintf
extern sprintf
extern fclose
extern system
extern fopen

section .data
    str_pgrm db "bits 64%1$c%1$cextern fprintf%1$cextern sprintf%1$cextern fclose%1$cextern system%1$cextern fopen%1$c%1$csection .data%1$c    str_pgrm db %2$c%3$s%2$c, 0%1$c    fmt_name db %2$cSully_%%d.s%2$c, 0%1$c    fmt_object db %2$cSully_%%d.o%2$c, 0%1$c    fmt_exec db %2$cSully_%%d%2$c, 0%1$c    open_flag db %2$ca%2$c, 0%1$c    command db %2$cnasm -f elf64 -F dwarf -g -o %%3$s %%1$s && gcc -no-pie %%3$s -o %%2$s && ./%%2$s && rm -rf %%3$s%2$c, 0%1$c%1$csection .bss%1$c    command_buffer resb 200%1$c    name_buffer resb 50%1$c    object_buffer resb 50%1$c    exec_buffer resb 50%1$c%1$csection .text%1$c    global main%1$c    main:%1$c        push rbx%1$c        mov rbx, %4$d%1$c        cmp rbx, -1%1$c        je return%1$c        mov rdi, name_buffer%1$c        mov rsi, fmt_name%1$c        mov rdx, rbx%1$c        call sprintf%1$c        mov rdi, object_buffer%1$c        mov rsi, fmt_object%1$c        mov rdx, rbx%1$c        call sprintf%1$c        mov rdi, exec_buffer%1$c        mov rsi, fmt_exec%1$c        mov rdx, rbx%1$c        call sprintf%1$c        mov rdi, name_buffer%1$c        mov rsi, open_flag%1$c        call fopen%1$c        mov rdi, rax%1$c        mov r12, rax%1$c        mov rsi, str_pgrm%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        mov r8, str_pgrm%1$c        sub rbx, 1%1$c        mov r9, rbx%1$c        call fprintf%1$c        mov rdi, command_buffer%1$c        mov rsi, command%1$c        mov rdx, name_buffer%1$c        mov rcx, exec_buffer%1$c        mov r8, object_buffer%1$c        call sprintf%1$c        mov rdi, r12%1$c        call fclose%1$c        mov rdi, command_buffer%1$c        call system%1$c%1$c    return:%1$c        pop rbx%1$c        mov rax, 0%1$c        ret", 0
    fmt_name db "Sully_%d.s", 0
    fmt_object db "Sully_%d.o", 0
    fmt_exec db "Sully_%d", 0
    open_flag db "a", 0
    command db "nasm -f elf64 -F dwarf -g -o %3$s %1$s && gcc -no-pie %3$s -o %2$s && ./%2$s && rm -rf %3$s", 0

section .bss
    command_buffer resb 200
    name_buffer resb 50
    object_buffer resb 50
    exec_buffer resb 50

section .text
    global main
    main:
        push rbx
        mov rbx, 5
        cmp rbx, -1
        je return
        mov rdi, name_buffer
        mov rsi, fmt_name
        mov rdx, rbx
        call sprintf
        mov rdi, object_buffer
        mov rsi, fmt_object
        mov rdx, rbx
        call sprintf
        mov rdi, exec_buffer
        mov rsi, fmt_exec
        mov rdx, rbx
        call sprintf
        mov rdi, name_buffer
        mov rsi, open_flag
        call fopen
        mov rdi, rax
        mov r12, rax
        mov rsi, str_pgrm
        mov rdx, 10
        mov rcx, 34
        mov r8, str_pgrm
        sub rbx, 1
        mov r9, rbx
        call fprintf
        mov rdi, command_buffer
        mov rsi, command
        mov rdx, name_buffer
        mov rcx, exec_buffer
        mov r8, object_buffer
        call sprintf
        mov rdi, r12
        call fclose
        mov rdi, command_buffer
        call system

    return:
        pop rbx
        mov rax, 0
        ret