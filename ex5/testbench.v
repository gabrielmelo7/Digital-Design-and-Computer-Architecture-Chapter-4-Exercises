`include "minority.v"
module testbench();
 reg a, b, c;
 wire y;

 minority dut (.a(a), .b(b), .c(c), .y(y));

 initial begin

    a = 0; b = 0; c = 0; #10;
    display;
    c = 1; #10
    display;
    c = 0; b = 1; #10;
    display;
    c = 1; #10; 
    display;
    a = 1; b = 0; c = 0; #10;
    display;
    c = 1; #10;
    display;
    c = 0; b = 1; #10;
    display;
    c = 1; #10;
    display;

 end

    task display;
        #1 $display("a = %0b, b = %0b, c = %0b equals y = %0b", a, b, c, y);
    endtask

endmodule

