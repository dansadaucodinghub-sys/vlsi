# nor_gate

> **Note:** the folder name is `nor_gate`, but the files present are `xor_gate.v` / `xor_gate_tb.v`, which implement an **XOR** gate (`y = a ^ b`), not a NOR gate. This README describes the file that is actually there. If a NOR gate was intended, replace the design with `y = ~(a | b)`.

## Description

This folder is named `nor_gate`, but the design file it contains implements a 2-input **XOR** gate: the output `y` is high when the two inputs differ.

## Design

A single continuous assignment `y = a ^ b`. Inputs `a`, `b`; output `y`. (The module inside is named `xor_gate`.)

## Testbench

The testbench `xor_gate_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, and prints each change with `$monitor` (a, b, y).

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `xor_gate.v` | Verilog design |
| `xor_gate_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
