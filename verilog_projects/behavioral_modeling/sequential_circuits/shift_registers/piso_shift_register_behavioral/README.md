# piso_shift_register_behavioral

## Description

4-bit parallel-in serial-out (PISO) shift register. A value can be loaded in parallel and then shifted out one bit at a time on `so`.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. When `load` is high the register takes `p`, otherwise it shifts left as `{q[2:0], si}`; `so` is the MSB `q[3]`. Inputs `clk`, `rst`, `load`, `p[3:0]`, `si`; output `so`.

## Testbench

The testbench `piso_shift_register_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, loads a parallel value, then shifts it out bit by bit. Every change is printed with `$monitor` (time, clk, rst, load, p, si, so), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `piso_shift_register_behavioral.v` | Verilog design |
| `piso_shift_register_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
