# sr_latch_behavioral

## Description

Level-sensitive SR latch. While the enable is high the Set and Reset inputs drive the output; the S=R=1 case is invalid.

## Design

A level-sensitive `always @(*)` block: `rst` clears `q`; while `en` is high a `case` on `{s,r}` gives hold, reset, set or an invalid `x`. Inputs `en`, `rst`, `s`, `r`; output `q`.

## Testbench

The testbench `sr_latch_behavioral_tb.v` instantiates the design as `dut`, applies reset, then drives the set, reset, hold and invalid cases while gating with `en`. Every change is printed with `$monitor` (time, en, rst, s, r, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling (level-sensitive).

## Files

| File | Description |
|---|---|
| `sr_latch_behavioral.v` | Verilog design |
| `sr_latch_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
