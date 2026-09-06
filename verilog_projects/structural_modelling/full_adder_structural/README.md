# full_adder_structural

## Description

Full adder built by connecting smaller blocks together. It adds `a`, `b` and a carry-in `cin`, giving a sum and a carry-out.

## Design

Structural: two `half_adder` instances and one `or` gate are wired together. The first half adder adds `a` and `b`, the second adds that sum to `cin`, and the `or` gate combines the two carries into `cout`. Inputs `a`, `b`, `cin`; outputs `s`, `cout`.

## Testbench

The testbench `full_adder_structural_tb.v` instantiates the design as `dut`, sweeps all eight input combinations at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (a, b, cin, s, cout), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Structural modeling.

## Files

| File | Description |
|---|---|
| `full_adder_structural.v` | Verilog design |
| `full_adder_structural_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
