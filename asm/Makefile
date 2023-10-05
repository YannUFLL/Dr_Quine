ASM_SRC := $(wildcard *.asm)
ASM_PROGS := $(patsubst %.asm, %, $(ASM_SRC))

all: $(ASM_PROGS)

$(ASM_PROGS): %: obj/%.o
	gcc -g -no-pie $< -o $@

obj/%.o: %.asm
	nasm -f elf64 -g -F dwarf $< -o $@

clean:
	rm -f obj/*.o
	rm -f *.o

fclean: clean
	rm -f $(ASM_PROGS)
	rm -f Sully_*
	rm -f Sully_*.asm
	rm -f Grace_kid.asm
	rm -f Sully_*.o

re: fclean all

.PHONY: all clean fclean