# comparator2bit

## Description

2-bit magnitude comparator. It compares two 2-bit numbers `A` and `B` and raises `gt`, `eq` or `lt`.

## Design

Continuous assignments use relational operators inside conditionals: `gt = (A > B)`, `eq = (A == B)`, `lt = (A < B)`. Inputs `A[1:0]`, `B[1:0]`; outputs `gt`, `eq`, `lt`.

## Testbench

The testbench `comparator2bit_tb.v` instantiates the design as `dut`, drives greater-than, equal and less-than cases at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, gt, eq, lt), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

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
