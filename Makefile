CC=gcc
CFLAGS= -O -D UNIX -Wall
LDFLAGS= -l pthread
EXEC=uhttpd


all: $(EXEC)

$(EXEC): $(EXEC).c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm $(EXEC)
