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




