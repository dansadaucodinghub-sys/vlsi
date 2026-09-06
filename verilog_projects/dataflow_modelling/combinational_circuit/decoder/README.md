# decoder2x4

## Description

2-to-4 line decoder. The 2-bit input selects one of four output lines and drives it high (active-high one-hot).

## Design

A chained conditional (`?:`) assignment maps `{a1,a0}` to a one-hot value on `y` (00 -> 0001, 01 -> 0010, 10 -> 0100, 11 -> 1000). Inputs `a1`, `a0`; output `y[3:0]`.

## Testbench

The testbench `decoder2x4_tb.v` instantiates the design as `dut`, steps through all four input codes at 2 time-unit steps, prints each change with `$monitor` (a1, a0, y), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `decoder2x4.v` | Verilog design |
| `decoder2x4_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
