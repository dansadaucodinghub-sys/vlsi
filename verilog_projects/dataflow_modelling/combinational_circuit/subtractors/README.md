# Subtractors - Dataflow Modeling

Subtractor circuits built with dataflow modeling.

## Circuits

| Circuit | Folder |
|---|---|
| Half Subtractor | `half_subtractor` |
| Full Subtractor | `full_subtractor` |

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
