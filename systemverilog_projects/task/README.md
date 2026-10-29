# Task - SystemVerilog

This folder covers the `task` - a routine that can contain timing and take input, output or ref arguments.

| File | Description |
|---|---|
| `task.sv` | A basic task that takes an address and data as inputs and prints them. |
| `automatic_task.sv` | An `automatic` task - each call keeps its own copy of the variables, so it is safe when called in parallel. |
| `task_ref_args.sv` | A task with a `ref` argument, so it can update the caller's variable directly. |
| `task_disable.sv` | Using `disable` to stop a named block inside a task before it finishes. |

## Run

```bash
qverilog <file>.sv
```
