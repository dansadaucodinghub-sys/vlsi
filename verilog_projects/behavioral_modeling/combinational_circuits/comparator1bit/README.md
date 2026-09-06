# comparator1bit_behavioral

## Description

1-bit magnitude comparator. It compares two 1-bit inputs `a` and `b` and asserts one of three outputs: `gt` when a is greater, `eq` when they are equal, and `lt` when a is smaller.

## Design

An `always @(*)` block clears `gt`, `eq`, `lt` and then sets exactly one of them using an `if / else if / else` on `a` versus `b`. Inputs `a`, `b`; outputs `gt`, `eq`, `lt`.

## Testbench

The testbench `comparator1bit_tb.v` instantiates the design as `dut`, applies the four combinations of the 1-bit inputs at 2 time-unit steps. Every change is printed with `$monitor` (a, b, gt, eq, lt), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `comparator1bit.v` | Verilog design |
| `comparator1bit_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
