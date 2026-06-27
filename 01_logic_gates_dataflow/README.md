# Seven Basic Logic Gates Using Dataflow Modeling

This package contains clean Verilog RTL examples for the seven basic logic gates using **dataflow modeling**.

Dataflow modeling uses continuous assignment statements:

```verilog
assign y = expression;
```

## Gates Included

| Gate | Module |
|---|---|
| AND | `and_gate` |
| OR | `or_gate` |
| NOT | `not_gate` |
| NAND | `nand_gate` |
| NOR | `nor_gate` |
| XOR | `xor_gate` |
| XNOR | `xnor_gate` |

Each gate folder contains the design, testbench, Makefile, and README.

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
