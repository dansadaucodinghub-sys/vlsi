# Processes and Threads - SystemVerilog

This folder is about `fork...join` and the way parallel threads are started and synchronised. Each file changes how the parent process waits for the threads it spawns.

## Files

| File | Description |
|---|---|
| `fork_join.sv` | `fork...join` - the parent waits for all spawned threads to finish before moving on. |
| `fork_join_any.sv` | `fork...join_any` - the parent waits only until any one thread finishes. |
| `fork_join_none.sv` | `fork...join_none` - the parent does not wait; it continues immediately while the threads run in the background. |
| `fork_join_wait.sv` | Starts threads with `join_none`, keeps going, then uses `wait fork` to block until all of the spawned threads have finished. |
| `fork_join_disable.sv` | Starts threads with `join_none`, then uses `disable fork` to terminate the threads that are still running. |

## Run

```bash
qverilog fork_join.sv
```
