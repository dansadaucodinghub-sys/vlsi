# full_subtractor_behavioral

## Description

Full subtractor. It subtracts `b` and a borrow-in `bin` from `a`, giving a difference `d` and a borrow-out `bout`.

## Design

An `always @(*)` block computes `d = a ^ b ^ bin` and `bout = (~a & b) | (~a & bin) | (b & bin)`. Inputs `a`, `b`, `bin`; outputs `d`, `bout`.

## Testbench

The testbench `full_subtractor_behavioral_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, bin, d, bout), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `full_subtractor_behavioral.v` | Verilog design |
| `full_subtractor_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
