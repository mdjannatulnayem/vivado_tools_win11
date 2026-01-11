This repository demonstrates a basic **simulation workflow using Xilinx Vivado tools** (`xvlog`, `xelab`, and `xsim`) on **Windows 11**. It provides a simple Makefile for compiling, elaborating, and simulating a SystemVerilog testbench.

## Repository Structure

* `Makefile` – Automates compilation, elaboration, and simulation using Vivado tools.
* `filelist.f` – List of SystemVerilog files for the simulation.
* `tb_top.sv` – Top-level testbench (replace with your own).

## Prerequisites

* **Xilinx Vivado** installed and added to your system PATH (so that `xvlog`, `xelab`, and `xsim` commands are accessible).
* **Windows 11** environment.

## Makefile Targets

| Target      | Description                                                            |
| ----------- | ---------------------------------------------------------------------- |
| `all`       | Runs compile, elaborate, and simulate in sequence.                     |
| `compile`   | Compiles all SystemVerilog files listed in `filelist.f`.               |
| `elaborate` | Elaborates the design to prepare for simulation.                       |
| `simulate`  | Runs the simulation in batch mode.                                     |
| `gui`       | Opens the simulation in the Vivado GUI.                                |
| `clean`     | Removes all generated logs, simulation snapshots, and temporary files. |

## Usage

1. Open **Command Prompt** or **PowerShell** in the repository directory.
2. Run the desired Makefile target:

```bash
make all       # Compile, elaborate, and simulate
make gui       # Launch simulation GUI
make clean     # Clean generated files
```

3. Check the simulation output in the console or waveform viewer (`.wdb` file).

## Notes

* Ensure `filelist.f` includes all RTL and testbench files.
* The top-level module is defined in the Makefile as `tb_top`. Update it if your top module is named differently.
* Time scale is set to `1ns/1ps` with typical debug options. Adjust in the Makefile if needed.





