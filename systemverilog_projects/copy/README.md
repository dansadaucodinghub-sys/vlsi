# Shallow Copy and Deep Copy - SystemVerilog

This folder shows the difference between a shallow copy and a deep copy of a class object that holds a handle to another object.

| File | Description |
|---|---|
| `shallow_copy.sv` | `new obj` copies the simple fields but shares the nested object - changing one changes the other. |
| `deep_copy.sv` | A custom `copy()` builds a new nested object too, so the two objects are completely independent. |

## Run

```bash
qverilog <file>.sv
```
