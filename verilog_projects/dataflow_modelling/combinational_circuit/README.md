# Combinational Circuits Using Dataflow Modeling

This folder contains common combinational blocks written using **dataflow modeling** - continuous assignments with Boolean and conditional (`?:`) operators.

## Circuits

| Circuit | Module | Folder |
|---|---|---|
| Half Adder | `half_adder` | `adders/half_adder` |
| Full Adder | `full_adder` | `adders/full_adder` |
| 4-bit Ripple Carry Adder | `ripple_carry_adder4` | `adders/ripple_carry_adder` |
| Half Subtractor | `half_subtractor` | `subtractors/half_subtractor` |
| Full Subtractor | `full_subtractor` | `subtractors/full_subtractor` |
| 1-bit Comparator | `comparator` | `comparators/comparator1bit` |
| 2-bit Comparator | `comparator2bit` | `comparators/comparator2bit` |
| 2x4 Decoder | `decoder2x4` | `decoder` |
| 4x2 Encoder | `encoder4x2` | `encoders` |
| 1x2 Demultiplexer | `demux1x2` | `demux/demux1x2` |
| 1x4 Demultiplexer | `demux1x4` | `demux/demux1x4` |
| 2x1 Multiplexer | `mux2x1` | `mux/mux2x1` |
| 4x1 Multiplexer | `mux4x1` | `mux/mux4x1` |

Each circuit folder contains the design, testbench, Makefile and README.

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
