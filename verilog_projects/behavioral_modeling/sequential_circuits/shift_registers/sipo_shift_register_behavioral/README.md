# sipo_shift_register_behavioral

## Description

4-bit serial-in parallel-out (SIPO) shift register. Serial data on `si` is shifted in and appears in parallel on `q`.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Each clock shifts left as `q <= {q[2:0], si}`. Inputs `clk`, `rst`, `si`; output `q[3:0]`.

## Testbench

The testbench `sipo_shift_register_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then feeds a serial bit stream into `si`. Every change is printed with `$monitor` (time, clk, rst, si, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `sipo_shift_register_behavioral.v` | Verilog design |
| `sipo_shift_register_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
