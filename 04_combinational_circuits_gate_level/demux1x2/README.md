# Demux1X2 - Gate-Level Modeling

## Description

This design implements `demux1x2` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `demux1x2.v` | Gate-level design |
| `demux1x2_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
