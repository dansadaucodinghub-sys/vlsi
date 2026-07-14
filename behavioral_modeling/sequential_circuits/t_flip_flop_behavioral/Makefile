IVERILOG = iverilog
VVP = vvp
GTKWAVE = gtkwave

SRC = t_flip_flop_behavioral.v t_flip_flop_behavioral_tb.v

OUT = sim.out
WAVE = wave.vcd

.PHONY: all compile run wave clean

all: run

compile:
	$(IVERILOG) -Wall -o $(OUT) $(SRC)

run: compile
	$(VVP) $(OUT)

wave: run
	$(GTKWAVE) $(WAVE)

clean:
	rm -f $(OUT) $(WAVE)
