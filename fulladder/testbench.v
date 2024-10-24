`include "4bitadder.v"
module testbench();
reg [3:0] a, b;
reg c_in;
wire [3:0]y; 
wire c_out;

four_bit_adder dut(.a(a), .b(b), .c_in(c_in), .y(y), .c_out(c_out));

initial begin

//1+1
a = 4'b0001; b = 4'b0001; c_in = 0; #10;
display;

//2+2
a = 4'b0010; b = 4'b0010; c_in = 0; #10;
display;

//4+5
a = 4'b0100; b = 4'b0101; c_in = 0; #10;
display;

//6+4
a = 4'b0110; b = 4'b0100; c_in = 0; #10;
display;

//8+3
a = 4'b1000; b = 4'b0011; c_in = 0; #10;
display;

//7+8
a = 4'b0111; b = 4'b1000; c_in = 0; #10;
display;

//15+1
a = 4'b1111; b = 4'b0001; c_in = 0; #10;
display;

end

task display;
#1 $display("%0b + %0b = %0b. cout = %0b", a, b, y, c_out);
endtask

endmodule