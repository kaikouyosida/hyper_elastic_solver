CC = gcc
CFLAGS = -Ofast -pipe -Wall
.PHONY: solver
TARGET = solver
SRCS = main.c model.c

OBJS = $(SRCS:.c=.o)
run:
	make -C Data_Files_Input
	make all
	
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

$(OBJS): $(SRCS)
	$(CC) -c $(SRCS)

clean:
	-rm -f $(OBJS) $(TARGET)