# full_adder

## Description

Full adder. It adds `a`, `b` and a carry-in `cin`, giving a sum and a carry-out.

## Design

Continuous assignments: `sum = a ^ b ^ cin` and `carry = (a & b) | (a & cin) | (b & cin)`. Inputs `a`, `b`, `cin`; outputs `sum`, `carry`.

## Testbench

The testbench `full_adder_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, and prints each change with `$monitor` (a, b, cin, sum, carry).

## Modeling Style

Dataflow modeling.

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
