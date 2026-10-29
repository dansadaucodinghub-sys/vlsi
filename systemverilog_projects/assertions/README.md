# Assertions - SystemVerilog

This folder covers SystemVerilog Assertions (SVA) and the built-in functions used with them.

| File | Description |
|---|---|
| `immediate_assertion.sv` | An immediate assertion - checked right away inside procedural code, with pass and fail cases. |
| `concurrent_assertion.sv` | A concurrent assertion - checks a `req -> ack` property over clock cycles. |
| `assertion_methods.sv` | The built-in functions: `$onehot`, `$onehot0`, `$countones`, `$isunknown` in procedural code, and the sampled-value functions `$rose`, `$fell`, `$stable`, `$past` shown with `cover property`. |

## Run

```bash
qverilog <file>.sv
```
