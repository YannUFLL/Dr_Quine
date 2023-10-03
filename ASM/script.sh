#!/bin/sh 
nasm -f elf64 -F dwarf -g Collen.asm -o Collen.o
gcc -g -no-pie Collen.o 
./a.out > output.txt 
diff Collen.asm output.txt 
