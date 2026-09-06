# ripple_carry_adder4_behavioral

## Description

4-bit adder. It adds two 4-bit operands `a` and `b` with a carry-in `cin`, giving a 4-bit `sum` and a carry-out `cout`.

## Design

An `always @(*)` block computes `{cout, sum} = a + b + cin`. Inputs `a[3:0]`, `b[3:0]`, `cin`; outputs `sum[3:0]`, `cout`.

## Testbench

The testbench `ripple_carry_adder4_behavioral_tb.v` instantiates the design as `dut`, applies several operand pairs, including carry-in and overflow cases, at 2 time-unit steps, then calls `$finish`. Every change is printed with `$monitor` (time, a, b, cin, sum, cout), and the run dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Behavioral modeling.

## Files

| File | Description |
|---|---|
| `ripple_carry_adder4_behavioral.v` | Verilog design |
| `ripple_carry_adder4_behavioral_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
