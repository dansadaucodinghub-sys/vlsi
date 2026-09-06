# mux4x1_behavioral

## Description

4-to-1 multiplexer. It passes one of the four inputs `i0`..`i3` to the output based on the 2-bit select `{s1,s0}`.

## Design

A `case` on `{s1,s0}` inside `always @(*)` routes the chosen input to `y`. Inputs `i0`, `i1`, `i2`, `i3`, `s1`, `s0`; output `y`.

## Testbench

The testbench `mux4x1_behavioral_tb.v` instantiates the design as `dut`, drives each select value with its matching input high at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, i0, i1, i2, i3, s1, s0, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `mux4x1_behavioral.v` | Verilog design |
| `mux4x1_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
