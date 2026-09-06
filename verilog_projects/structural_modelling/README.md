# Structural Modeling

This folder demonstrates hierarchical design using **structural modeling**, where a larger circuit is built by instantiating smaller modules and connecting them with internal wires. It shows clean hierarchy, module reuse, port mapping and net connectivity.

## Circuits

| Circuit | Built From | Folder |
|---|---|---|
| Full Adder | Two half adders + an OR gate | `full_adder_structural` |
| 4-bit Ripple Carry Adder | Four full-adder cells | `ripple_carry_adder4_structural` |
| 4x1 Multiplexer | Three 2x1 multiplexer cells | `mux4x1_structural` |
| 1x4 Demultiplexer | Three 1x2 demultiplexer cells | `demux1x4_structural` |

Each circuit folder contains the design, testbench, Makefile and README.

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
