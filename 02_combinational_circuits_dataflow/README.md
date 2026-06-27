# Combinational Circuits Using Dataflow Modeling

This package contains commonly used combinational RTL blocks written using **Verilog dataflow modeling**.

Dataflow modeling is useful when describing circuits directly with Boolean expressions, conditional operators, and continuous assignments.

## Circuits Included

| Circuit | Module |
|---|---|
| 2x1 Multiplexer | `mux2x1` |
| 4x1 Multiplexer | `mux4x1` |
| 1x2 Demultiplexer | `demux1x2` |
| 1x4 Demultiplexer | `demux1x4` |
| 4x2 Encoder | `encoder4x2` |
| 2x4 Decoder | `decoder2x4` |
| 1-bit Comparator | `comparator1bit` |
| 2-bit Comparator | `comparator2bit` |
| Half Adder | `half_adder` |
| Full Adder | `full_adder` |
| Half Subtractor | `half_subtractor` |
| Full Subtractor | `full_subtractor` |
| 4-bit Ripple Carry Adder | `ripple_carry_adder4` |

Each circuit folder contains the design, testbench, Makefile, and README.

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
