# demux1x2_behavioral

## Description

1-to-2 demultiplexer. The single input `d` is routed to output `y0` when `sel` is 0 and to `y1` when `sel` is 1, while the other output stays low.

## Design

An `always @(*)` block clears both outputs and then passes `d` to `y0` or `y1` depending on `sel`. Inputs `d`, `sel`; outputs `y0`, `y1`.

## Testbench

The testbench `demux1x2_behavioral_tb.v` instantiates the design as `dut`, drives `d` and `sel` through their combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, d, sel, y0, y1), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `demux1x2_behavioral.v` | Verilog design |
| `demux1x2_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
