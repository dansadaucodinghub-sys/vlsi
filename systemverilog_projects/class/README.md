# Classes - SystemVerilog

This folder introduces the SystemVerilog class - the building block of any object-oriented testbench. The examples move from a plain class to handle assignment and finally a class nested inside another class.

## Files

| File | Description |
|---|---|
| `class.sv` | A basic `packet` class with `data` and `addr` properties and a `display()` method. The object is created with `new()`, given values, and its method is called. |
| `class_assignment.sv` | Handle assignment. `pkt2 = pkt1` copies the handle, so both handles point to the same object rather than to two separate objects. |
| `class_in_a_class.sv` | A nested class - an inner `address` class declared inside the outer `packet` class, accessed through the `packet::address` scope. |

## Run

```bash
qverilog class.sv
```
