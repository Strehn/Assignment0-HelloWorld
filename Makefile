# Compiler settings
CC = gcc
CFLAGS = -Wall -std=c99

# Target executable
TARGET = hello_world

# Source files
SRC = main.c

# Object files
OBJ = $(SRC:.c=.o)

# Default target to compile and link the program
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to clean object files and executable
clean:
	rm -f $(OBJ) $(TARGET)

# Test rule (you can customize this if needed for automated testing)
test: all
	./$(TARGET)

# Rule to compile the .c file into a .o file
%.o: %.c
	$(CC) $(CFLAGS) -c $<

.PHONY: all clean test
