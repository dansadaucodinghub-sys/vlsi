# mux2x1

## Description

2-to-1 multiplexer. It passes `i0` when `sel` is 0 and `i1` when `sel` is 1.

## Design

A single continuous assignment `y = sel ? i1 : i0`. Inputs `i0`, `i1`, `sel`; output `y`.

## Testbench

The testbench `mux2x1_tb.v` instantiates the design as `dut`, drives the inputs and select line through several combinations at 2 time-unit steps, prints each change with `$monitor` (i0, i1, sel, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `mux2x1.v` | Verilog design |
| `mux2x1_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
