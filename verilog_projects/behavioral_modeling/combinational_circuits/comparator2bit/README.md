# comparator2bit_behavioral

## Description

2-bit magnitude comparator. It compares two 2-bit numbers `a` and `b` and raises `gt`, `eq` or `lt` to show whether a is greater than, equal to, or less than b.

## Design

An `always @(*)` block clears the three outputs and sets one of them with an `if / else if / else` on the 2-bit operands. Inputs `a[1:0]`, `b[1:0]`; outputs `gt`, `eq`, `lt`.

## Testbench

The testbench `comparator2bit_tb.v` instantiates the design as `dut`, drives a set of 2-bit input pairs (equal, less-than and greater-than cases) at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, gt, eq, lt), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `comparator2bit.v` | Verilog design |
| `comparator2bit_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
