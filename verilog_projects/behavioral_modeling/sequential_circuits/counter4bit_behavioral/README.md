# counter4bit_behavioral

## Description

4-bit binary up counter. On every clock edge the count increases by one, wrapping around from 15 back to 0.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Reset forces `count` to 0000, otherwise `count <= count + 1`. Inputs `clk`, `rst`; output `count[3:0]`.

## Testbench

The testbench `counter4bit_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, holds reset for a few time units and then lets the counter run. Every change is printed with `$monitor` (time, clk, rst, count), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `counter4bit_behavioral.v` | Verilog design |
| `counter4bit_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
