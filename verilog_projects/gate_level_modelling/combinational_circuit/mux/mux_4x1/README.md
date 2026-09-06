# mux4x1

## Description

4-to-1 multiplexer. It passes one of the four inputs `i0`..`i3` selected by the 2-bit `sel`.

## Design

Built from primitive gates: two `not` gates for the select complements, four 3-input `and` gates and an `or` to combine them. Inputs `i0`, `i1`, `i2`, `i3`, `sel[1:0]`; output `y`.

## Testbench

The testbench `mux4x1_tb.v` instantiates the design as `dut`, drives each select value with its matching input high at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (i0, i1, i2, i3, sel, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `mux4x1.v` | Verilog design |
| `mux4x1_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
