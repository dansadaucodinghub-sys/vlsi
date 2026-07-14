TOP = d_latch_behavioral_tb

SRC = \
	d_latch_behavioral.v\
	d_latch_behavioral_tb.v

VCS = vcs -full64 -sverilog
VCS_OPTS = -debug_access+all -kdb -l compile.log

compile:
	$(VCS) $(VCS_OPTS) $(SRC)

run:
	./simv -l run.log

gui:
	verdi -sv $(SRC) -top $(TOP) &

waves:
	verdi -ssf dump.fsdb &

all: compile run waves

clean:
	rm -rf \
		csrc \
		simv \
		simv.daidir \
		verdiLog \
		novas* \
		*.log \
		*.vpd \
		*.fsdb \
		*.key \
		DVEfiles
