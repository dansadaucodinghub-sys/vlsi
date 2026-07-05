# Comparator2Bit - Gate-Level Modeling

## Description

This design implements `comparator2bit` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `comparator2bit.v` | Gate-level design |
| `comparator2bit_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
