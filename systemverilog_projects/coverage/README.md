# Functional Coverage - SystemVerilog

This folder covers functional coverage - a `covergroup` records which values and combinations were actually hit during the test.

| File | Description |
|---|---|
| `coverage.sv` | A covergroup with coverpoints, user-defined `bins` and `cross` coverage, sampled over random stimulus. |

## Run

```bash
qverilog <file>.sv
```
