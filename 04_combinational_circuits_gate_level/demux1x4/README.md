# Demux1X4 - Gate-Level Modeling

## Description

This design implements `demux1x4` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `demux1x4.v` | Gate-level design |
| `demux1x4_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
