# pipo_register_behavioral

## Description

4-bit parallel-in parallel-out (PIPO) register. When `load` is high the 4-bit input `p` is captured and presented on `q`.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. When `load` is high `q <= p`, otherwise `q` holds. Inputs `clk`, `rst`, `load`, `p[3:0]`; output `q[3:0]`.

## Testbench

The testbench `pipo_register_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then loads a couple of values and holds in between. Every change is printed with `$monitor` (time, clk, rst, load, p, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `pipo_register_behavioral.v` | Verilog design |
| `pipo_register_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
