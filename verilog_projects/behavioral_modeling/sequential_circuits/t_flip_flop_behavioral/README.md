# t_flip_flop_behavioral

## Description

T flip-flop. When T is high the output toggles on each clock edge; when T is low it holds.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. `q <= ~q` when `t` is high, otherwise it holds. Inputs `clk`, `rst`, `t`; output `q`.

## Testbench

The testbench `t_flip_flop_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then holds `t` high to toggle and low to hold. Every change is printed with `$monitor` (time, clk, rst, t, q), and the run dumps `wave.vcd` via `$dumpvars` for waveform viewing.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `t_flip_flop_behavioral.v` | Verilog design |
| `t_flip_flop_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
