# up_down_counter_behavioral

## Description

4-bit up/down counter. The `up_down` input picks the direction while `en` gates the counting.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. With `en` high it counts up when `up_down` is 1 and down when it is 0. Inputs `clk`, `rst`, `en`, `up_down`; output `count[3:0]`.

## Testbench

The testbench `up_down_counter_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then counts up, switches to counting down, holds, and counts up again. Every change is printed with `$monitor` (time, clk, rst, en, up_down, count), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `up_down_counter_behavioral.v` | Verilog design |
| `up_down_counter_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
