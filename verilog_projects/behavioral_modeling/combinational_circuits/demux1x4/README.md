# demux1x4_behavioral

## Description

1-to-4 demultiplexer. The input `d` is steered onto one of four output lines selected by `s1` and `s0`, with the remaining lines held low.

## Design

An `always @(*)` block clears `y` and then a `case` on `{s1,s0}` connects `d` to the selected bit of `y`. Inputs `d`, `s1`, `s0`; output `y[3:0]`.

## Testbench

The testbench `demux1x4_behavioral_tb.v` instantiates the design as `dut`, holds `d` high and walks the select lines through all four values at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, d, s1, s0, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `demux1x4_behavioral.v` | Verilog design |
| `demux1x4_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
