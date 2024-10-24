module fulladder(input a, b, c_in, output y, c_out);
    assign y = a^b^c_in;
    assign c_out = (a^b)&c_in | a&b;
endmodule