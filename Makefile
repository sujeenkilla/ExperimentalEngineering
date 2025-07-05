SRC_ASM_FILE = Assembly
SRC_OBJ_FILES = ObjectFiles
ASM = nasm
LD = gcc

NASM_FLAGS = -f elf32 -g -F dwarf
LD_FLAGS = -m32 -Wl,-e,_start

TARGET = emp
OBJ = $(SRC_OBJ_FILES)/Experiment1.o

all: build

build:
	$(ASM) $(NASM_FLAGS) $(SRC_ASM_FILE)/Experiment1.asm -o $(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(TARGET)

clean:
	rm -rf $(SRC_OBJ_FILES)/*.o $(TARGET)

.PHONY: all build clean
