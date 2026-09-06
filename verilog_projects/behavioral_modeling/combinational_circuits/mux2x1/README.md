# mux2x1_behavioral

## Description

2-to-1 multiplexer. It passes input `i0` to the output when `sel` is 0 and `i1` when `sel` is 1.

## Design

An `always @(*)` block selects between `i0` and `i1` with an `if / else` on `sel`. Inputs `i0`, `i1`, `sel`; output `y`.

## Testbench

The testbench `mux2x1_behavioral_tb.v` instantiates the design as `dut`, drives the inputs and select line through several combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, i0, i1, sel, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `mux2x1_behavioral.v` | Verilog design |
| `mux2x1_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
