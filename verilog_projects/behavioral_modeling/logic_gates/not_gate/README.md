# not_gate_behavioral

## Description

NOT gate (inverter). The output `y` is the logical inverse of the single input `a`.

## Design

A single `always @(*)` block drives the output as `y = ~a`. Port `a` is the input and `y` is the output.

## Testbench

The testbench `not_gate_behavioral_tb.v` instantiates the design as `dut`, drives the input through its two values (`0` and `1`) at 2 time-unit steps. Every change is printed with `$monitor` (time, a, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `not_gate_behavioral.v` | Verilog design |
| `not_gate_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
