# Constraints - SystemVerilog

This folder collects the main styles of randomization constraints, one small example each.

| File | Description |
|---|---|
| `function_in_constraint.sv` | A constraint that calls a function to work out the legal upper limit of a value. |
| `unique_constraint.sv` | The `unique` constraint - forces every element of an array to be different. |
| `distribution_constraint.sv` | The `dist` operator - gives each value a weight so some appear more often. |
| `iterative_constraint.sv` | A `foreach` constraint - applies a rule to every element, here keeping the array sorted. |

## Run

```bash
qverilog <file>.sv
```
