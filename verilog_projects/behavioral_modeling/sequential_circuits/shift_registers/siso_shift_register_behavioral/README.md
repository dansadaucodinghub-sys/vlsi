# siso_shift_register_behavioral

## Description

4-bit serial-in serial-out (SISO) shift register. Data enters serially on `si` and leaves serially on `so` after four clocks.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Each clock shifts left as `q <= {q[2:0], si}`; `so` is the MSB `q[3]`. Inputs `clk`, `rst`, `si`; output `so`.

## Testbench

The testbench `siso_shift_register_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then feeds a serial bit stream into `si`. Every change is printed with `$monitor` (time, clk, rst, si, so), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `siso_shift_register_behavioral.v` | Verilog design |
| `siso_shift_register_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
