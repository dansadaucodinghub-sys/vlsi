# State Machines - Behavioral Modeling

This folder contains finite state machines that detect the serial pattern 101, written using behavioral modeling.

## Circuits

| Circuit | Module | Output style |
|---|---|---|
| Mealy 101 Detector | `mealy_101_detector_behavioral` | Output depends on state and input |
| Moore 101 Detector | `moore_101_detector_behavioral` | Output depends on state only |

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
