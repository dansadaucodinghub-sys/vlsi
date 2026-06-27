RTL/VLSI
# Verilog RTL Design Portfolio

This repository contains a structured collection of Verilog RTL designs for basic digital logic, combinational circuits, and hierarchical structural modeling.

The goal of this repository is to demonstrate clean RTL coding style, testbench development, Synopsys VCS simulation flow, FSDB waveform dumping, and Verdi waveform/debug usage.

## Repository Contents

| Folder | Description |
|---|---|
| `01_logic_gates_dataflow` | Seven basic logic gates using dataflow modeling |
| `02_combinational_circuits_dataflow` | Common combinational circuits using dataflow modeling |
| `03_logic_gates_gate_level` | Seven basic logic gates using Verilog primitive gates |
| `04_combinational_circuits_gate_level` | Common combinational circuits using gate-level modeling |
| `05_combinational_circuits_structural` | Hierarchical circuits built using module instantiation |

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
