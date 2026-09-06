# demux1x2

## Description

1-to-2 demultiplexer. The input `d` is routed to `y0` when `sel` is 0 and to `y1` when `sel` is 1.

## Design

Built from primitive gates: a `not` for the select complement and two `and` gates. Inputs `d`, `sel`; outputs `y0`, `y1`.

## Testbench

The testbench `demux1x2_tb.v` instantiates the design as `dut`, drives `d` and `sel` through their combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (d, sel, y0, y1), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `demux1x2.v` | Verilog design |
| `demux1x2_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
