# Behavioral Modeling

This folder contains Verilog designs written in **behavioral modeling**, where the circuit is described by its behaviour using `always` blocks, `if/else`, `case` and procedural assignments rather than by wiring gates together.

## Contents

| Folder | Description |
|---|---|
| `logic_gates` | The seven basic logic gates |
| `combinational_circuits` | Common combinational blocks - muxes, demuxes, encoder, decoder, comparators, adders and subtractors |
| `sequential_circuits` | Clocked designs - flip-flops, latches, counters, shift registers and state machines |

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
