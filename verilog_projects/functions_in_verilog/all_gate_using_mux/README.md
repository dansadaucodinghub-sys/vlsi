# all_gate_using_mux

## Description

This example shows how the basic logic gates can be built on top of a 2x1 multiplexer using a Verilog `function`. The module `all_gates` takes two inputs `a` and `b` and produces the AND, OR, NAND and NOR outputs.

## Design

The design defines a `mux_2x1` function that returns `(~s & i0) | (s & i1)`, and then uses it inside `always @(*)` blocks to derive each gate output (`yand`, `yor`, `ynand`, `ynor`). Inputs `a`, `b`; outputs `yand`, `yor`, `ynand`, `ynor`.

> **Note:** the XOR, XNOR and NOT outputs are present in the code but commented out, so only AND, OR, NAND and NOR are wired up. Treat this as a learning example rather than a finished, fully verified gate library.

## Testbench

The testbench `all_logic_gates_using_mux2x1_tb.v` (module `test_bench`) instantiates `all_gates` as `dut` using named port connections, drives all four combinations of `a` and `b` at 2 time-unit steps, and prints each change with `$monitor`.

## Modeling Style

Behavioral modeling using a Verilog `function`.

## Files

| File | Description |
|---|---|
| `all_logic_gates_using_mux2x1.v` | Verilog design |
| `all_logic_gates_using_mux2x1_tb.v` | Verilog testbench |
| `makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```
