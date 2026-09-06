# Seven Basic Logic Gates Using Dataflow Modeling

This folder contains the seven basic logic gates written using **dataflow modeling**. Each gate is a single continuous assignment:

```verilog
assign y = expression;
```

## Gates

| Gate | Module |
|---|---|
| AND | `and_gate` |
| OR | `or_gate` |
| NOT | `not_gate` |
| NAND | `nand_gate` |
| XOR | `xor_gate` |
| XNOR | `xnor_gate` |

> **Note:** the folder named `nor_gate` currently holds an XOR implementation (`xor_gate.v`) rather than a NOR gate. See that folder's README.

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
