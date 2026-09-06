# demux1x2

## Description

1-to-2 demultiplexer. The input `i` is routed to `y0` when `sel` is 0 and to `y1` when `sel` is 1.

## Design

Continuous assignments: `y0 = (sel == 0) ? i : 0` and `y1 = (sel == 1) ? i : 0`. Inputs `i`, `sel`; outputs `y0`, `y1`.

## Testbench

The testbench `demux1x2_tb.v` instantiates the design as `dut`, drives `i` and `sel` through their combinations at 2 time-unit steps, prints each change with `$monitor` (i, sel, y0, y1), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

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
