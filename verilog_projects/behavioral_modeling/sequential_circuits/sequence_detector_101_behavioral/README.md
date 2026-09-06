# sequence_detector_101_behavioral

## Description

Serial 101 sequence detector. It watches the serial input `din` and raises `detected` whenever the pattern 1-0-1 has arrived (overlapping).

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. It is a registered state machine with states S0, S1 and S10; `detected` pulses when a 1 arrives in state S10. Inputs `clk`, `rst`, `din`; output `detected`.

## Testbench

The testbench `sequence_detector_101_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then feeds a bit stream that contains the 101 pattern. Every change is printed with `$monitor` (time, clk, rst, din, detected), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `sequence_detector_101_behavioral.v` | Verilog design |
| `sequence_detector_101_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
