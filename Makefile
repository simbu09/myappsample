CC = gcc
INCLUDES = -I ./
OBJS = hello.o

all: ${OBJS}
	@echo "building program ..."
	${CC} ${OBJS} ${INCLUDES} -o hello

%.o: %.c
	${CC} -c $*.c ${INCLUDES}

list:
	@echo $(shell ls)

clean:
	@echo "Cleaning.."
	rm -rf *.o
	rm -rf hello
