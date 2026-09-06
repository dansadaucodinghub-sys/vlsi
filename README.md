# VLSI Design and Verification Portfolio

Welcome to my VLSI workspace. This repository brings together my hands-on work in **RTL design** and **SystemVerilog verification**, built while learning and practising digital design the way it is done in the industry.

Everything here is written by me from scratch, simulated with the **Synopsys VCS / Verdi** flow (and Questa for some SystemVerilog examples), and organised so that each circuit or topic stands on its own with its design, testbench, Makefile and README.

I am **Salihu Yakubu Sadau (Dansadau)**, an aspiring **Chip Design and Verification Engineer**, and this portfolio is where I keep my learning, my practice, and the small building blocks that show how I think about hardware.

---

## What This Repository Contains

The workspace is split into two main directories:

| Directory | What it covers |
|---|---|
| [`verilog_projects`](verilog_projects) | RTL design in Verilog - the same circuit families built in four different modeling styles, from basic logic gates to sequential state machines. |
| [`systemverilog_projects`](systemverilog_projects) | SystemVerilog for verification - the language features and constructs that a verification engineer uses to build testbenches. |

Together they cover both sides of the chip flow: **designing** the hardware and **verifying** that it works.

---

## 1. `verilog_projects` - RTL Design

This directory holds my Verilog RTL designs. The interesting part is that I built the **same circuits in four modeling styles**, so the difference between the styles is easy to see and compare side by side.

| Folder | Modeling Style | Description |
|---|---|---|
| `behavioral_modeling` | Behavioral | Circuits described by their behaviour using `always` blocks, `if/else` and `case`. |
| `dataflow_modelling` | Dataflow | Circuits described with continuous `assign` statements and Boolean expressions. |
| `gate_level_modelling` | Gate-level | Circuits built from Verilog primitive gates (`and`, `or`, `not`, `xor`, ...). |
| `structural_modelling` | Structural | Bigger circuits built by wiring smaller modules together (hierarchy and reuse). |
| `functions_in_verilog` | Functions | Small examples that build logic using the Verilog `function` construct. |

### Circuits I have designed

**Logic gates**
AND, OR, NOT, NAND, NOR, XOR, XNOR.

**Combinational circuits**
Half adder, full adder, 4-bit ripple carry adder, half subtractor, full subtractor, 1-bit and 2-bit comparators, 2x4 decoder, 4x2 encoder, 2x1 and 4x1 multiplexers, 1x2 and 1x4 demultiplexers.

**Sequential circuits**
D, T, JK and SR flip-flops; D and SR latches; up, down and up/down counters; SIPO, SISO, PISO, PIPO and universal shift registers; and 101 sequence detectors built as both **Mealy** and **Moore** state machines.

---

## 2. `systemverilog_projects` - Verification

This directory is my SystemVerilog learning ground - the language features that matter when writing a modern testbench. Each topic sits in its own folder with small, self-contained examples that print their results, so the idea can be understood straight from the simulation log.

| Folder | Topic |
|---|---|
| `data_type` | Default values of the built-in data types. |
| `array` | Static, dynamic and associative arrays, plus their built-in methods. |
| `string` | The `string` type, its methods and operators. |
| `struct` / `union` | Grouping variables together, and shared-memory members. |
| `enum` | Enumerated types and their navigation methods. |
| `loops` | `for`, `foreach`, `while`, `do...while` and `repeat`. |
| `class` | Classes, handle assignment and nested classes. |
| `task` | Tasks with input and output arguments. |
| `process_and_threads` | `fork...join`, `join_any`, `join_none`, `wait fork` and `disable fork`. |
| `randomization` | `rand` / `randc`, `rand_mode`, callbacks, inline and bidirectional constraints, shallow copy. |
| `assignment` | Constraint practice - ranged, even/odd and weighted `dist` distributions. |

These are the foundations for constrained-random, class-based verification.

---

## Skills This Portfolio Shows

- Clean, readable **Verilog RTL** coding
- Four RTL **modeling styles**: behavioral, dataflow, gate-level and structural
- Combinational **and** sequential logic design
- Finite state machine design (Mealy and Moore)
- **SystemVerilog** for verification: classes, randomization, constraints, processes and threads
- **Testbench** development with `$monitor`, stimulus generation and self-checking ideas
- The industry simulation flow: **Synopsys VCS**, **Verdi**, and **FSDB** waveform dumping
- Neat project structure, version control with Git, and clear documentation

---

## Tool Flow

The projects are prepared for the standard Synopsys flow:

- **Synopsys VCS** - compilation and simulation
- **Verdi** - waveform viewing and debug
- **FSDB** - waveform dumping (`dump.fsdb`)

Each Verilog circuit folder contains:

```text
design.v
testbench.v
Makefile
README.md
```

### Common commands

```bash
make compile   # compile the design and testbench with VCS
make run       # run the simulation
make waves     # open the FSDB waveform in Verdi
make gui       # open the design in Verdi
make clean     # remove generated files
```

Or simply:

```bash
make all
```

---

## How to Navigate

Every folder, from the top level down to each individual circuit, has its own `README.md` that explains what the design does and what its testbench checks. Start from either directory above and follow the READMEs down to the circuit you are interested in.

---

## Author

**Salihu Yakubu Sadau (Dansadau)**
Chip Design and Verification Engineer.

This portfolio is part of my journey into VLSI design and verification. It reflects both what I have learned and how I like to keep my work - clean, organised and easy to follow. Feedback is always welcome.
