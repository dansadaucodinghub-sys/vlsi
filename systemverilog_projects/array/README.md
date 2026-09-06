# Arrays - SystemVerilog

This folder contains SystemVerilog examples that explore the different array types and their built-in methods. Each file is a small self-contained module that prints its result with `$display`, so the concept can be seen straight from the simulation log.

## Files

| File | Description |
|---|---|
| `array_static.sv` | Fixed-size (static) array. A 5-element `int` array is declared and initialised with `'{}` and printed with `%p`. |
| `array_dynamic.sv` | Dynamic array. Memory is allocated at run time with `new[]`, filled, then re-sized to show how a dynamic array can grow or shrink. |
| `array_associative.sv` | Associative array indexed by `int` holding `string` values, with the `size()`, `exists()`, `num()` and `delete()` methods. |
| `array_manipulation_method1.sv` | Ordering methods on an array: `reverse()`, `sort()`, `rsort()` and `shuffle()`. |
| `array_manipulation_method2.sv` | Reduction methods on an array: `sum()`, `product()`, `and()`, `or()` and `xor()`. |
| `array_method_finder.sv` | Index finder methods: `find_index()`, `find_first_index()`, `find_last_index()` and `unique_index()` using the `with` clause. |
| `array_method_locators.sv` | Locator methods: `find()`, `find_first()`, `find_last()`, `min()`, `max()` and `unique()`. |
| `array_overriding_method` | Ordering methods again (`reverse`, `sort`, `rsort`, `shuffle`). Note: this file has no `.sv` extension. |
| `array_reduction_method` | Reduction methods again (`sum`, `product`, `and`, `or`, `xor`). Note: this file has no `.sv` extension. |

## Run

Each file is a standalone module. Simulate any one of them with a SystemVerilog simulator, for example:

```bash
qverilog array_static.sv
```
