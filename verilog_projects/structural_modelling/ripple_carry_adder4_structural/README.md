# ripple_carry_adder4_structural

## Description

4-bit ripple carry adder built by chaining full-adder blocks. It adds two 4-bit operands `A` and `B` with a carry-in.

## Design

Structural: four `full_adder_cell` instances are connected in a chain, each cell's carry-out feeding the next cell's carry-in. Inputs `A[3:0]`, `B[3:0]`, `Cin`; outputs `Sum[3:0]`, `Cout`.

## Testbench

The testbench `ripple_carry_adder4_structural_tb.v` instantiates the design as `dut`, applies several operand pairs including carry-in and overflow cases at 2 time-unit steps, then calls `$finish`, prints each change with `$monitor` (A, B, Cin, Cout, Sum), and dumps `dump.fsdb` so the waveform can be opened in Verdi.

## Modeling Style

Structural modeling.

## Files

| File | Description |
|---|---|
| `ripple_carry_adder4_structural.v` | Verilog design |
| `ripple_carry_adder4_structural_tb.v` | Verilog testbench |
| `Makefile` | VCS/Verdi simulation flow |

## Run

```bash
make all
```

## View Waveform

```bash
make waves
```
