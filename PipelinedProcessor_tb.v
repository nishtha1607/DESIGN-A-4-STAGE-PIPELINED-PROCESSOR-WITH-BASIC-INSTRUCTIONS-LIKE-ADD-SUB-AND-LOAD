module PipelinedProcessor_tb;

reg clk, reset;
reg [7:0] instruction;
wire [7:0] result;

// Instantiate the processor
PipelinedProcessor uut (
    .clk(clk),
    .reset(reset),
    .instruction(instruction),
    .result(result)
);

initial begin
    // Initialize signals
    clk = 0;
    reset = 1;
    instruction = 8'b00000000;
    #10 reset = 0;

    // Monitor signals
    $monitor("Time = %0t, clk = %b, reset = %b, instruction = %b, result = %b", $time, clk, reset, instruction, result);

    // Test ADD instruction
    instruction = 8'b00010010; // A = 1, B = 2, opcode = 000
    #10;

    // Test SUB instruction
    instruction = 8'b00110110; // A = 3, B = 6, opcode = 001
    #10;

    // Test LOAD instruction
    instruction = 8'b10000011; // A = 8, opcode = 100
    #10;

    // Finish simulation
    $finish;
end

// Clock generation
always #5 clk = ~clk;

endmodule
