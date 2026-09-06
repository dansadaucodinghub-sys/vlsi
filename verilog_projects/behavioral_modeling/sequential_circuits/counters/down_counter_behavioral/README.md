# down_counter_behavioral

## Description

4-bit down counter with an enable. It counts down by one on each clock edge while `en` is high, and holds otherwise.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. Reset presets `count` to 1111; when `en` is high `count <= count - 1`. Inputs `clk`, `rst`, `en`; output `count[3:0]`.

## Testbench

The testbench `down_counter_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then raises `en` to count down, drops it to hold, and raises it again. Every change is printed with `$monitor` (time, clk, rst, en, count), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `down_counter_behavioral.v` | Verilog design |
| `down_counter_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
