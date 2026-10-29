# Interface - SystemVerilog

This folder covers the `interface` - it groups related signals together so a design and its testbench can connect through one handle instead of many separate wires.

| File | Description |
|---|---|
| `interface.sv` | An `adder_if` interface connecting a small adder design to the testbench. |

## Run

```bash
qverilog <file>.sv
```
