# d_latch_behavioral

## Description

Level-sensitive D latch. While the enable is high the output follows the data input; when it is low the output holds its last value.

## Design

A level-sensitive `always @(*)` block: `rst` clears `q`, then while `en` is high `q = d`, otherwise `q` holds. Inputs `en`, `rst`, `d`; output `q`.

## Testbench

The testbench `d_latch_behavioral_tb.v` instantiates the design as `dut`, applies reset, then toggles `en` and `d` to show the transparent and hold behaviour. Every change is printed with `$monitor` (time, en, rst, d, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling (level-sensitive).

## Files

| File | Description |
|---|---|
| `d_latch_behavioral.v` | Verilog design |
| `d_latch_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
