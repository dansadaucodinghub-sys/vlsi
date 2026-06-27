# Seven Basic Logic Gates Using Gate-Level Modeling

This package contains Verilog examples for the seven basic logic gates using **gate-level modeling**.

Gate-level modeling uses Verilog primitive gates such as:

```verilog
and and1(y, a, b);
or  or1(y, a, b);
not not1(y, a);
```

Each folder contains the design, testbench, Makefile, and README.

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
