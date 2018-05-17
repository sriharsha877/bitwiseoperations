.PHONY=all

VPATH = ./src : ./obj : ./inc

a.out: main.o
	gcc $^ -o $@
	mv *.o ./obj

%.o:%.c
	gcc -c ./src/*.c -I ./inc

clean:
	rm -rf obj/*
	rm -f a.out
