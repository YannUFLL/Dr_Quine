C_SRC := $(wildcard *.c)
C_PROGS := $(patsubst %.c, %, $(C_SRC))

CFLAGS = -I ../include -Wall -Wextra -Werror 

all: $(C_PROGS)

$(C_PROGS): %: obj/%.o
	gcc -g -no-pie $< -o $@

obj/%.o: %.c
	gcc $(CFLAGS) -g -c $< -o $@

clean:
	rm -f obj/*.o
	rm -f *.o

fclean: clean
	rm -f $(C_PROGS)
	rm -f Sully_*
	rm -f Sully_*.c
	rm -f Grace_kid.c
	rm -f Sully_*.o

re: fclean all 

.PHONY: all clean fclean