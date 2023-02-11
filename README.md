# Latches-and-Flip-Flops
Generating basic D-Latch, SR-Latch, and flip-flops in SystemVerilog

This project contains the codes in the following order:

1) Generating a clocked **SR-latch** with active low S, R, and Clock inputs, and applying simultaneous active inputs (S and R) and see the loss of memory.

2. Using an inverter to convert the SR latch to a clocked **D-latch**, and simulating this circuit to verify its operation.

3. Forming an **8-bit shift register** using the above latch, and simulating th circuit. From left to right (i to 0), the output of latch i connects to the D input of latch i-1. The D input of latch i is the sin (serial input) of the shift register.

4. Using two D-latches to build a **master-slave D-type flip-flop**, and creating a synchronous reset (rs) for the flip-flop such that when this input becomes
1, the output becomes 0 with the clock.

5. Build an 8-bit shift-register using the flip-flop in both a **generate** and **always** statement. I also used a
testbench to simulate this register and verify its clocking, shifting, and resetting operations.

6. Finally, using the shift register, I designed an LFSR with x8+x7+x6+x3+1 polynomial. For this, I numbered shift-register flip-flops from 7 to 0 from left to right. A feedback from output of bit 0 (x0 in the polynomial) connects to the input of bit 7 (x8 in the polynomial). In the polynomial, the coefficient of term (xi) is 1 where flip-flop i output connects to the feedback through an XOR gate. Coefficient of 0 for a term means that the corresponding output does not contribute to the feedback, and the serial output from bit 0 has pseudo-random serial data.


