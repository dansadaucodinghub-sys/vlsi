# universal_shift_register_behavioral

## Description

4-bit universal shift register. A 2-bit `sel` chooses between hold, shift-right, shift-left and parallel load.

## Design

The design is clocked on the positive edge with an asynchronous, active-high reset. A `case` on `sel` gives 00 hold, 01 shift right (in `si_left`), 10 shift left (in `si_right`) and 11 parallel load of `p`. Inputs `clk`, `rst`, `sel[1:0]`, `si_left`, `si_right`, `p[3:0]`; output `q[3:0]`.

## Testbench

The testbench `universal_shift_register_behavioral_tb.v` instantiates the design as `dut`, generates a clock with `forever #1 clk = ~clk`, applies reset, then steps `sel` through parallel load, shift-left and shift-right modes. Every change is printed with `$monitor` (time, clk, rst, sel, si_left, si_right, p, q), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `universal_shift_register_behavioral.v` | Verilog design |
| `universal_shift_register_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
