# mux4x1_structural

## Description

4-to-1 multiplexer built from smaller multiplexers. It passes one of the four inputs `i0`..`i3` selected by the 2-bit `sel`.

## Design

Structural: three `mux2x1_cell` instances. Two of them use `sel[0]` to pick between `i0`/`i1` and `i2`/`i3`, and the third uses `sel[1]` to choose between those two results. Inputs `i0`, `i1`, `i2`, `i3`, `sel[1:0]`; output `y`.

## Testbench

The testbench `mux4x1_structural_tb.v` instantiates the design as `dut`, drives each select value with its matching input high at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (i0, i1, i2, i3, sel, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Structural modeling.

## Files

| File | Description |
|---|---|
| `mux4x1_structural.v` | Verilog design |
| `mux4x1_structural_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
