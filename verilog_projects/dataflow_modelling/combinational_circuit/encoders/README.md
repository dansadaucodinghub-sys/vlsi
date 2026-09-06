# encoder4x2

## Description

4-to-2 priority encoder. It takes four request lines and outputs the 2-bit code of the highest-priority active one.

## Design

A chained conditional assignment checks `i0` first, then `i1`, `i2`, `i3`, and drives the matching 2-bit code onto `y`. Inputs `i0`, `i1`, `i2`, `i3`; output `y[1:0]`.

## Testbench

The testbench `encoder4x2_tb.v` instantiates the design as `dut`, activates each input line in turn at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (time, i3, i2, i1, i0, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `encoder4x2.v` | Verilog design |
| `encoder4x2_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
