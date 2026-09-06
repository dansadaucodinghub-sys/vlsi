# Sequential Circuits - Behavioral Modeling

This folder contains clocked (sequential) designs written using behavioral modeling. Most are described with an `always @(posedge clk or posedge rst)` block and an asynchronous, active-high reset.

## Circuits

### Flip-Flops

- `d_flip_flop_behavioral`
- `jk_flip_flop_behavioral`
- `sr_flip_flop_behavioral`
- `t_flip_flop_behavioral`

### Latches (`latches/`)

- `d_latch_behavioral`
- `sr_latch_behavioral`

### Counters (`counters/`)

- `up_counter_behavioral`
- `down_counter_behavioral`
- `up_down_counter_behavioral`

(`counter4bit_behavioral` is a plain 4-bit up counter kept at this level.)

### Shift Registers (`shift_registers/`)

- `sipo_shift_register_behavioral`
- `siso_shift_register_behavioral`
- `piso_shift_register_behavioral`
- `pipo_register_behavioral`

(`shift_register4bit_behavioral` and `universal_shift_register_behavioral` are kept at this level.)

### State Machines (`state_machines/`)

- `mealy_101_detector_behavioral`
- `moore_101_detector_behavioral`

(`sequence_detector_101_behavioral` is a registered 101 detector kept at this level.)

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
