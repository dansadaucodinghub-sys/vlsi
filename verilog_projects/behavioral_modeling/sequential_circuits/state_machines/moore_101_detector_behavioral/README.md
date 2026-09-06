# moore_101_detector_behavioral

## Description

Moore 101 sequence detector. The output `y` depends only on the state, so it asserts one clock after the full 101 pattern has been seen.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. It uses three blocks: a state register, a combinational next-state block and an output block. States S0, S1, S10, S101; `y` is 1 while the machine is in S101. Inputs `clk`, `rst`, `din`; output `y`.

## Testbench

The testbench `moore_101_detector_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then drives a bit stream that contains the 101 pattern. Every change is printed with `$monitor` (time, clk, rst, din, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `moore_101_detector_behavioral.v` | Verilog design |
| `moore_101_detector_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
