CC = gcc
TARGET = writer
SOURCE = writer.c

CROSS_COMPILE: $(SOURCE)
	$(CROSS_COMPILE)$(CC) -o $(TARGET) $(SOURCE)
default: $(SOURCE)
	$(CC) -o $(TARGET) $(SOURCE)
clean:
	rm -f $(TARGET) $(wildcard *.o)
