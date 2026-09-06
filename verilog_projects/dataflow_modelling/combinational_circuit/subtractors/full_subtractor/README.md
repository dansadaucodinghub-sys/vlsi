# full_subtractor

## Description

Full subtractor. It subtracts `B` and a borrow-in `Bin` from `A`, giving a difference and a borrow-out.

## Design

Continuous assignments: `diff = A ^ B ^ Bin` and `Bout = (~A & B) | (~A & Bin) | (B & Bin)`. Inputs `A`, `B`, `Bin`; outputs `diff`, `Bout`.

## Testbench

The testbench `full_subtractor_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, Bin, diff, Bout), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Dataflow modeling.

## Files

| File | Description |
|---|---|
| `full_subtractor.v` | Verilog design |
| `full_subtractor_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
