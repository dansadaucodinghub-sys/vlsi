# Counters - Behavioral Modeling

This folder contains 4-bit counters written using behavioral modeling. Each one is clocked on the positive edge with an asynchronous, active-high reset and an enable.

## Circuits

| Circuit | Module |
|---|---|
| Up Counter | `up_counter_behavioral` |
| Down Counter | `down_counter_behavioral` |
| Up/Down Counter | `up_down_counter_behavioral` |

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
