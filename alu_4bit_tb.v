`timescale 1ns / 1ps
module alu_4bit_tb;
    reg [3:0] a, b;
    reg [2:0] sel;
    wire [3:0] result;
    wire carry, zero;
    alu_4bit uut(a,b,sel,result,carry,zero);
    initial begin
        a=4'd5; b=4'd3;
        sel=3'b000; #10;
        sel=3'b001; #10;
        sel=3'b010; #10;
        sel=3'b011; #10;
        sel=3'b100; #10;
        sel=3'b101; #10;
        sel=3'b110; #10;
        sel=3'b111; #10;
        $finish;
    end
endmodule