# OOP Concepts - SystemVerilog

This folder covers the four pillars of object-oriented programming as they are used in SystemVerilog verification.

| File | Description |
|---|---|
| `inheritance.sv` | A child class `extends` a parent and reuses its properties and methods. |
| `encapsulation.sv` | Hiding data with `local` and giving access only through methods. |
| `abstraction.sv` | An abstract (`virtual`) class with a `pure virtual` method that a child must implement. |
| `polymorphism.sv` | A `virtual` method called through a parent handle runs the child's version at run time. |

## Run

```bash
qverilog <file>.sv
```
