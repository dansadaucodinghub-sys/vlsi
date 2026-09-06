# Data Types - SystemVerilog

This folder shows the default (uninitialised) value of the common SystemVerilog data types. The single module declares one variable of each type and prints its default value.

## Files

| File | Description |
|---|---|
| `data_type.sv` | Declares `int`, `integer`, `shortint`, `longint`, `bit`, `byte`, `logic`, `reg`, `wire` and `time`, then prints the default value each one holds before any assignment. |

## Run

```bash
qverilog data_type.sv
```
