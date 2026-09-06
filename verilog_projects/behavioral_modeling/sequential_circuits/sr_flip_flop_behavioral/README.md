# sr_flip_flop_behavioral

## Description

SR flip-flop. The Set and Reset inputs control the output on each clock edge; the S=R=1 case is invalid.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. A `case` on `{s,r}` gives 00 hold, 01 reset, 10 set and 11 an invalid `x`. Inputs `clk`, `rst`, `s`, `r`; output `q`.

## Testbench

The testbench `sr_flip_flop_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then walks through the hold, set, reset and invalid combinations. Every change is printed with `$monitor` (time, clk, rst, s, r, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `sr_flip_flop_behavioral.v` | Verilog design |
| `sr_flip_flop_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
