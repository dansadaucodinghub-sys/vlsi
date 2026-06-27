# Encoder4X2 - Gate-Level Modeling

## Description

This design implements `encoder4x2` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `encoder4x2.v` | Gate-level design |
| `encoder4x2_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
