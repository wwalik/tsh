CC := gcc
CFLAGS := --std=c99
DBGFLAGS := -ggdb

.PHONY: clean

tsh: main.c p_readline.c
	$(CC) $(CFLAGS) -o $@ $^

debug: main.c p_readline.c
	$(CC) $(CFLAGS) $(DBGFLAGS) -o tsh-$@ $^

clean:
	rm tsh* 
