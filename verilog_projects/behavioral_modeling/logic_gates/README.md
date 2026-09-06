# Logic Gates - Behavioral Modeling

This folder contains the seven basic logic gates written using behavioral modeling. Each gate is described with an `always @(*)` block driving the output from the inputs.

## Gates

| Gate | Module |
|---|---|
| AND | `and_gate_behavioral` |
| OR | `or_gate_behavioral` |
| NOT | `not_gate_behavioral` |
| NAND | `nand_gate_behavioral` |
| NOR | `nor_gate_behavioral` |
| XOR | `xor_gate_behavioral` |
| XNOR | `xnor_gate_behavioral` |

Each circuit folder contains:

- Design `.v`
- Testbench `_tb.v`
- Makefile
- README.md

## Simulation Flow

This project is set up for **Synopsys VCS** and **Verdi**.

```bash
make compile
make run
make waves
make gui
make clean
```

The testbench generates `dump.fsdb`, which can be opened with:

```bash
make waves
```
