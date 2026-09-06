# jk_flip_flop_behavioral

## Description

JK flip-flop. The two inputs J and K select hold, reset, set or toggle on each clock edge.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. A `case` on `{j,k}` gives 00 hold, 01 reset, 10 set and 11 toggle. Inputs `clk`, `rst`, `j`, `k`; output `q`.

## Testbench

The testbench `jk_flip_flop_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then exercises each J/K combination (hold, reset, set, toggle). Every change is printed with `$monitor` (time, clk, rst, j, k, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `jk_flip_flop_behavioral.v` | Verilog design |
| `jk_flip_flop_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
