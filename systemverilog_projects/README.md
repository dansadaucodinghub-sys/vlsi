# SystemVerilog Projects

This repository is my SystemVerilog learning workspace. It is organised by language topic, and each folder holds small, self-contained examples that print their results with `$display`, so the concept can be understood directly from the simulation log.

## Contents

| Folder | Topic |
|---|---|
| `data_type` | Default values of the built-in data types |
| `array` | Static, dynamic and associative arrays and their methods |
| `string` | The `string` type, its methods and operators |
| `struct` | Grouping variables together with `struct` |
| `union` | Shared-memory members with `union` |
| `enum` | Enumerated types and navigation methods |
| `loops` | `for`, `foreach`, `while`, `do...while` and `repeat` |
| `class` | Classes, handle assignment and nested classes |
| `task` | Tasks with input and output arguments |
| `process_and_threads` | `fork...join`, `join_any`, `join_none`, `wait fork` and `disable fork` |
| `randomization` | `rand`/`randc`, `rand_mode`, callbacks, inline and bidirectional constraints, shallow copy |
| `assignment` | Constraint practice - ranged, even/odd and weighted distributions |

## Run

Every file is a standalone module. Simulate any one of them with a SystemVerilog simulator, for example:

```bash
qverilog <file>.sv
```

## Author

Prepared by Dansadau as part of my Chip Design and Verification learning.
