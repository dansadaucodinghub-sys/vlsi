# Program Block - SystemVerilog

This folder covers the `program` block, which was added for testbenches. Its code runs in the Reactive region, which helps avoid race conditions with the design.

| File | Description |
|---|---|
| `program_block.sv` | A small counter design driven and checked from a `program` block. |

## Run

```bash
qverilog <file>.sv
```
