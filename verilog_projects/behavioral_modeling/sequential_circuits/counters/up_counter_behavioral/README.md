# up_counter_behavioral

## Description

4-bit up counter with an enable. It counts up by one on each clock edge while `en` is high, and holds otherwise.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Reset clears `count` to 0000; when `en` is high `count <= count + 1`. Inputs `clk`, `rst`, `en`; output `count[3:0]`.

## Testbench

The testbench `up_counter_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then raises `en` to count, drops it to hold, and raises it again. Every change is printed with `$monitor` (time, clk, rst, en, count), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `up_counter_behavioral.v` | Verilog design |
| `up_counter_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
