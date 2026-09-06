# mealy_101_detector_behavioral

## Description

Mealy 101 sequence detector. The output `y` depends on both the current state and the current input, so it asserts as soon as the final 1 of 101 arrives (overlapping).

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. It uses two blocks: a registered state block and a combinational block that sets `next_state` and the output. States S0, S1, S10; `y` is 1 in S10 when `din` is 1. Inputs `clk`, `rst`, `din`; output `y`.

## Testbench

The testbench `mealy_101_detector_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then drives a bit stream that contains overlapping 101 patterns. Every change is printed with `$monitor` (time, clk, rst, din, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `mealy_101_detector_behavioral.v` | Verilog design |
| `mealy_101_detector_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
