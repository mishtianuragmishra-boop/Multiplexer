# Multiplexer
This project implements a 2:1 Multiplexer (MUX) using Verilog HDL. A multiplexer is a combinational logic circuit that selects one of two input signals and forwards it to a single output based on the value of a select line.
# 2:1 Multiplexer using Verilog

This project implements a **2:1 Multiplexer (MUX)** using Verilog HDL. A multiplexer is a combinational logic circuit that selects one of two input signals and forwards it to a single output based on the value of a select line.

## Logic

* If `sel = 0`, the output follows `in0`.
* If `sel = 1`, the output follows `in1`.

**Boolean Expression:**

`out = (in0 & ~sel) | (in1 & sel)`

## Truth Table

| sel | in0 | in1 | out |
| --- | --- | --- | --- |
| 0   | 0   | X   | 0   |
| 0   | 1   | X   | 1   |
| 1   | X   | 0   | 0   |
| 1   | X   | 1   | 1   |

*(`X` represents a don't-care value.)*

## Simulation

A testbench was created to verify all possible input combinations and confirm that the output correctly follows the selected input.

## What I Learned

* Designing combinational logic circuits in Verilog.
* Using `always @(*)` blocks for combinational logic.
* Implementing decision-making with `if-else` statements.
* Creating a testbench to verify circuit functionality.
* Understanding how multiplexers are used for signal selection in digital systems.

## Files

* `mux2to1.v` – Verilog design module
* `mux2to1_tb.v` – Testbench
* `mux_output.png` – Simulation output
* `README.md` – Project documentation
