# d_flip_flop_behavioral

## Description

D flip-flop. It samples the data input `d` on each clock edge and holds it on `q`.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Reset clears `q` to 0, otherwise `q <= d`. Inputs `clk`, `rst`, `d`; output `q`.

## Testbench

The testbench `d_flip_flop_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then drives `d` through a sequence of 0s and 1s. Every change is printed with `$monitor` (time, clk, rst, d, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `d_flip_flop_behavioral.v` | Verilog design |
| `d_flip_flop_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
