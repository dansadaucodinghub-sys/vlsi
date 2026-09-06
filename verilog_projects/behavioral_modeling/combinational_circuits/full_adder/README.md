# full_adder_behavioral

## Description

Full adder. It adds two 1-bit operands `a` and `b` together with a carry-in `cin`, producing a sum `s` and a carry-out `cout`.

## Design

An `always @(*)` block computes `{cout, s} = a + b + cin`. Inputs `a`, `b`, `cin`; outputs `s`, `cout`.

## Testbench

The testbench `full_adder_behavioral_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, cin, s, cout), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `full_adder_behavioral.v` | Verilog design |
| `full_adder_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
