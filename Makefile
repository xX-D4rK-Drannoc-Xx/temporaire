CC = gcc
#CPPFLAGS = -D_GNU_SOURCE
#LDFLAGS = -lcriterion
CFLAGS = -Wall -Wextra -Werror -std=c99 -pedantic

VPATH = src
BIN = main
OBJS = main.o
all: $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)

check: CFLAGS += -g -fsanitize=address
check: all
	cp $(BIN) tests/

debug: CFLAGS += -g
debug: clean all

clean:
	$(RM) $(BIN) $(OBJS)
