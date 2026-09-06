# Dataflow Modeling

This folder contains Verilog designs written in **dataflow modeling**, where the circuit is described with continuous assignment statements (`assign y = expression;`) using Boolean and conditional operators rather than gates or procedural blocks.

## Contents

| Folder | Description |
|---|---|
| `logic_gates` | The seven basic logic gates |
| `combinational_circuit` | Common combinational blocks - muxes, demuxes, encoder, decoder, comparators, adders and subtractors |

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
