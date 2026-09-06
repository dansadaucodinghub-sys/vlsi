# encoder4x2_behavioral

## Description

4-to-2 priority encoder. It takes a 4-bit one-hot input and outputs the 2-bit binary code of the active line.

## Design

An `always @(*)` block checks the input bits in order (`i[0]` first, then `i[1]`, `i[2]`, `i[3]`) and drives `y` with the matching 2-bit code. Input `i[3:0]`; output `y[1:0]`.

## Testbench

The testbench `encoder4x2_behavioral_tb.v` instantiates the design as `dut`, applies each of the four one-hot inputs at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, i, y), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `encoder4x2_behavioral.v` | Verilog design |
| `encoder4x2_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
