# comparator1bit

## Description

1-bit magnitude comparator. It compares two 1-bit inputs `A` and `B` and raises `gt`, `eq` or `lt`.

## Design

Continuous assignments: `gt = A & ~B`, `eq = ~(A ^ B)`, `lt = ~A & B`. Inputs `A`, `B`; outputs `gt`, `eq`, `lt`. (The module is named `comparator`.)

## Testbench

The testbench `comparator_tb.v` instantiates the design as `dut`, applies the four input combinations at 2 time-unit steps, prints each change with `$monitor` (A, B, gt, eq, lt), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `comparator.v` | Verilog design |
| `comparator_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
