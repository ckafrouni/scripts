CC = gcc
CFLAGS = -Wall -Wextra -ggdb -O2 -I$(INCLUDE_DIR)
LDFLAGS = -L$(LIB_DIR)

SRC_DIR := src
SRCS := $(wildcard $(SRC_DIR)/*.c)

INCLUDE_DIR := include
LIB_DIR := lib

BUILD_DIR := build
OBJS_DIR := $(BUILD_DIR)/obj
OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJS_DIR)/%.o,$(SRCS))

EXEC := $(BUILD_DIR)/baash

all: $(BUILD_DIR) $(OBJS) $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJS_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $< $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)/obj

##################################
.PHONY: all clean run

clean:
	rm -rf build

# run: ARGS := Hello, World !
run: all
	@./$(EXEC) $(ARGS)
