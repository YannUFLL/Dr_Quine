ASM_SRC := $(wildcard asm/*.asm)
C_SRC := $(wildcard C/*.c)
CFLAGS = -I include -Wall -Wextra -Werror 

ASM_PROGS := $(patsubst asm/%.asm, ASM_%, $(ASM_SRC))
$(ASM_PROGS): ASM_%: obj/%.o
	gcc -g -no-pie $< -o $@

obj/%.o: asm/%.asm
	nasm -f elf64 -g -F dwarf $< -o $@

C_PROGS := $(patsubst C/%.c, C_%, $(C_SRC))
$(C_PROGS): C_%: obj/%.o
	gcc -g -no-pie $< -o $@

obj/%.o: C/%.c
	gcc $(CFLAGS) -g -c $< -o $@

all: $(C_PROGS) $(ASM_PROGS)