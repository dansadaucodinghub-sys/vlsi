# Combinational Circuits Using Structural Modeling

This package demonstrates hierarchical RTL design using **structural modeling**.

Structural modeling builds a larger circuit by instantiating smaller modules and connecting them with internal wires. This is a useful skill for VLSI/RTL design engineers because it shows clean hierarchy, module reuse, port mapping, and net connectivity.

## Circuits Included

| Circuit | Built From |
|---|---|
| Full Adder | Two Half Adders + OR gate |
| 4-bit Ripple Carry Adder | Four Full Adders |
| 4x1 Multiplexer | Three 2x1 Multiplexers |
| 1x4 Demultiplexer | Three 1x2 Demultiplexers |

Each circuit folder contains the design, testbench, Makefile, and README.

## Simulation Flow

This project is set up for **Synopsys VCS** and **Verdi**.

```bash
make compile
make run
make waves
make gui
make clean
```

The testbench generates `dump.fsdb`, which can be opened with:

```bash
make waves
```
