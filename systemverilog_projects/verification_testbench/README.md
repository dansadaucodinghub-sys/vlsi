# Verification Testbenches - SystemVerilog

This folder contains **complete layered, class-based testbenches** for a set of small DUTs. Each one follows the same industry-style structure so the pattern is easy to reuse.

## Testbench structure

Every DUT folder builds the same components:

- **transaction** - the data item, with `rand` inputs
- **generator** - creates random transactions and sends them through a mailbox
- **driver** - drives each transaction onto the interface
- **monitor** - samples the interface and forwards what it sees
- **scoreboard** - re-computes the expected output and compares it with the DUT
- **environment** - wires the components together with mailboxes
- **test** - the top of the class hierarchy
- **interface** - groups the DUT signals with the clock
- **top** - clock, interface, DUT instance and the test run

## DUTs

| Folder | DUT |
|---|---|
| `and_gate` | 2-input AND gate |
| `or_gate` | 2-input OR gate |
| `not_gate` | NOT gate (inverter) |
| `mux2x1` | 2-to-1 multiplexer |
| `demux1x2` | 1-to-2 demultiplexer |

## Run

Each folder has a `filelist.f` giving the compile order. With Synopsys VCS:

```bash
vcs -full64 -sverilog -debug_access+all -kdb -f filelist.f
./simv
verdi -ssf dump.fsdb &
```
