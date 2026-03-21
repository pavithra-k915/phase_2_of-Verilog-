module carry_as_tb;

reg [3:0] A;
reg [3:0] B;
reg M;

wire [3:0] Sum;
wire Cout;

carry_as uut(
.A(A),
.B(B),
.M(M),
.Sum(Sum),
.Cout(Cout)
);

initial begin

A=4'b0101; B=4'b0011; M=0; // addition
#10;

A=4'b0101; B=4'b0011; M=1; // subtraction
#10;

A=4'b1110; B=4'b0010; M=0;
#10;

$finish;

end

initial begin
$dumpfile("adder_sub.vcd");
$dumpvars(0,carry_as_tb);
end

endmodule