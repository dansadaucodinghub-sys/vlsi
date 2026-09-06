# not_gate

## Description

NOT gate (inverter). The output `y` is the inverse of the input `a`.

## Design

A single continuous assignment `y = !a`. Input `a`; output `y`.

## Testbench

The testbench `not_gate_tb.v` instantiates the design as `dut`, drives the input through its two values at 2 time-unit steps, and prints each change with `$monitor` (a, y).

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `not_gate.v` | Verilog design |
| `not_gate_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
