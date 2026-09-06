# Latches - Behavioral Modeling

This folder contains level-sensitive latches written using behavioral modeling. Each is described with an `always @(*)` block and is transparent while the enable is high.

## Circuits

| Circuit | Module |
|---|---|
| D Latch | `d_latch_behavioral` |
| SR Latch | `sr_latch_behavioral` |

Each circuit folder contains:

- Design `.v`
- Testbench `_tb.v`
- Makefile
- README.md

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
