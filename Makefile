CC=gcc
OBJ= c99_main.o c89.o

all: c99_main

c89.o: c89.c
	gcc -std=c89 -c $<

c99_main.o: c99_main.c
	gcc -std=c99 -c $<

c99_main_fail.o: c99_main.c
	gcc -std=c89 -c $<


c99_main: $(OBJ)
	$(CC) -o $@ $^ 

clean:
	rm -f ./*.o
