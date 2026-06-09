 Design Assignment — Abhinav
 
Verilog RTL design assignments organized by day, each containing design and testbench files.
 
---
 
## Repository Structure
 
```
design_assignment_Abhinav1/
│
├── day1/
│   ├── BCD_Adder/
│   │   ├── DESIGN/
│   │   ├── tb/
│   │   └── bcd.md
│   │
│   └── Ripple_Carry_Adder/
│       ├── design/
│       ├── rca/              ← design_rcv.v
│       ├── tb/
│       ├── tb_rcv/
│       └── rca.md
│
└── day2/
    ├── 2x4Decoder/
    │   ├── design/
    │   └── tb/
    │
    ├── USR/
    │   ├── USR_design/
    │   └── usr_tb/
    │
    ├── dff/
    │   ├── design/
    │   └── tb/
    │
    └── srff/
        ├── tb/
        └── srff_design.v
```
 
---
 
##  Modules
 
### Day 1
 
| Module | Description |
|--------|-------------|
| **BCD Adder** | Adds two BCD digits and outputs a valid BCD result |
| **Ripple Carry Adder** | Multi-bit binary adder using cascaded full adder stages |
 
### Day 2
 
| Module | Description |
|--------|-------------|
| **2x4 Decoder** | Decodes a 2-bit input to one of four active output lines |
| **USR** | Universal Shift Register — supports load, left/right shift, and hold |
| **DFF** | D Flip-Flop — basic edge-triggered storage element |
| **SRFF** | SR Flip-Flop — Set-Reset latch with standard behavior |
 
---
 
##  Simulation
 
Using **Icarus Verilog**:
 
```bash
iverilog -o sim tb/<testbench>.v design/<design>.v
vvp sim
```
 
To view waveforms (add `$dumpfile`/`$dumpvars` in testbench):
 
```bash
gtkwave dump.vcd
```
 
---
 
## 🛠 Tools
 
- **Language:** Verilog HDL  
- **Simulator:** Icarus Verilog / ModelSim  
- **Waveform Viewer:** GTKWave  
---
 
## 👤 Author
 
**Abhinav** — [Abhinav7631-ab](https://github.com/Abhinav7631-ab)
