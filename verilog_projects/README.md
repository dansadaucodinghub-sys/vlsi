# Verilog RTL Design Portfolio

This repository contains a structured collection of Verilog RTL designs for basic digital logic, combinational circuits, sequential circuits, and hierarchical structural modeling.

The goal of this repository is to demonstrate clean RTL coding style, testbench development, the Synopsys VCS simulation flow, FSDB waveform dumping, and Verdi waveform/debug usage.

## Repository Contents

| Folder | Description |
|---|---|
| `dataflow_modelling` | Seven basic logic gates and common combinational circuits using dataflow modeling |
| `gate_level_modelling` | Seven basic logic gates and common combinational circuits using Verilog primitive gates |
| `structural_modelling` | Combinational circuits built hierarchically using structural modeling |
| `behavioral_modeling` | Logic gates, combinational circuits and sequential circuits using behavioral modeling |
| `functions_in_verilog` | Small learning examples that build circuits using the Verilog `function` construct |

## Design Categories

### Logic Gates

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

### Combinational Circuits

- Multiplexers
- Demultiplexers
- Encoders
- Decoders
- Comparators
- Adders
- Subtractors
- Ripple Carry Adder

### Sequential Circuits

- Flip-flops (D, T, JK, SR)
- Latches (D, SR)
- Counters (up, down, up/down)
- Shift registers (SIPO, SISO, PISO, PIPO, universal)
- 101 sequence detectors (Mealy and Moore)

### Structural Modeling

- Full Adder using two Half Adders
- 4-bit Ripple Carry Adder using Full Adders
- 4x1 MUX using 2x1 MUX blocks
- 1x4 DEMUX using 1x2 DEMUX blocks

## Tool Flow

The projects are prepared for:

- Synopsys VCS
- Verdi
- FSDB waveform dumping

Each circuit folder includes:

```text
design.v
testbench.v
Makefile
README.md
```

### Common Commands

```text
source /home/server2/verification.sh
make all
```

### Makefile Flow (Example)

```text
TOP = mux2x1_tb

SRC = \
 mux2x1.v \
 mux2x1_tb.v

VCS = vcs -full64 -sverilog
VCS_OPTS = -debug_access+all -kdb -l compile.log

compile:
	$(VCS) $(VCS_OPTS) $(SRC)

run:
	./simv -l run.log

gui:
	verdi -sv $(SRC) -top $(TOP) &

waves:
	verdi -ssf dump.fsdb &

all: compile run

clean:
	rm -rf csrc simv simv.daidir verdiLog novas* *.log *.vpd *.fsdb *.key DVEfiles ucli.key
```

### Purpose

This repository is intended to showcase foundational RTL design skills for VLSI and digital design, including:

- Clean Verilog coding
- Dataflow modeling
- Gate-level modeling
- Structural modeling
- Behavioral modeling
- Testbench creation
- VCS simulation
- FSDB waveform generation
- Verdi debugging flow

### Author

Prepared as part of my VLSI/RTL design learning and portfolio development.
