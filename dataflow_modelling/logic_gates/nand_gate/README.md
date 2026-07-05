# NAND gate - Dataflow Modeling

This design implements a **NAND gate** using Verilog dataflow modeling.

## Files

| File | Description |
|---|---|
| `nand_gate.v` | Dataflow RTL design |
| `nand_gate_tb.v` | Testbench with `$monitor` and FSDB dump |
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
