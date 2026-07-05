# XOR gate - Gate-Level Modeling

This design implements a **XOR gate** using Verilog primitive gate instantiation.

## Gate Instantiation

```verilog
xor xor1(y, a, b);
```

## Files

| File | Description |
|---|---|
| `xor_gate.v` | Gate-level design |
| `xor_gate_tb.v` | Testbench with FSDB dump |
| `Makefile` | Synopsys VCS and Verdi flow |

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
