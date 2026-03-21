module carry_tb; 

reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]sum;
wire Cout;

carry_ripple uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .sum(sum),
    .Cout(Cout)
);

initial begin
 $dumpfile("carry_ripple.vcd");
 $dumpvars(0,carry_tb);
A = 4'b0001; B = 4'b0010; Cin = 0;
#10;

A = 4'b0101; B = 4'b0011; Cin = 0;
#10;

A = 4'b1111; B = 4'b0001; Cin = 0;
#10;

A=4'b1101; B=4'b0010; Cin =0;
#10

A=4'b1001; B=4'b0101; Cin=0;
#10

$finish;

end    
endmodule