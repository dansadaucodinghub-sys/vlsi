# Functions in Verilog

This folder collects small examples that use the Verilog `function` construct to build circuits from reusable helpers. They are learning exercises, so some are still work-in-progress drafts.

## Examples

| Folder | Description |
|---|---|
| `all_gate_using_mux` | Builds the basic logic gates from a 2x1 multiplexer function (AND, OR, NAND, NOR wired up). |
| `full_adder_using_half` | Work in progress: aims to build a full adder from a half-adder function. See its README for the open issues. |

Each example folder contains a design, a testbench and (where present) a Makefile.

## Simulation Flow

This project is set up for **Synopsys VCS** and **Verdi**.

```bash
make compile
make run
make waves
```
