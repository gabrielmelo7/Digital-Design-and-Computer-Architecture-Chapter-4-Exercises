module minority(input a, b, c, output y);
 assign y = ~a&~c | ~a&~b | ~b&~c;
 endmodule