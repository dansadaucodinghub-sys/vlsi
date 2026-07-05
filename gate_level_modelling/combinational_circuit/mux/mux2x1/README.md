# Mux2X1 - Gate-Level Modeling

## Description

This design implements `mux2x1` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `mux2x1.v` | Gate-level design |
| `mux2x1_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
