# half_subtractor

## Description

Half subtractor. It subtracts `B` from `A`, giving a difference and a borrow.

## Design

Built from primitive gates: `xor(diff, A, B)`, a `not` for `~A` and `and(borrow, ~A, B)`. Inputs `A`, `B`; outputs `diff`, `borrow`.

## Testbench

The testbench `half_subtractor_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, diff, borrow), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `half_subtractor.v` | Verilog design |
| `half_subtractor_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
