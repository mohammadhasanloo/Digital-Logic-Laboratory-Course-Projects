# Each lab is a separate design with its own testbench.

IV    := iverilog -g2012
BUILD := build

.PHONY: all sim clean sim-counter sim-one-pulse sim-ofsm sim-dds

all: sim

$(BUILD):
	@mkdir -p $(BUILD)

sim-counter: | $(BUILD)
	$(IV) -o $(BUILD)/counter.vvp -s counter_TB Lab2/Code/counter.sv Lab2/Code/counter_TB.sv
	vvp $(BUILD)/counter.vvp

sim-one-pulse: | $(BUILD)
	$(IV) -o $(BUILD)/one_pulse.vvp -s one_pulse_TB Lab2/Code/one_pulse.sv Lab2/Code/one_pulse_TB.sv
	vvp $(BUILD)/one_pulse.vvp

sim-ofsm: | $(BUILD)
	$(IV) -o $(BUILD)/ofsm.vvp -s OFSM_TB Lab2/Code/OFSM.v Lab2/Code/OFSM_TB.v
	vvp $(BUILD)/ofsm.vvp

sim-dds: | $(BUILD)
	$(IV) -o $(BUILD)/dds.vvp -s DDS_TB $(wildcard Lab3/DLD3/*.v)
	cd Lab3/DLD3 && vvp ../../$(BUILD)/dds.vvp

sim: sim-counter sim-one-pulse sim-ofsm sim-dds

clean:
	rm -rf $(BUILD) Lab3/DLD3/sim.vcd
