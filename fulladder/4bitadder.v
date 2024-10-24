`include "fulladder.v"
module four_bit_adder(input [3:0]a, input[3:0]b, input c_in, output [3:0]y, output c_out);

  wire c1, c2, c3;

  fulladder fa0 (.a(a[0]), .b(b[0]), .c_in(c_in), .y(y[0]), .c_out(c1));
  fulladder fa1 (.a(a[1]), .b(b[1]), .c_in(c1), .y(y[1]), .c_out(c2));
  fulladder fa2 (.a(a[2]), .b(b[2]), .c_in(c2), .y(y[2]), .c_out(c3));
  fulladder fa3(.a(a[3]), .b(b[3]), .c_in(c3), .y(y[3]), .c_out(c_out));

endmodule