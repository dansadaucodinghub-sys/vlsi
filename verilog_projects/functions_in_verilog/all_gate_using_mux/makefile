# ==================================================
# Makefile for Icarus Verilog + GTKWave
# ==================================================

# Tools
IVERILOG = iverilog
VVP      = vvp
GTKWAVE  = gtkwave

# Top-level testbench
TOP = and_gate_tb

# Source files
SRC = \
	all_logic_gates_using_mux2x1.v \
	all_logic_gates_using_mux2x1_tb.v

# Output executable
OUT = sim.out

# Waveform file
WAVE = wave.vcd

# ==================================================
# Phony Targets
# ==================================================
.PHONY: all compile run wave clean

# Default target
all: compile run

# Compile Verilog files
compile:
	$(IVERILOG) -Wall -o $(OUT) $(SRC)

# Run simulation
run: compile
	$(VVP) $(OUT)

# Open waveform
wave:
	$(GTKWAVE) $(WAVE)

# Remove generated files
clean:
	rm -f $(OUT) $(WAVE)
