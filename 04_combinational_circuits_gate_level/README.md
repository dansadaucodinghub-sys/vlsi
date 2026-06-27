# Combinational Circuits - Gate-Level Modeling

This folder is a corrected replacement for `04_combinational_circuits_gate_level`.

All design files use true Verilog gate-level modeling with primitive gates such as:

```verilog
and
or
not
xor
xnor
```

The RTL design files do not use dataflow `assign` statements.

## Included Circuits

- mux2x1
- mux4x1
- demux1x2
- demux1x4
- encoder4x2
- decoder2x4
- comparator1bit
- comparator2bit
- half_adder
- full_adder
- half_subtractor
- full_subtractor
- ripple_carry_adder4

## Folder Structure

Each circuit folder contains:

```text
design.v
testbench.v
Makefile
README.md
```

## Run Simulation

```bash
make all
```

## View Waveform

```bash
make waves
```
