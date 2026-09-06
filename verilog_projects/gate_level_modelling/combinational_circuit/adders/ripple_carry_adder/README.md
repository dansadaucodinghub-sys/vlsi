# ripple_carry_adder4

## Description

4-bit ripple carry adder. It adds two 4-bit operands `A` and `B` with a carry-in, chaining the carry from one bit to the next.

## Design

The file defines an internal gate-level `full_adder_cell` (primitive `xor`/`and`/`or` gates) and instantiates four of them, wiring each cell's carry-out into the next cell's carry-in. Inputs `A[3:0]`, `B[3:0]`, `Cin`; outputs `Sum[3:0]`, `Cout`.

## Testbench

The testbench `ripple_carry_adder4_tb.v` instantiates the design as `dut`, applies several operand pairs including carry-in and overflow cases at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, Cin, Cout, Sum), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `ripple_carry_adder4.v` | Verilog design |
| `ripple_carry_adder4_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
