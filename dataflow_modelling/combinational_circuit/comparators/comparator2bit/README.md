# 2-bit Comparator - Dataflow Modeling

This directory contains a synthesizable Verilog implementation of a **2-bit Comparator** using dataflow modeling.

## Files

| File | Description |
|---|---|
| `comparator2bit.v` | RTL design |
| `comparator2bit_tb.v` | Testbench with `$monitor` and FSDB dump |
| `Makefile` | Synopsys VCS and Verdi flow |

## Modeling Style

The design is written using continuous assignment statements and Boolean or conditional expressions.

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
