# demux1x4_structural

## Description

1-to-4 demultiplexer built from smaller demultiplexers. The input `d` is steered onto one of four output lines selected by the 2-bit `sel`.

## Design

Structural: three `demux1x2_cell` instances. The first uses `sel[1]` to split `d` into two paths, and the other two use `sel[0]` to place `d` on the correct one of the four outputs. Inputs `d`, `sel[1:0]`; output `y[3:0]`.

## Testbench

The testbench `demux1x4_structural_tb.v` instantiates the design as `dut`, holds `d` and walks `sel` through its values at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (d, sel, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Structural modeling.

## Files

| File | Description |
|---|---|
| `demux1x4_structural.v` | Verilog design |
| `demux1x4_structural_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
