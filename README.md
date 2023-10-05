# Quine Project - Self-Replicating Programs

## Introduction

This project aims to explore the concept of self-reproducing code through the implementation of three different programs known as `Colleen`, `Grace`, and `Sully`. Each program exhibits different properties and rules, allowing for a comprehensive understanding of quines and self-replicating programs. The project serves as an excellent starting point for more complex projects, especially in the realm of malware.

## Languages and Structure

- The programs are coded in both C and Assembly.
- The project is divided into two main folders: `C` and `ASM`.
- Each folder contains its own Makefile with the usual rules.

## Programs and Features

### Colleen

- The executable is named `Colleen`.
- The output is identical to the source code when executed.
- The source code must contain a main function, two different comments, and at least one additional function.

### Grace

- The executable is named `Grace`.
- Writes its source code into a file named `Grace_kid.c` or `Grace_kid.s`.
- No `main` function should be declared, and it should have exactly three `#define` directives and one comment.
- Program runs via a macro.

### Sully

- The executable is named `Sully`.
- Writes into a file named `Sully_X.c` or `Sully_X.s`, where X is an integer specified in the source code.
- The integer in the source code decrements with each new source file generated.
- The newly created program is compiled and executed as long as the integer X is greater than 0.

## How to Run

Navigate to either the `C` or `ASM` directory:

```bash
# Compile the programs using the Makefile
make

# Run individual programs
./Colleen
./Grace
./Sully
```
