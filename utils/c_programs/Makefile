# Compiler settings
CC := riscv32-unknown-elf-gcc
#CFLAGS := -march=rv32i_zicsr -mabi=ilp32 -nostartfiles -nostdlib
CFLAGS := -march=rv32i_zicsr -mabi=ilp32 -nostdlib
#CFLAGS := -march=rv32i_zicsr -mabi=ilp32

# Directories
SRC_DIR := src
ELF_DIR := elf
BIN_DIR := bin
ASM_DIR := asm

# Create the elf and bin directories if they don't exist
$(shell mkdir -p $(ELF_DIR) $(BIN_DIR) $(ASM_DIR))

# Find all C files in the source directory
C_FILES := $(wildcard $(SRC_DIR)/*.c)

# Generate list of ELF files in the elf directory by replacing the extension
ELF_FILES := $(addprefix $(ELF_DIR)/,$(notdir $(C_FILES:.c=.elf)))

# Generate list of BIN files in the bin directory by replacing the extension
BIN_FILES := $(addprefix $(BIN_DIR)/,$(notdir $(C_FILES:.c=.bin)))

# Generate list of ASM files in the asm directory by replacing the extension
ASM_FILES := $(addprefix $(ASM_DIR)/,$(notdir $(C_FILES:.c=.s)))

###############################################################################
# Variables: Defaults
###############################################################################
TRACE          ?= 1

SRC_V_DIR      ?= src_riscv/core .
SRC_DIR        ?= .

EXE            ?= output.out

###############################################################################
# Variables: Verilog
###############################################################################
SRC_V       ?= $(foreach src,$(SRC_V_DIR),$(wildcard $(src)/*.v))

VFLAGS      += $(patsubst %,-I%,$(SRC_V_DIR))
VFLAGS      += -DTRACE=$(TRACE)
VFLAGS      += -Dverilog_sim

###############################################################################
# Variables: Lists of objects, source and deps
###############################################################################
BUILD_DIR      ?= build/
BIN_DIR		   ?= bin/

###############################################################################
# Rules
###############################################################################

# Build rules
all: $(ELF_FILES) $(BIN_FILES) $(ASM_FILES) 

# Rule to compile C files to ELF files
$(ELF_DIR)/%.elf: $(SRC_DIR)/%.c link.ld
	$(CC) $(CFLAGS) -T link.ld -o $@ $<

# Rule to convert ELF files to BIN files
$(BIN_DIR)/%.bin: $(ELF_DIR)/%.elf
	riscv32-unknown-elf-objcopy -O binary $< $@

# Rule to convert ELF files to ASM files
$(ASM_DIR)/%.s: $(ELF_DIR)/%.elf
	riscv32-unknown-elf-objdump -d $< > $@

$(BUILD_DIR):
	@mkdir -p $@

$(BUILD_DIR)/$(EXE): $(SRC_V) | $(BUILD_DIR)
	@echo "# Compiling verilog"
	iverilog $(VFLAGS) -o $@ $(SRC_V)

test: build view_all

build: $(BUILD_DIR)/$(EXE) $(BIN_DIR)/main.bin
	vvp $(BUILD_DIR)/$(EXE) -vcd

view:
	gtkwave waveform.vcd gtksettings.sav 

view_all:
	gtkwave waveform.vcd gtksettings_lsu_all.sav 

# Clean rule
clean:
	rm -rf $(ELF_DIR) $(BIN_DIR) $(ASM_DIR)
	rm -rf $(BUILD_DIR) *.vcd

.PHONY: all clean
