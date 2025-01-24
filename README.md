# DESIGN-A-4-STAGE-PIPELINED-PROCESSOR-WITH-BASIC-INSTRUCTIONS-LIKE-ADD-SUB-AND-LOAD

**COMPANY**: CODITECH IT SOLUTIONS

**NAME**: NISHTHA SHRIRANG PARANDE

**INTERN ID**: CT08FOI

**DOMAIN**: VLSI

**BATCH DURATION**: December 25th, 2024 to January 25th, 2025.

**MENTOR NAME**: NEELA SANTHOSH

**4-Stage Pipelined Processor Design Using Verilog**
Description:
This repository contains the design and implementation of a 4-stage pipelined processor using Verilog. The processor supports basic instructions such as ADD, SUB, and LOAD. The repository includes the Verilog code, a testbench to verify the functionality, and a simulation report documenting the results.The task involves designing a 4-stage pipelined processor in Verilog that can perform basic instructions such as ADD, SUB, and LOAD. The design demonstrates instruction execution through the following stages of a pipeline:

**Contents**
Verilog code for the 4-stage pipelined processor. Testbench for the processor.
Simulation results showing each stage's operation.

**Pipeline Stages Instruction Fetch (IF):**

Fetches the instruction from the instruction memory. Updates the program counter (PC) to fetch the next instruction. Instruction Decode (ID):
Decodes the fetched instruction to identify the operation (opcode) and operands (registers or immediate values). Reads source operands from the register file. Execute (EX):
Performs arithmetic and logical operations using the ALU (Arithmetic Logic Unit). For LOAD instructions, calculates the effective memory address. Memory Access (MEM):
Accesses the data memory for LOAD/STORE instructions. Passes the results of arithmetic instructions for the next stage. Write Back (WB):
Writes the results back to the destination register for arithmetic or LOAD instructions. Key Components Program Counter (PC):
Holds the address of the current instruction. Updates to point to the next instruction after each clock cycle. Instruction Memory:
Stores the instructions for execution. Register File:
A set of registers for storing operands and results. Two read ports and one write port for efficient operation. ALU (Arithmetic Logic Unit):
Performs arithmetic (ADD, SUB) and logical operations. Data Memory
Used for LOAD/STORE instructions. Pipeline Registers:
Separates the stages of the pipeline to hold intermediate data and control signals

**Processor Stages**
The processor consists of the following stages:
Fetch (IF): Fetches the instruction from memory.
Decode (ID): Decodes the instruction and reads the operands.
Execute (EX): Performs the arithmetic or logical operation.
Memory (MEM): Accesses memory for load/store instructions.

**Instructions**
The processor supports the following basic instructions:
ADD: Adds two operands.
SUB: Subtracts the second operand from the first.
LOAD: Loads a value into a register.

**Testbench**
The testbench (PipelinedProcessor_tb.v) provides a set of test cases to verify the processor's functionality. It monitors the signals and prints the results of various instructions.

**Simulation Report**
The simulation report (simulation_report.txt) contains the output of the processor for different test cases, demonstrating the correctness of the design.

Getting Started
To run the simulation, you can use any Verilog simulation tool such as ModelSim. Follow these steps:

Clone the repository: git clone <repository_url>

Navigate to the repository directory: cd Pipelined_Processor

Open the simulation tool and load the testbench file: PipelinedProcessor_tb.v

Run the simulation and observe the results.

**Author**
Md Ahmed Mentor: Neela Santhosh

**Acknowledgments**
Thanks to Coditech IT Solutions for providing the internship opportunity.
