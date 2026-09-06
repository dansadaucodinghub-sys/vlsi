# Seven Basic Logic Gates Using Gate-Level Modeling

This folder contains the seven basic logic gates written using **gate-level modeling**. Each gate is a single Verilog primitive instance, for example:

```verilog
and (y, a, b);
```

## Gates

| Gate | Module |
|---|---|
| AND | `and_gate` |
| OR | `or_gate` |
| NOT | `not_gate` |
| NAND | `nand_gate` |
| NOR | `nor_gate` |
| XOR | `xor_gate` |
| XNOR | `xnor_gate` |

Each circuit folder contains the design, testbench, Makefile and README.

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
