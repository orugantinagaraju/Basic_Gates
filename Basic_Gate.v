// AND_GATE

module and_gate(input a, input b, output y);
    assign y = a & b;
endmodule


//OR_GATE
module or_gate(input a, input b, output y);
    assign y = a | b;
endmodule
//NOT_GATE
module not_gate(input a, output y);
    assign y = ~a;
endmodule


//XOR_GATE
module xor_gate(input a, input b, output y);
    assign y = a ^ b;
endmodule

