# full_adder_using_half

## Description

This example is meant to build a full adder from a half-adder helper using a Verilog `function`. The idea is that a `half_adder` function returns the sum and carry of two bits, and the full adder combines two such results.

## Design

The module `full_adder` declares a `half_adder` function that returns `{a & b, a ^ b}` and calls it inside an `always @(*)` block. Inputs `a`, `b`, `cin`; outputs `sum`, `cout`.

> **Note:** this design is a work in progress and is not complete yet. As it stands: the `half_adder` function header is missing its terminating semicolon, only the first half-adder result (`ha1`) is computed, and `sum` / `cout` are never assigned. In addition, the testbench instantiates a module called `full_adder_behavioral`, while the design module here is named `full_adder`, so the two will not elaborate together as written. These points need to be fixed before the example will simulate.

## Testbench

The testbench `full_adder_using_half_tb.v` drives all eight combinations of `a`, `b` and `cin` at 2 time-unit steps, prints each change with `$monitor`, and dumps `dump.fsdb`. (See the note above about the module-name mismatch.)

## Modeling Style

Behavioral modeling using a Verilog `function`.

## Files

| File | Description |
|---|---|
| `full_adder_using half.v` | Verilog design (note: the file name contains a space) |
| `full_adder_using_half_tb.v` | Verilog testbench |

## Run

```bash
make all
```
