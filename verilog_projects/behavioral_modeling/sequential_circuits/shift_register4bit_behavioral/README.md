# shift_register4bit_behavioral

## Description

4-bit serial-in parallel-out shift register. Serial data on `serial_in` is shifted in on each clock edge and appears in parallel on `q`.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Each clock shifts left as `q <= {q[2:0], serial_in}`. Inputs `clk`, `rst`, `serial_in`; output `q[3:0]`.

## Testbench

The testbench `shift_register4bit_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then feeds the serial stream 1,0,1,1,0,0 into `serial_in`. Every change is printed with `$monitor` (time, clk, rst, serial_in, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `shift_register4bit_behavioral.v` | Verilog design |
| `shift_register4bit_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
