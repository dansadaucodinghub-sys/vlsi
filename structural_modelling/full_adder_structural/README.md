# Full Adder Using Two Half Adders - Structural Modeling

This directory contains a hierarchical RTL implementation of **Full Adder Using Two Half Adders**.

## Structural Modeling Concept

Structural modeling connects smaller modules together using internal wires. This style is useful for showing hierarchy, module reuse, port mapping, and net-level connectivity.

## Files

| File | Description |
|---|---|
| `full_adder_structural.v` | Structural RTL design |
| `full_adder_structural_tb.v` | Testbench with `$monitor` and FSDB dump |
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
