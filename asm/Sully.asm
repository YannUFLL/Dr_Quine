bits 64

extern fprintf
extern sprintf
extern fclose
extern system
extern fopen

section .data
    str_pgrm db "bits 64%1$c%1$cextern fprintf%1$cextern sprintf%1$cextern fclose%1$cextern system%1$cextern fopen%1$c%1$csection .data%1$c    str_pgrm db %2$c%3$s%2$c, 0%1$c    name db %2$cSully_5.asm%2$c, 0%1$c    object db %2$cSully_5.o%2$c, 0%1$c    exec db %2$cSully_5%2$c, 0%1$c    open_flag db %2$ca%2$c, 0%1$c    command db %2$cnasm -f elf64 -F dwarf -g -o %%3$s %%1$s && gcc -no-pie %%3$s -o %%2$s && ./%%2$s%2$c, 0%1$c%1$csection .bss%1$c    command_buffer resb 200%1$c%1$csection .text%1$c    global main%1$c    main:%1$c       sub rsp, 8%1$c       mov rbx, %4$d%1$c       cmp rbx, 0%1$c       jz return%1$c       mov rax, 5%1$c       sub rax, rbx%1$c       sub byte [name + 6], al%1$c       sub byte [exec + 6], al%1$c       sub byte [object + 6], al%1$c       mov rdi, name%1$c       mov rsi, open_flag%1$c       call fopen%1$c       mov rdi, rax%1$c       mov r12, rax%1$c       mov rsi, str_pgrm%1$c       mov rdx, 10%1$c       mov rcx, 34%1$c       mov r8, str_pgrm%1$c       sub rbx, 1%1$c       mov r9, rbx%1$c       call fprintf%1$c       mov rdi, command_buffer%1$c       mov rsi, command%1$c       mov rdx, name%1$c       mov rcx, exec%1$c       mov r8, object%1$c       call sprintf%1$c       mov rdi, r12%1$c       call fclose%1$c       mov rdi, command_buffer%1$c       call system%1$c       jmp return%1$c%1$c    return:%1$c        add rsp, 8%1$c        ret", 0
    name db "Sully_5.asm", 0
    object db "Sully_5.o", 0
    exec db "Sully_5", 0
    open_flag db "a", 0
    command db "nasm -f elf64 -F dwarf -g -o %3$s %1$s && gcc -no-pie %3$s -o %2$s && ./%2$s", 0

section .bss
    command_buffer resb 200

section .text
    global main
    main:
       sub rsp, 8
       mov rbx, 5
       cmp rbx, 0
       jz return
       mov rax, 5
       sub rax, rbx
       sub byte [name + 6], al
       sub byte [exec + 6], al
       sub byte [object + 6], al
       mov rdi, name
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
       mov rdx, name
       mov rcx, exec
       mov r8, object
       call sprintf
       mov rdi, r12
       call fclose
       mov rdi, command_buffer
       call system
       jmp return

    return:
        add rsp, 8
        ret