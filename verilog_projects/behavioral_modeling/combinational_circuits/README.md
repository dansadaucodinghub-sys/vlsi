# Combinational Circuits - Behavioral Modeling

This folder contains common combinational circuits written using behavioral modeling. Each design uses an `always @(*)` block with `if/else` or `case` to describe the logic.

## Circuits

| Circuit | Module |
|---|---|
| 2x1 Multiplexer | `mux2x1_behavioral` |
| 4x1 Multiplexer | `mux4x1_behavioral` |
| 1x2 Demultiplexer | `demux1x2_behavioral` |
| 1x4 Demultiplexer | `demux1x4_behavioral` |
| 4x2 Encoder | `encoder4x2_behavioral` |
| 2x4 Decoder | `decoder2x4_behavioral` |
| 1-bit Comparator | `comparator1bit_behavioral` |
| 2-bit Comparator | `comparator2bit_behavioral` |
| Half Adder | `half_adder_behavioral` |
| Full Adder | `full_adder_behavioral` |
| Half Subtractor | `half_subtractor_behavioral` |
| Full Subtractor | `full_subtractor_behavioral` |
| 4-bit Ripple Carry Adder | `ripple_carry_adder4_behavioral` |

Each circuit folder contains:

- Design `.v`
- Testbench `_tb.v`
- Makefile
- README.md

## Simulation Flow

This project is set up for **Synopsys VCS** and **Verdi**.

```bash
make compile
make run
make waves
make gui
make clean
```

The testbench generates `dump.fsdb`, which can be opened with:

```bash
make waves
```
