// Code your design here
module exercise3(input logic [3:0]a,
             output logic y);

 assign y = ^a;
   
 /*Could be:
  
  logic p, g; 

  assign p = (~a[0]&a[1] | a[0]&~a[1]);
  assign g = (~a[2]&a[3] | a[2]&~a[3]); 

  assign y = ~p&g | p&~g;

 Or even: 

  assign y = ~(~a[0]&a[1] | a[0]&~a[1])&(~a[2]&a[3] | a[2]&~a[3]) | (~a[0]&a[1] | a[0]&~a[1])&~(~a[2]&a[3] | a[2]&~a[3]); */

endmodule
