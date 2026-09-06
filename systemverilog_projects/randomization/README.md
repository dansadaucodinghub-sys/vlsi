# Randomization - SystemVerilog

This folder is my randomization and constraint workspace. It covers `rand`/`randc`, controlling randomization with `rand_mode`, the `pre_randomize`/`post_randomize` callbacks, inline and bidirectional constraints, shallow copy, and a set of constraint drills.

## Files

| File | Description |
|---|---|
| `randomization.sv` | The difference between `rand` (may repeat) and `randc` (cycles through all values before repeating). |
| `_.randomize.sv` | Turning randomization of a variable on and off with `rand_mode(1)` and `rand_mode(0)`. |
| `rand_methods.sv` | The `pre_randomize()` and `post_randomize()` callbacks together with `rand_mode`. |
| `inline_random.sv` | An inline constraint added at the call with `randomize() with { ... }`. |
| `bidirectional_constraint.sv` | Shows constraints are solved together (bidirectional): `a == b + c` is satisfied alongside the limits on `b` and `c`. |
| `shallowCopy.sv` | A shallow copy with `new obj`, and a check that changing one packet does not change the other. |
| `shallowCopyNested.sv` | A shallow copy of a class that holds a handle to another class, showing the nested object stays shared. |
| `bidirectional_constraint.sv` | Constraints that depend on each other are resolved as one system. |
| `constraint_ass1.sv` ... `constraint_ass8.sv` | The constraint drills - even, odd, ranged and weighted `dist` distributions. |
| `randomi_zation.sv` | A `packet` with a `rand` and a `randc` address, randomised in a loop. |

## Run

```bash
qverilog randomization.sv
```
