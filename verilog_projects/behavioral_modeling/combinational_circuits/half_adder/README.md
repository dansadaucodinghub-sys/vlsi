# half_adder_behavioral

## Description

Half adder. It adds two 1-bit inputs `a` and `b`, producing a sum `s` and a carry `c`.

## Design

An `always @(*)` block computes `s = a ^ b` and `c = a & b`. Inputs `a`, `b`; outputs `s`, `c`.

## Testbench

The testbench `half_adder_behavioral_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, s, c), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `half_adder_behavioral.v` | Verilog design |
| `half_adder_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
