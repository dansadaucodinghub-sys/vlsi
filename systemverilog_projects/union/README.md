# Union - SystemVerilog

This folder covers the `union` - like a struct, but every member shares the same piece of memory.

## Files

| File | Description |
|---|---|
| `union.sv` | A union of an `int` and a `byte`. Because the members overlap in memory, writing one affects what the other reads. |

## Run

```bash
qverilog union.sv
```
