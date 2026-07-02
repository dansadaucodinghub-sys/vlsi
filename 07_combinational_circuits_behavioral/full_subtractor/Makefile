TOP = full_subtractor_behavioral_tb

SRC = \
 full_subtractor_behavioral.v \
 full_subtractor_behavioral_tb.v

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

all: compile run

all_gui: compile run gui

all_waves: compile run waves

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
	DVEfiles \
	ucli.key
