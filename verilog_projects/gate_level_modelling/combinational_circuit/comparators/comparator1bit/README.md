# comparator1bit

## Description

1-bit magnitude comparator. It compares two 1-bit inputs `A` and `B` and raises `gt`, `eq` or `lt`.

## Design

Built from primitive gates: `not` gates for the complements, `and(gt, A, ~B)`, `xnor(eq, A, B)` and `and(lt, ~A, B)`. Inputs `A`, `B`; outputs `gt`, `eq`, `lt`.

## Testbench

The testbench `comparator1bit_tb.v` instantiates the design as `dut`, applies the four input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, gt, eq, lt), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

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
