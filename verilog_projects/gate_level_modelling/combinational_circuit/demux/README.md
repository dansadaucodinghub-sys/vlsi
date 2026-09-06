# Demultiplexers - Gate-Level Modeling

Demultiplexers built from primitive gates.

## Circuits

| Circuit | Folder |
|---|---|
| 1x2 Demultiplexer | `demux1x2` |
| 1x4 Demultiplexer | `demux1x4` |

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
