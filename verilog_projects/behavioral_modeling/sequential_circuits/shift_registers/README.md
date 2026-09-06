# Shift Registers - Behavioral Modeling

This folder contains 4-bit shift registers written using behavioral modeling. Each is clocked on the positive edge with an asynchronous, active-high reset.

## Circuits

| Circuit | Module |
|---|---|
| Serial-In Parallel-Out | `sipo_shift_register_behavioral` |
| Serial-In Serial-Out | `siso_shift_register_behavioral` |
| Parallel-In Serial-Out | `piso_shift_register_behavioral` |
| Parallel-In Parallel-Out | `pipo_register_behavioral` |

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
