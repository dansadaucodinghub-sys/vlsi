# xor_gate_behavioral

## Description

2-input XOR gate. The output `y` is high when the two inputs differ.

## Design

A single `always @(*)` block drives the output as `y = a ^ b`. Ports `a` and `b` are the inputs and `y` is the output.

## Testbench

The testbench `xor_gate_behavioral_tb.v` instantiates the design as `dut`, drives all four input combinations of `a` and `b` at 2 time-unit steps. Every change is printed with `$monitor` (time, a, b, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `xor_gate_behavioral.v` | Verilog design |
| `xor_gate_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
