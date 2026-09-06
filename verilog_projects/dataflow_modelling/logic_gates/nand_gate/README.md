# nand_gate

## Description

2-input NAND gate. The output `y` is low only when both inputs are high.

## Design

A single continuous assignment `y = !(a & b)`. Inputs `a`, `b`; output `y`.

## Testbench

The testbench `nand_gate_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, and prints each change with `$monitor` (a, b, y).

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `nand_gate.v` | Verilog design |
| `nand_gate_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
