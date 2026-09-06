# half_adder

## Description

Half adder. It adds two 1-bit inputs `A` and `B`, giving a sum and a carry.

## Design

Built from primitive gates: `xor(sum, A, B)` and `and(carry, A, B)`. Inputs `A`, `B`; outputs `sum`, `carry`.

## Testbench

The testbench `half_adder_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, sum, carry), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `half_adder.v` | Verilog design |
| `half_adder_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
