# Half Adder - Gate-Level Modeling

## Description

This design implements `half_adder` using Verilog gate-level modeling.

The design file uses primitive gates and avoids dataflow `assign` statements.

## Files

| File | Description |
|---|---|
| `half_adder.v` | Gate-level design |
| `half_adder_tb.v` | Testbench |
| `Makefile` | VCS / Verdi simulation flow |

## Run

```bash
make all
```

## Waveform

```bash
make waves
```
