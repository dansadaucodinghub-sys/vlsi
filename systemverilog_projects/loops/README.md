# Loops - SystemVerilog

This folder collects the SystemVerilog looping constructs, one small example per loop type.

## Files

| File | Description |
|---|---|
| `for_loop.sv` | A `for` loop counting from 0 to 100. |
| `for_each.sv` | A `foreach` loop that walks through every element of an array. |
| `while.sv` | A `while` loop that runs as long as its condition stays true. |
| `do_while.sv` | A `do...while` loop, which always runs the body at least once before checking the condition. |
| `repeat.sv` | A `repeat` loop that runs its body a fixed number of times. |

## Run

```bash
qverilog for_loop.sv
```
