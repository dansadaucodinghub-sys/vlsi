# demux1x4

## Description

1-to-4 demultiplexer. The input `d` is steered onto one of four output lines selected by the 2-bit `sel`.

## Design

Built from primitive gates: two `not` gates for the select complements and four 3-input `and` gates, one per output line. Inputs `d`, `sel[1:0]`; output `y[3:0]`.

## Testbench

The testbench `demux1x4_tb.v` instantiates the design as `dut`, holds `d` and walks `sel` through its values at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (d, sel, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `demux1x4.v` | Verilog design |
| `demux1x4_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
