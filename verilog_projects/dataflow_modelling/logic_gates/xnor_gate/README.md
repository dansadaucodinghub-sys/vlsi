# xnor_gate

## Description

2-input XNOR gate. The output `y` is high when the two inputs are equal.

## Design

A single continuous assignment `y = a ~^ b`. Inputs `a`, `b`; output `y`.

## Testbench

The testbench `xnor_gate_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, and prints each change with `$monitor` (a, b, y).

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `xnor_gate.v` | Verilog design |
| `xnor_gate_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
