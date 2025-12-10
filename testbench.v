`timescale 1ns/1ps

module testbench;
    reg a, b;
    wire and_out, or_out, xor_out;
    wire not_out;

    and_gate u1(a, b, and_out);
    or_gate  u2(a, b, or_out);
    xor_gate u3(a, b, xor_out);
    not_gate u4(a, not_out);

    initial begin
        $display("A B | AND OR XOR NOT(A)");
        
        a = 0; b = 0; #10;
        $display("%b %b |  %b   %b   %b    %b", a, b, and_out, or_out, xor_out, not_out);

        a = 0; b = 1; #10;
        $display("%b %b |  %b   %b   %b    %b", a, b, and_out, or_out, xor_out, not_out);

        a = 1; b = 0; #10;
        $display("%b %b |  %b   %b   %b    %b", a, b, and_out, or_out, xor_out, not_out);

        a = 1; b = 1; #10;
        $display("%b %b |  %b   %b   %b    %b", a, b, and_out, or_out, xor_out, not_out);

        $finish;
    end
endmodule
