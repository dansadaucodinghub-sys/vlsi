# Comparators - Dataflow Modeling

Magnitude comparators built with dataflow modeling.

## Circuits

| Circuit | Folder |
|---|---|
| 1-bit Comparator | `comparator1bit` |
| 2-bit Comparator | `comparator2bit` |

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
