# Multiplexers - Gate-Level Modeling

Multiplexers built from primitive gates.

## Circuits

| Circuit | Folder |
|---|---|
| 2x1 Multiplexer | `mux2x1` |
| 4x1 Multiplexer | `mux_4x1` |

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
