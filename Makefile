TOP      = tb_top
SNAPSHOT = $(TOP)_sim

XVLOG = xvlog
XELAB = xelab
XSIM  = xsim

XVLOG_OPTS = -sv -f filelist.f
XELAB_OPTS = -timescale 1ns/1ps -debug typical $(TOP) -s $(SNAPSHOT)
XSIM_OPTS  = $(SNAPSHOT) -runall


all: compile elaborate simulate

compile:
	@echo "---- Compiling ----"
	$(XVLOG) $(XVLOG_OPTS)

elaborate:
	@echo "---- Elaborating ----"
	$(XELAB) $(XELAB_OPTS)

simulate:
	@echo "---- Simulating ----"
	$(XSIM) $(XSIM_OPTS)

gui:
	$(XSIM) $(SNAPSHOT) --gui

clean:
	rm -rf *.log *.jou *.pb *.wdb xsim.dir .Xil
