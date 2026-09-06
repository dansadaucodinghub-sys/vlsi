# Adders - Gate-Level Modeling

Adder circuits built from primitive gates.

## Circuits

| Circuit | Folder |
|---|---|
| Half Adder | `half_adder` |
| Full Adder | `full_adder` |
| 4-bit Ripple Carry Adder | `ripple_carry_adder` |

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
