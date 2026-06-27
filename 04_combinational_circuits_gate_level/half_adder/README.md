# Half Adder - Dataflow Modeling

This directory contains a synthesizable Verilog implementation of a **Half Adder** using dataflow modeling.

## Files

| File | Description |
|---|---|
| `half_adder.v` | RTL design |
| `half_adder_tb.v` | Testbench with `$monitor` and FSDB dump |
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
