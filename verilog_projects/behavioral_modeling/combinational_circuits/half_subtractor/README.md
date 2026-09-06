# half_subtractor_behavioral

## Description

Half subtractor. It subtracts `b` from `a`, producing a difference `d` and a borrow.

## Design

An `always @(*)` block computes `d = a ^ b` and `borrow = ~a & b`. Inputs `a`, `b`; outputs `d`, `borrow`.

## Testbench

The testbench `half_subtractor_behavioral_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, d, borrow), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `half_subtractor_behavioral.v` | Verilog design |
| `half_subtractor_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
