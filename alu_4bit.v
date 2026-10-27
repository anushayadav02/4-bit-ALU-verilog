module alu_4bit(
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [3:0] result,
    output reg carry,
    output reg zero
);
always @(*) begin
    carry = 0;
    case(sel)
        3'b000: {carry, result} = a + b; // ADD
        3'b001: {carry, result} = a - b; // SUB
        3'b010: result = a & b; // AND
        3'b011: result = a | b; // OR
        3'b100: result = a ^ b; // XOR
        3'b101: result = ~a; // NOT
        3'b110: result = a << 1; // SHL
        3'b111: result = a >> 1; // SHR
        default: result = 4'b0000;
    endcase
    zero = (result == 0);
end
endmodule