# Constraint Assignments - SystemVerilog

This folder holds my constraint practice files. Each one wraps a random variable inside a class, adds a `constraint` block, and randomises it several times so the effect of the constraint is visible in the log.

## Files

| File | Description |
|---|---|
| `constraint_ass1.sv` | `even_numbers` - a `randc int` constrained to the range 2 to 10 and forced to be even. |
| `constraint_ass2.sv` | `odd_numbers` - a `randc int` constrained to the range 1 to 10 and forced to be odd. |
| `constraint_ass3.sv` | `numbers_between_50_100` - a `randc int` constrained between 50 and 100. |
| `constraint_ass4.sv` | `probability_constraint` - a 1-bit signal weighted with `dist` so 1 appears about 70% and 0 about 30% of the time. |
| `constraint_ass5.sv` | `weighted_1` - a 1-bit value with an equal 50/50 `dist` weighting. |
| `constraint_ass6.sv` | `weighted_2` - an `int` weighted so 0 is far more likely than 2, 4 and 6. |
| `constraint_ass7.sv` | `weighted_3` - an `int` where the values 1 to 5 all share equal weight. |
| `constraint_ass8.sv` | `weighted_4` - an `int` where 2 is given a higher weight than 1. |

## Run

```bash
qverilog constraint_ass1.sv
```
