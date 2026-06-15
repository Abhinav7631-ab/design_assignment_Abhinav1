## Day-5

## BCD Adder 

This project implements a Binary-Coded Decimal (BCD) Adder using Verilog HDL. The design performs decimal addition of two 4-bit BCD numbers and generates a valid BCD output by applying correction logic whenever the binary sum exceeds 9.

**Features**

- 4-bit BCD addition
- Carry input and carry output support
- Automatic BCD correction using +6 logic
- Modular design using Full Adders and Ripple Carry Adders
- Simulated and verified using AMD Vivado 2023.2


**Inputs**

- "A[3:0]" : First BCD digit
- "B[3:0]" : Second BCD digit
- "cin" : Carry input

**Outputs**

- "Sum[3:0]" : BCD sum output
- "cout" : Carry output

**Design Architecture**

The design consists of:

1. Full Adder Module
   
   - Performs single-bit addition.

2. 4-bit Ripple Carry Adder (RCA)
   
   - Adds two 4-bit binary numbers.

3. BCD Adder
   
   - Performs initial binary addition.
   - Detects invalid BCD results (>9).
   - Adds correction value ("0110") when required.
   - Produces a valid BCD output.

**Functionality**

- If the binary sum is less than or equal to 9, the result is directly passed as the BCD output.
- If the binary sum exceeds 9 or generates a carry, the correction value "0110" is added to obtain a valid BCD result.


**Result:**

BCD Output = 14

**Verification**

A SystemVerilog testbench was created to verify the functionality of the BCD Adder under different input combinations.

Test cases include:

- Addition without carry
- Addition resulting in BCD correction
- Addition with carry input
- Maximum valid BCD combinations

Waveforms were analyzed using the Vivado Simulator to verify correct operation.


### Simulation Result

Simulation results confirm correct BCD addition, carry generation, and decimal correction for all tested input combinations.
<img width="1623" height="642" alt="bcd_interface" src="https://github.com/user-attachments/assets/6747f345-4611-4b9e-89f1-7c6c62fb37e2" />
