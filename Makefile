CC=gcc
.PHONY=clean

SRC:=./src
OBJ:=./obj
INC:=./inc

SOURCES := $(wildcard $(SRC)/*.c)
OBJECTS := $(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SOURCES))

all: $(OBJECTS)
	$(CC) $^ -o $@

$(OBJ)/%.o:$(SRC)/%.c
	$(CC) -I$(INC) -c $< -o $@
clean:
	rm -rf obj/*
	rm -f a.out
