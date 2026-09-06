# ripple_carry_adder4

## Description

4-bit adder. It adds two 4-bit operands `A` and `B` with a carry-in `Cin`, giving a 4-bit `Sum` and a carry-out `Cout`.

## Design

A single continuous assignment `{Cout, Sum} = A + B + Cin`. Inputs `A[3:0]`, `B[3:0]`, `Cin`; outputs `Sum[3:0]`, `Cout`.

## Testbench

The testbench `ripple_carry_adder4_tb.v` instantiates the design as `dut`, applies several operand pairs including carry-in and overflow cases at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, Cin, Cout, Sum), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

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
