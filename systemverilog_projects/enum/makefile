# ==================================================
# Makefile for Standalone SystemVerilog Testbench
# Icarus Verilog + GTKWave
# ==================================================

# Tools
IVERILOG := iverilog
VVP      := vvp
GTKWAVE  := gtkwave

# Top-level MODULE name inside data_type.sv
TOP := enum_data_type

# SystemVerilog source file
SRC := enum.sv

# Generated files
OUT  := sim.out
WAVE := wave.vcd

# Enable SystemVerilog 2012
FLAGS := -g2012 -Wall

# ==================================================
# Phony Targets
# ==================================================
.PHONY: all compile run wave clean help

# Default command
all: run

# Compile the SystemVerilog file
compile:
	$(IVERILOG) $(FLAGS) -s $(TOP) -o $(OUT) $(SRC)

# Run the simulation
run: compile
	$(VVP) $(OUT)

# Run simulation and open GTKWave
wave: run
	@if not exist "$(WAVE)" ( \
		echo ERROR: $(WAVE) was not generated. & \
		echo Add $$dumpfile and $$dumpvars to data_type.sv. & \
		exit /b 1 \
	)
	$(GTKWAVE) $(WAVE)

# Delete generated files
clean:
	@if exist "$(OUT)" del /Q "$(OUT)"
	@if exist "$(WAVE)" del /Q "$(WAVE)"

# Display available commands
help:
	@echo Available commands:
	@echo   make compile  - Compile the SystemVerilog file
	@echo   make run      - Compile and run the simulation
	@echo   make wave     - Run and open GTKWave
	@echo   make clean    - Delete generated files
	@echo   make help     - Display this help
