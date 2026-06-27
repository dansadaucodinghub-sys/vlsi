# 4-bit Ripple Carry Adder Using Full Adders - Structural Modeling

This directory contains a hierarchical RTL implementation of **4-bit Ripple Carry Adder Using Full Adders**.

## Structural Modeling Concept

Structural modeling connects smaller modules together using internal wires. This style is useful for showing hierarchy, module reuse, port mapping, and net-level connectivity.

## Files

| File | Description |
|---|---|
| `ripple_carry_adder4_structural.v` | Structural RTL design |
| `ripple_carry_adder4_structural_tb.v` | Testbench with `$monitor` and FSDB dump |
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
