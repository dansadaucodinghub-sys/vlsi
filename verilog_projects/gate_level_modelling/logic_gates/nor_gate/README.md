# nor_gate

## Description

2-input NOR gate. The output `y` is high only when both inputs are low.

## Design

A single Verilog primitive gate instance `nor(y, a, b)`. Inputs `a`, `b`; output `y`.

## Testbench

The testbench `nor_gate_tb.v` instantiates the design as `dut`, drives all four input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (a, b, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Gate-level modeling.

## Files

| File | Description |
|---|---|
| `nor_gate.v` | Verilog design |
| `nor_gate_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
