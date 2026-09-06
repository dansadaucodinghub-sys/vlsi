# full_adder

## Description

Full adder. It adds `A`, `B` and a carry-in `Cin`, giving a sum and a carry-out.

## Design

Built from primitive gates: a 3-input `xor` for the sum, and three `and` gates feeding an `or` for `Cout`. Inputs `A`, `B`, `Cin`; outputs `sum`, `Cout`.

## Testbench

The testbench `full_adder_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, Cin, sum, Cout), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `full_adder.v` | Verilog design |
| `full_adder_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
