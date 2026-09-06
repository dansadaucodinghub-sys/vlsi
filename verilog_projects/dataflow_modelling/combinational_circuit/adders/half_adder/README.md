# half_adder

## Description

Half adder. It adds two 1-bit inputs `a` and `b`, giving a sum and a carry.

## Design

Continuous assignments: `sum = a ^ b` and `carry = a & b`. Inputs `a`, `b`; outputs `sum`, `carry`.

## Testbench

The testbench `half_adder_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, and prints each change with `$monitor` (a, b, sum, carry).

## Modeling Style

Dataflow modeling.

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
