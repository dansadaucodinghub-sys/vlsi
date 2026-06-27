# Full Adder - Gate-Level Modeling

## Description

This design implements `full_adder` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `full_adder.v` | Gate-level design |
| `full_adder_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
