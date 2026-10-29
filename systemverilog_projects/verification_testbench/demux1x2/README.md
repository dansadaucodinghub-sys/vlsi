# demux1x2 - Verification Testbench

A complete layered, class-based SystemVerilog testbench for the **1-to-2 demultiplexer**.

The generator produces random inputs, the driver applies them through the interface, the monitor samples the result, and the scoreboard re-computes the expected output and checks it - printing PASS/FAIL for each transaction and a final summary.

## Files

| File | Description |
|---|---|
| `demux1x2.sv` | The DUT (design under test). |
| `demux1x2_if.sv` | The interface that groups the DUT signals with the clock. |
| `demux1x2_tb.sv` | The layered testbench classes: transaction, generator, driver, monitor, scoreboard, environment and test. |
| `demux1x2_top.sv` | The top module: clock, interface, DUT instance and the test run. |
| `filelist.f` | The compile order for the simulator. |

## Run

With Synopsys VCS:

```bash
vcs -full64 -sverilog -debug_access+all -kdb -f filelist.f
./simv
```
