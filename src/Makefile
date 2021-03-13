CC = gcc
CFLAGS = -Wall

OBJS = main.o fsm.o model.o
HDRS = fsm.h model.h

# Executable
EXE = reto1

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS)

$(OBJS): $(HDRS)


wiringPi.o: wiringPi.c
	$(CC) $(CFLAGS) -c wiringPi.c

fsm.o: fsm.c
	$(CC) $(CFLAGS) -c fsm.c

model.o: model.c
	$(CC) $(CFLAGS) -c model.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f $(OBJS) $(EXE) *.bak *~
