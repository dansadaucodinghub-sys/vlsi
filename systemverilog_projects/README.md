# SystemVerilog Projects

This repository is my SystemVerilog workspace for **design verification**. It is organised by topic, moving from the basic language features up to complete, layered, class-based testbenches. Each folder holds small, self-contained examples that print their results with `$display`, so the idea can be understood straight from the simulation log.

I am **Salihu Yakubu Sadau (Dansadau)**, and this is where I build up the SystemVerilog skills a verification engineer needs, one concept at a time.

## Contents

### Language basics

| Folder | Topic |
|---|---|
| `data_type` | Default values of the built-in data types |
| `array` | Static, dynamic and associative arrays and their methods |
| `string` | The `string` type, its methods and operators |
| `struct` / `union` | Grouping variables together, and shared-memory members |
| `enum` | Enumerated types and navigation methods |
| `loops` | `for`, `foreach`, `while`, `do...while` and `repeat` |

### Tasks and functions

| Folder | Topic |
|---|---|
| `task` | Tasks with input, output and `ref` arguments, automatic tasks, `disable` |
| `function` | Functions, void functions, automatic (recursive) functions, output arguments |

### Object-oriented programming

| Folder | Topic |
|---|---|
| `class` | Classes, handle assignment and nested classes |
| `oops` | The four OOP pillars: inheritance, encapsulation, abstraction, polymorphism |
| `copy` | Shallow copy vs deep copy |
| `casting` | Static casting and dynamic casting with `$cast` |

### Randomization and constraints

| Folder | Topic |
|---|---|
| `randomization` | `rand` / `randc`, `rand_mode`, callbacks, inline and bidirectional constraints, shallow copy |
| `constraints` | Function-in-constraint, `unique`, `dist`, and iterative (`foreach`) constraints |
| `assignment` | Constraint practice - ranged, even/odd and weighted distributions |

### Processes and threads

| Folder | Topic |
|---|---|
| `process_and_threads` | `fork...join`, `join_any`, `join_none`, `wait fork`, `disable fork` |

### Verification building blocks

| Folder | Topic |
|---|---|
| `interface` | Grouping DUT signals into an `interface` |
| `program_block` | The `program` block for testbenches |
| `coverage` | Functional coverage with covergroups, bins and cross |
| `assertions` | Immediate and concurrent assertions, and the built-in assertion functions |

### Complete testbenches

| Folder | Topic |
|---|---|
| `verification_testbench` | Full layered, class-based testbenches (generator, driver, monitor, scoreboard, environment) for `and_gate`, `or_gate`, `not_gate`, `mux2x1` and `demux1x2` |

## Run

Most single-file examples are standalone modules. Simulate any one of them with a SystemVerilog simulator, for example:

```bash
qverilog <file>.sv
```

The complete testbenches under `verification_testbench` each provide a `filelist.f` for the Synopsys VCS flow (see that folder's README).

## Author

Prepared by Dansadau as part of my Chip Design and Verification learning.
