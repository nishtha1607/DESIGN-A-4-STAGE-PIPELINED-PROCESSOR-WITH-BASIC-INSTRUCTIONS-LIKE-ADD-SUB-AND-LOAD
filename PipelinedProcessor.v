module PipelinedProcessor (
    input clk, reset,
    input [7:0] instruction,    // 8-bit instruction input
    output [7:0] result        // 8-bit result output
);

reg [7:0] IF_ID_instr;
reg [7:0] ID_EX_A, ID_EX_B;
reg [2:0] ID_EX_opcode;
reg [7:0] EX_MEM_result;

// Instruction Fetch (IF)
always @(posedge clk or posedge reset) begin
    if (reset)
        IF_ID_instr <= 8'b0;
    else
        IF_ID_instr <= instruction;
end

// Instruction Decode (ID)
always @(posedge clk or posedge reset) begin
    if (reset) begin
        ID_EX_A <= 8'b0;
        ID_EX_B <= 8'b0;
        ID_EX_opcode <= 3'b0;
    end else begin
        ID_EX_A <= instruction[7:4]; // Source register
        ID_EX_B <= instruction[3:0]; // Destination register
        ID_EX_opcode <= instruction[2:0]; // Opcode
    end
end

// Execute (EX)
always @(posedge clk or posedge reset) begin
    if (reset)
        EX_MEM_result <= 8'b0;
    else begin
        case (ID_EX_opcode)
            3'b000: EX_MEM_result <= ID_EX_A + ID_EX_B;  // ADD
            3'b001: EX_MEM_result <= ID_EX_A - ID_EX_B;  // SUB
            3'b010: EX_MEM_result <= ID_EX_A & ID_EX_B;  // AND
            3'b011: EX_MEM_result <= ID_EX_A | ID_EX_B;  // OR
            3'b100: EX_MEM_result <= ID_EX_A;            // LOAD
            default: EX_MEM_result <= 8'b0;
        endcase
    end
end

// Memory (MEM)
always @(posedge clk or posedge reset) begin
    if (reset)
        result <= 8'b0;
    else
        result <= EX_MEM_result;
end

endmodule
