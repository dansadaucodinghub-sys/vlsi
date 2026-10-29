# Casting - SystemVerilog

This folder covers casting - changing the type of a value or a class handle.

| File | Description |
|---|---|
| `casting.sv` | Static casting with `type'(value)` (real to int), and dynamic casting with `$cast` to safely downcast a parent handle to a child handle. |

## Run

```bash
qverilog <file>.sv
```
