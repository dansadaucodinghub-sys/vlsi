# NAND gate - Gate-Level Modeling

This design implements a **NAND gate** using Verilog primitive gate instantiation.

## Gate Instantiation

```verilog
nand nand1(y, a, b);
```

## Files

| File | Description |
|---|---|
| `nand_gate.v` | Gate-level design |
| `nand_gate_tb.v` | Testbench with FSDB dump |
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
