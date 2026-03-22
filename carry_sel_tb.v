module carry_sel_tb;

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

carry_sel uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

$dumpfile("carry_sel.vcd");
$dumpvars(0,carry_sel_tb);
A=4'b0101; B=4'b0011; Cin=0;
#10;

A=4'b0101; B=4'b0011; Cin=1;
#10;

A=4'b1111; B=4'b0001; Cin=0;
#10;

$finish;

end

endmodule