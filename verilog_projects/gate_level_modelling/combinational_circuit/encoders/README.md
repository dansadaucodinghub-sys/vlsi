# encoder4x2

## Description

4-to-2 encoder. It outputs the 2-bit code of the active input line, assuming only one input is active at a time.

## Design

Built from primitive gates: `or(y[1], i2, i3)` and `or(y[0], i1, i3)`. Inputs `i0`, `i1`, `i2`, `i3`; output `y[1:0]`.

## Testbench

The testbench `encoder4x2_tb.v` instantiates the design as `dut`, activates each input line in turn at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (i0, i1, i2, i3, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `encoder4x2.v` | Verilog design |
| `encoder4x2_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
