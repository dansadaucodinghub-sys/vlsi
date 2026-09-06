# nand_gate_behavioral

## Description

2-input NAND gate. The output `y` is low only when both inputs are high, and high otherwise.

## Design

A single `always @(*)` block drives the output as `y = ~(a & b)`. Ports `a` and `b` are the inputs and `y` is the output.

## Testbench

The testbench `nand_gate_behavioral_tb.v` instantiates the design as `dut`, drives all four input combinations of `a` and `b` at 2 time-unit steps. Every change is printed with `$monitor` (time, a, b, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `nand_gate_behavioral.v` | Verilog design |
| `nand_gate_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
