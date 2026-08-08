# 4:2 Priority Encoder using Verilog

## 📌 Description

A **Priority Encoder** is a combinational circuit that converts multiple input signals into a binary output based on the priority of the inputs.

This project implements a **4:2 Priority Encoder** using Verilog HDL.

The input `din[3]` has the highest priority, while `din[0]` has the lowest priority.

## 🔹 Inputs and Outputs

### Input

* `din[3:0]` – 4-bit input

### Outputs

* `y[1:0]` – 2-bit encoded output
* `valid` – Indicates whether any input is active

## 🔹 Priority Order

```text
din[3] > din[2] > din[1] > din[0]
```

## 🔹 Truth Table

| Input | Output | Valid |
| ----- | ------ | ----- |
| 0000  | 00     | 0     |
| 0001  | 00     | 1     |
| 0010  | 01     | 1     |
| 0100  | 10     | 1     |
| 1000  | 11     | 1     |

If multiple inputs are HIGH, the highest-priority input is selected.

## 🔹 Example

For input:

`din = 1010`

Both `din[3]` and `din[1]` are HIGH.

Since `din[3]` has the highest priority:

`Output = 11`

## 🔹 Files

* `priority_encoder.v` – Verilog design code
* `priority_encoder_tb.v` – Testbench
* `simulation/waveform.png` – Simulation waveform
* `LICENSE` – Project license

## 🔹 Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave / ModelSim / Vivado

## 🔹 Applications

* Interrupt controllers
* CPU and processor design
* Digital communication
* Data selection circuits
* VLSI systems

## 🔹 Result

The 4:2 Priority Encoder was successfully designed and verified using Verilog HDL through simulation.
